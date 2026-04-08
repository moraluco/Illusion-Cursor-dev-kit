<#
.SYNOPSIS
  Export Blueprint/AnimBlueprint text index using a per-asset file layout under .soft-ue-index/assets/.

.DESCRIPTION
  This is the incremental-friendly indexer:
  - Writes per-asset summary files so only changed assets need to be regenerated.
  - Also maintains a global rollup (.soft-ue-index/blueprints.rollup.{txt,ndjson}) for easy Ctrl+Shift+F.

  Fast path exports:
    - variables (query-blueprint --include variables --no-detail)
    - functions (query-blueprint --include functions --no-detail)
    - callables list (prefer bp-index-l2-list; fallback to query-blueprint-graph --list-callables) when -IncludeCallables is set

  Node titles/comments are NOT exported here; use the on-demand deep indexer for that.
#>
[CmdletBinding()]
param(
    # Where to query from (must be within a UE project dir where soft-ue-cli can discover .soft-ue-bridge/instance.json)
    [string] $ProjectRoot = (Get-Location).Path,

    # Output directory root (default: <ProjectRoot>/.soft-ue-index)
    [string] $OutDir,

    # Asset classes to export (defaults include AnimBlueprint so ABP_* is searchable)
    [string[]] $AssetClasses = @('Blueprint', 'AnimBlueprint'),

    # Content Browser path prefixes (e.g. /Game, /MyPlugin)
    [string[]] $ContentPaths = @('/Game'),

    # Optional asset name pattern (wildcards * ?)
    [string] $NameQuery = '*',

    # Max assets returned by query-asset
    [int] $Limit = 20000,

    # Export callable list (recommended; still fast)
    [switch] $IncludeCallables = $true,

    # Prefer Indexer L2 (bp-index-*) over query-blueprint-graph for batch extraction.
    [switch] $UseIndexer = $true,

    # SoftUEBridge server override (optional)
    [string] $ServerUrl,

    # HTTP timeout seconds for slow queries
    [int] $TimeoutSec = 120,

    # If set, only export these asset paths (skips query-asset). Useful for incremental updates.
    [string[]] $OnlyAssets
)

$ErrorActionPreference = 'Stop'

function Invoke-SoftUEJson {
    param(
        [Parameter(Mandatory = $true)] [string[]] $CliArgs
    )

    $base = @('py', '-3', '-m', 'soft_ue_cli')
    if ($ServerUrl) { $base += @('--server', $ServerUrl) }
    if ($TimeoutSec -gt 0) { $base += @('--timeout', "$TimeoutSec") }
    $cmd = ($base + $CliArgs)

    $attempts = 10
    for ($i = 1; $i -le $attempts; $i++) {
        $raw = & $cmd[0] $cmd[1..($cmd.Length - 1)] 2>&1 | Out-String
        $exit = $LASTEXITCODE
        if ($exit -eq 0) { break }

        $isTransient = $raw -match 'HTTP\s+502|502 Bad Gateway|HTTP\s+503|503 Service Unavailable|timed out|timeout'
        if ($isTransient -and $i -lt $attempts) {
            $sleepSec = [Math]::Min(30, [Math]::Pow(2, ($i - 1)))
            Write-Host ("soft_ue_cli transient error (attempt {0}/{1}), retry in {2}s: {3}" -f $i, $attempts, $sleepSec, ($CliArgs -join ' '))
            Start-Sleep -Seconds $sleepSec
            continue
        }
        throw ("soft_ue_cli failed (exit={0}) args={1}`n{2}" -f $exit, ($CliArgs -join ' '), $raw)
    }

    $start = $raw.IndexOf('{')
    $end = $raw.LastIndexOf('}')
    if ($start -lt 0 -or $end -lt $start) {
        throw ("soft_ue_cli returned non-JSON for args={0}`n{1}" -f ($CliArgs -join ' '), $raw)
    }
    $jsonText = $raw.Substring($start, ($end - $start + 1))
    $obj = ($jsonText | ConvertFrom-Json)

    if ($obj -and ($obj.PSObject.Properties.Name -contains 'error')) {
        $err = [string]$obj.error
        $isTransient = $err -match '502|Bad Gateway|503|timed out|timeout'
        if ($isTransient) {
            throw ("soft_ue_cli transient bridge error for args={0}`n{1}" -f ($CliArgs -join ' '), $err)
        }
    }
    return $obj
}

function Has-Prop {
    param(
        [Parameter(Mandatory = $true)] $Obj,
        [Parameter(Mandatory = $true)] [string] $Name
    )
    if (-not $Obj) { return $false }
    try {
        return ($Obj.PSObject.Properties.Name -contains $Name)
    }
    catch {
        return $false
    }
}

function Get-AssetPathFromItem {
    param([Parameter(Mandatory = $true)] $Item)
    foreach ($k in @('asset_path', 'object_path', 'path', 'AssetPath', 'ObjectPath')) {
        if ($Item.PSObject.Properties.Name -contains $k) {
            $v = $Item.$k
            if ($v) { return [string]$v }
        }
    }
    return $null
}

function Write-FallbackNotice {
    param(
        [Parameter(Mandatory = $true)] [string] $ReasonCode,
        [Parameter(Mandatory = $true)] [string] $AssetPath,
        [string] $Evidence
    )
    $ev = $Evidence
    if (-not $ev) { $ev = "" }
    Write-Host ("FALLBACK_QUERY_BLUEPRINT_GRAPH reason={0} asset={1} evidence={2}" -f $ReasonCode, $AssetPath, $ev)
}

function Parse-ChunkIdParts([string] $ChunkId) {
    $parts = $ChunkId -split '\|', 3
    if ($parts.Count -lt 3) { return $null }
    return [pscustomobject]@{ asset_path = $parts[0]; graph_kind = $parts[1]; graph_name = $parts[2] }
}

function Get-IndexerCallables {
    param([Parameter(Mandatory = $true)] [string] $AssetPath)
    $list = Invoke-SoftUEJson -CliArgs @('bp-index-l2-list', '--scope-path', $AssetPath, '--limit', '50000')
    $ids = @()
    if ($list -and ($list.PSObject.Properties.Name -contains 'chunk_ids')) { $ids = @($list.chunk_ids) }
    if ($ids.Count -lt 1) { return @() }
    $out = @()
    foreach ($cid in $ids) {
        $p = Parse-ChunkIdParts -ChunkId ([string]$cid)
        if (-not $p) { continue }
        $out += [pscustomobject]@{ name = $p.graph_name; type = $p.graph_kind; graph = $p.graph_name }
    }
    return $out
}

function Ensure-Dir([string] $Path) {
    if (-not (Test-Path -LiteralPath $Path)) {
        New-Item -ItemType Directory -Path $Path | Out-Null
    }
}

function Sanitize-AssetPath([string] $AssetPath) {
    $p = $AssetPath.Trim()
    if ($p.StartsWith('/')) { $p = $p.Substring(1) }
    $p = $p -replace ':', '_'
    $p = $p -replace '[<>\"/\\\\|?*]', '_'
    return $p
}

function Get-AssetOutDir([string] $AssetsRoot, [string] $AssetPath) {
    $rel = Sanitize-AssetPath $AssetPath
    return (Join-Path $AssetsRoot $rel)
}

function Write-TextFileAtomic([string] $Path, [string[]] $Lines) {
    $tmp = $Path + '.partial'
    $Lines -join "`n" | Set-Content -LiteralPath $tmp -Encoding UTF8
    Move-Item -LiteralPath $tmp -Destination $Path -Force
}

function Write-NDJsonFileAtomic([string] $Path, [object[]] $Objs) {
    $tmp = $Path + '.partial'
    $lines = @()
    foreach ($o in $Objs) {
        $lines += ($o | ConvertTo-Json -Compress -Depth 50)
    }
    $lines -join "`n" | Set-Content -LiteralPath $tmp -Encoding UTF8
    Move-Item -LiteralPath $tmp -Destination $Path -Force
}

Set-Location -LiteralPath $ProjectRoot
if (-not $OutDir) { $OutDir = Join-Path $ProjectRoot '.soft-ue-index' }

$assetsRoot = Join-Path $OutDir 'assets'
Ensure-Dir $OutDir
Ensure-Dir $assetsRoot

Write-Host "Export-BlueprintTextIndex-PerAsset: start"
Write-Host ("ProjectRoot: {0}" -f (Get-Location).Path)
Write-Host ("OutDir: {0}" -f $OutDir)
Write-Host ("AssetsRoot: {0}" -f $assetsRoot)
Write-Host ("AssetClasses: {0}" -f ($AssetClasses -join ', '))
Write-Host ("ContentPaths: {0}" -f ($ContentPaths -join ', '))
Write-Host ("NameQuery: {0}" -f $NameQuery)
Write-Host ("IncludeCallables: {0}" -f [bool]$IncludeCallables)

# Health check
$null = Invoke-SoftUEJson -CliArgs @('status')

$assetPaths = @()
if ($OnlyAssets -and $OnlyAssets.Count -gt 0) {
    $assetPaths = @($OnlyAssets | Where-Object { $_ } | Sort-Object -Unique)
}
else {
    foreach ($root in $ContentPaths) {
        if (-not $root) { continue }
        foreach ($cls in $AssetClasses) {
            if (-not $cls) { continue }
            $assetResp = Invoke-SoftUEJson -CliArgs @('query-asset', '--class', $cls, '--path', $root, '--query', $NameQuery, '--limit', "$Limit")

            $assetItems = @()
            if ($assetResp -is [System.Collections.IEnumerable] -and -not ($assetResp -is [string])) {
                $assetItems = @($assetResp)
            }
            elseif ((Has-Prop -Obj $assetResp -Name 'assets') -and $assetResp.assets) {
                $assetItems = @($assetResp.assets)
            }
            elseif ((Has-Prop -Obj $assetResp -Name 'results') -and $assetResp.results) {
                $assetItems = @($assetResp.results)
            }
            else {
                $assetItems = @($assetResp)
            }

            foreach ($it in $assetItems) {
                $p = Get-AssetPathFromItem -Item $it
                if ($p) { $assetPaths += $p }
            }
        }
    }
    $assetPaths = $assetPaths | Sort-Object -Unique
}

Write-Host ("Blueprint assets: {0}" -f $assetPaths.Count)

$rollupNdjson = @()
$rollupText = @()

foreach ($bp in $assetPaths) {
    Write-Host ("BP: {0}" -f $bp)

    $perAssetAttempts = 3
    $bpVarsInfo = $null
    $bpFnsInfo = $null
    $callables = $null
    for ($a = 1; $a -le $perAssetAttempts; $a++) {
        try {
            $bpVarsInfo = Invoke-SoftUEJson -CliArgs @('query-blueprint', $bp, '--include', 'variables', '--no-detail')
            $bpFnsInfo = Invoke-SoftUEJson -CliArgs @('query-blueprint', $bp, '--include', 'functions', '--no-detail')
            if ($IncludeCallables) {
                if ($UseIndexer) {
                    $idxCallables = Get-IndexerCallables -AssetPath $bp
                    $callables = [pscustomobject]@{ events=@(); functions=@($idxCallables); macros=@() }
                    if (@($idxCallables).Count -lt 1) {
                        Write-FallbackNotice -ReasonCode "index_stale_or_missing" -AssetPath $bp -Evidence "bp-index-l2-list returned no chunk_ids"
                        $callables = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $bp, '--list-callables')
                    }
                } else {
                    Write-FallbackNotice -ReasonCode "need_field_not_in_l2_schema" -AssetPath $bp -Evidence "UseIndexer=false"
                    $callables = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $bp, '--list-callables')
                }
            }
            break
        }
        catch {
            $msg = $_.Exception.Message
            $isTransient = $msg -match '502|Bad Gateway|503|timed out|timeout'
            if ($isTransient -and $a -lt $perAssetAttempts) {
                $sleepSec = 3 * $a
                Write-Host ("Transient error on {0} (attempt {1}/{2}), retry in {3}s" -f $bp, $a, $perAssetAttempts, $sleepSec)
                Start-Sleep -Seconds $sleepSec
                continue
            }
            throw
        }
    }

    $variables = @()
    if ($bpVarsInfo -and $bpVarsInfo.variables) {
        if ($bpVarsInfo.variables.PSObject.Properties.Name -contains 'items') { $variables = @($bpVarsInfo.variables.items) }
        else { $variables = @($bpVarsInfo.variables) }
    }

    $functions = @()
    if ($bpFnsInfo) {
        $hasFns = $false
        try { $hasFns = ($bpFnsInfo.PSObject.Properties.Name -contains 'functions') } catch { $hasFns = $false }
        if ($hasFns -and $bpFnsInfo.functions) {
            if ($bpFnsInfo.functions.PSObject.Properties.Name -contains 'items') { $functions = @($bpFnsInfo.functions.items) }
            else { $functions = @($bpFnsInfo.functions) }
        }
    }

    $perNdjson = @()
    $perText = @()

    foreach ($fn in $functions) {
        $name = $fn.name
        if (-not $name) { $name = $fn.function_name }
        if (-not $name) { continue }
        $obj = @{
            kind = 'blueprint.function'
            asset_path = $bp
            name = [string]$name
        }
        $perNdjson += $obj
        $perText += ("{0} | function | {1}" -f $bp, $name)
        $rollupNdjson += $obj
        $rollupText += ("{0} | function | {1}" -f $bp, $name)
    }

    foreach ($v in $variables) {
        $name = $v.name
        if (-not $name) { $name = $v.variable_name }
        if (-not $name) { continue }
        $type = $v.type
        if (-not $type) { $type = $v.pin_type }
        $obj = @{
            kind = 'blueprint.variable'
            asset_path = $bp
            name = [string]$name
            type = $type
        }
        $perNdjson += $obj
        if ($type) { $perText += ("{0} | variable | {1} : {2}" -f $bp, $name, $type) }
        else { $perText += ("{0} | variable | {1}" -f $bp, $name) }
        $rollupNdjson += $obj
        if ($type) { $rollupText += ("{0} | variable | {1} : {2}" -f $bp, $name, $type) }
        else { $rollupText += ("{0} | variable | {1}" -f $bp, $name) }
    }

    if ($IncludeCallables -and $callables) {
        $callableEntries = @()
        foreach ($k in @('events','functions','macros')) {
            if ($callables.PSObject.Properties.Name -contains $k) {
                $callableEntries += @($callables.$k)
            }
        }
        foreach ($c in $callableEntries) {
            $cname = $c.name
            if (-not $cname) { continue }
            $ctype = $null
            if ($c.PSObject.Properties.Name -contains 'type') { $ctype = $c.type }
            $cgraph = $null
            if ($c.PSObject.Properties.Name -contains 'graph') { $cgraph = $c.graph }
            $obj = @{
                kind = 'blueprint.callable'
                asset_path = $bp
                name = [string]$cname
                callable_type = $ctype
                graph = $cgraph
            }
            $perNdjson += $obj
            $perText += ("{0} | callable | {1} | {2} | {3}" -f $bp, $cname, $ctype, $cgraph)
            $rollupNdjson += $obj
            $rollupText += ("{0} | callable | {1} | {2} | {3}" -f $bp, $cname, $ctype, $cgraph)
        }
    }

    $assetOutDir = Get-AssetOutDir -AssetsRoot $assetsRoot -AssetPath $bp
    Ensure-Dir $assetOutDir

    $summaryNdjsonPath = Join-Path $assetOutDir 'summary.ndjson'
    $summaryTextPath = Join-Path $assetOutDir 'summary.txt'
    Write-NDJsonFileAtomic -Path $summaryNdjsonPath -Objs $perNdjson
    Write-TextFileAtomic -Path $summaryTextPath -Lines $perText
}

$rollupNdjsonPath = Join-Path $OutDir 'blueprints.rollup.ndjson'
$rollupTextPath = Join-Path $OutDir 'blueprints.rollup.txt'
Write-NDJsonFileAtomic -Path $rollupNdjsonPath -Objs $rollupNdjson
Write-TextFileAtomic -Path $rollupTextPath -Lines $rollupText

Write-Host "Wrote: $rollupNdjsonPath"
Write-Host "Wrote: $rollupTextPath"
Write-Host "Export-BlueprintTextIndex-PerAsset: OK"
exit 0

