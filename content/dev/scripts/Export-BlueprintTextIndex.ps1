<#
.SYNOPSIS
  Export Blueprint metadata (functions/variables/graphs) into local text/NDJSON for Grep/Search.

.DESCRIPTION
  Grep/Explore/Search only see on-disk text. Blueprint .uasset contents are not searchable by text tools.
  This script queries a running Unreal Editor via SoftUEBridge (soft-ue-cli) and writes a searchable index:
    - blueprints.ndjson : one JSON object per line (easy to grep + machine-process)
    - blueprints.txt    : compact human/grep-friendly lines

  By default this exports names (fast). Optional -IncludeGraphNodes will also dump node titles/comments (slow).

.REQUIREMENTS
  - Interactive UnrealEditor.exe running with SoftUEBridge enabled.
  - Python and soft-ue-cli installed (py -3 -m soft_ue_cli ...).

.EXAMPLE
  # From a UE project root (folder containing .soft-ue-bridge/instance.json)
  powershell -NoProfile -ExecutionPolicy Bypass -File .\Export-BlueprintTextIndex.ps1

.EXAMPLE
  # Export only /Game/Blueprints, include graph nodes (slow)
  powershell -NoProfile -ExecutionPolicy Bypass -File .\Export-BlueprintTextIndex.ps1 -ContentPath /Game/Blueprints -IncludeGraphNodes
#>
[CmdletBinding()]
param(
    # Where to query from (must be within a UE project dir where soft-ue-cli can discover .soft-ue-bridge/instance.json)
    [string] $ProjectRoot = (Get-Location).Path,

    # Output directory (must NOT be ignored by Cursor if you want Search/Grep to see it)
    [string] $OutDir,

    # Asset classes to export (defaults include AnimBlueprint so ABP_* is searchable)
    [string[]] $AssetClasses = @('Blueprint', 'AnimBlueprint'),

    # Content Browser path prefixes (e.g. /Game, /MyPlugin). Preferred over -ContentPath.
    [string[]] $ContentPaths = @('/Game'),

    # Content Browser path prefix (legacy). If provided, overrides -ContentPaths.
    [string] $ContentPath,

    # Optional asset name pattern (wildcards * ?)
    [string] $NameQuery = '*',

    # Max assets returned by query-asset (raise for large projects)
    [int] $Limit = 20000,

    # Export graph callables list (recommended; still fast)
    [switch] $IncludeCallables,

    # Export graph nodes (slow; enables comment/title searching)
    [switch] $IncludeGraphNodes,

    # Output base name (default writes blueprints.txt / blueprints.ndjson)
    [string] $OutBaseName = 'blueprints',

    # SoftUEBridge server override (optional)
    [string] $ServerUrl,

    # HTTP timeout seconds for slow queries
    [int] $TimeoutSec = 120
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

        if ($exit -eq 0) {
            break
        }

        $isTransient = $raw -match 'HTTP\s+502|502 Bad Gateway|HTTP\s+503|503 Service Unavailable|timed out|timeout'
        if ($isTransient -and $i -lt $attempts) {
            $sleepSec = [Math]::Min(30, [Math]::Pow(2, ($i - 1)))
            Write-Host ("soft_ue_cli transient error (attempt {0}/{1}), retry in {2}s: {3}" -f $i, $attempts, $sleepSec, ($CliArgs -join ' '))
            Start-Sleep -Seconds $sleepSec
            continue
        }

        throw ("soft_ue_cli failed (exit={0}) args={1}`n{2}" -f $exit, ($CliArgs -join ' '), $raw)
    }

    # soft-ue-cli normally outputs JSON, but some environments may include non-printable characters
    # or extra lines. Extract the first {...} block defensively.
    $start = $raw.IndexOf('{')
    $end = $raw.LastIndexOf('}')
    if ($start -lt 0 -or $end -lt $start) {
        throw ("soft_ue_cli returned non-JSON for args={0}`n{1}" -f ($CliArgs -join ' '), $raw)
    }
    $jsonText = $raw.Substring($start, ($end - $start + 1))

    try {
        $obj = ($jsonText | ConvertFrom-Json)
    }
    catch {
        $msg = $_.Exception.Message
        throw ("soft_ue_cli JSON parse failed for args={0}`nError: {1}`nRaw:`n{2}`nExtracted:`n{3}" -f ($CliArgs -join ' '), $msg, $raw, $jsonText)
    }

    # Some commands return {"error": "..."} with exit code 0. Treat transient bridge errors as failures.
    if ($obj -and ($obj.PSObject.Properties.Name -contains 'error')) {
        $err = [string]$obj.error
        $isTransient = $err -match '502|Bad Gateway|503|timed out|timeout'
        if ($isTransient) {
            throw ("soft_ue_cli transient bridge error for args={0}`n{1}" -f ($CliArgs -join ' '), $err)
        }
    }

    return $obj
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

function Ensure-OutDir {
    if (-not $OutDir) {
        $script:OutDir = Join-Path $ProjectRoot '.soft-ue-index'
    }
    if (-not (Test-Path -LiteralPath $OutDir)) {
        New-Item -ItemType Directory -Path $OutDir | Out-Null
    }
}

Set-Location -LiteralPath $ProjectRoot
Ensure-OutDir

Write-Host "Export-BlueprintTextIndex: start"
Write-Host ("ProjectRoot: {0}" -f (Get-Location).Path)
Write-Host ("OutDir: {0}" -f $OutDir)
if ($ContentPath) { $ContentPaths = @($ContentPath) }
Write-Host ("AssetClasses: {0}" -f ($AssetClasses -join ', '))
Write-Host ("ContentPaths: {0}" -f ($ContentPaths -join ', '))
Write-Host ("NameQuery: {0}" -f $NameQuery)
Write-Host ("IncludeCallables: {0}" -f [bool]$IncludeCallables)
Write-Host ("IncludeGraphNodes: {0}" -f [bool]$IncludeGraphNodes)
Write-Host ("OutBaseName: {0}" -f $OutBaseName)

# Quick health check (gives a clear error when UE isn't running / bridge not reachable)
$null = Invoke-SoftUEJson -CliArgs @('status')

$assetPaths = @()
foreach ($root in $ContentPaths) {
    if (-not $root) { continue }
    foreach ($cls in $AssetClasses) {
        if (-not $cls) { continue }
        $assetResp = Invoke-SoftUEJson -CliArgs @('query-asset', '--class', $cls, '--path', $root, '--query', $NameQuery, '--limit', "$Limit")

        $assetItems = @()
        if ($assetResp -is [System.Collections.IEnumerable] -and -not ($assetResp -is [string])) {
            $assetItems = @($assetResp)
        }
        elseif ($assetResp.assets) {
            $assetItems = @($assetResp.assets)
        }
        elseif ($assetResp.results) {
            $assetItems = @($assetResp.results)
        }
        else {
            # best effort: treat the response itself as a single item if it has a path
            $assetItems = @($assetResp)
        }

        foreach ($it in $assetItems) {
            $p = Get-AssetPathFromItem -Item $it
            if ($p) { $assetPaths += $p }
        }
    }
}
$assetPaths = $assetPaths | Sort-Object -Unique

Write-Host ("Blueprint assets: {0}" -f $assetPaths.Count)

$ndjsonPath = Join-Path $OutDir ("{0}.ndjson" -f $OutBaseName)
$textPath = Join-Path $OutDir ("{0}.txt" -f $OutBaseName)
$metaPath = Join-Path $OutDir ("{0}.meta.json" -f $OutBaseName)

if (Test-Path -LiteralPath $ndjsonPath) { Remove-Item -LiteralPath $ndjsonPath -Force }
if (Test-Path -LiteralPath $textPath) { Remove-Item -LiteralPath $textPath -Force }

# Ensure files exist even if filters produce zero lines.
New-Item -ItemType File -Path $ndjsonPath -Force | Out-Null
New-Item -ItemType File -Path $textPath -Force | Out-Null

$meta = [ordered]@{
    generated_at = (Get-Date).ToString('o')
    project_root = (Get-Location).Path
    asset_classes = @($AssetClasses)
    content_paths = @($ContentPaths)
    name_query = $NameQuery
    limit = $Limit
    include_callables = [bool]$IncludeCallables
    include_graph_nodes = [bool]$IncludeGraphNodes
    count = $assetPaths.Count
}
$meta | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $metaPath -Encoding UTF8

function Append-NDJsonLine([object] $Obj) {
    ($Obj | ConvertTo-Json -Compress -Depth 50) | Add-Content -LiteralPath $ndjsonPath -Encoding UTF8
}

function Append-TextLine([string] $Line) {
    $Line | Add-Content -LiteralPath $textPath -Encoding UTF8
}

function Normalize-Items($Maybe) {
    if (-not $Maybe) { return @() }
    # soft-ue-cli often returns {"items":[...],"count":N}
    if ($Maybe.PSObject.Properties.Name -contains 'items') {
        return @($Maybe.items)
    }
    if ($Maybe -is [System.Collections.IEnumerable] -and -not ($Maybe -is [string])) {
        return @($Maybe)
    }
    return @($Maybe)
}

foreach ($bp in $assetPaths) {
    Write-Host ("BP: {0}" -f $bp)

    # soft-ue-cli may omit sections when multiple --include are provided, so query separately.
    # Bridge can transiently 502; retry per-asset to avoid failing the whole run.
    $perAssetAttempts = 3
    $bpVarsInfo = $null
    $bpFnsInfo = $null
    $callables = $null
    for ($a = 1; $a -le $perAssetAttempts; $a++) {
        try {
            $bpVarsInfo = Invoke-SoftUEJson -CliArgs @('query-blueprint', $bp, '--include', 'variables', '--no-detail')
            $bpFnsInfo = Invoke-SoftUEJson -CliArgs @('query-blueprint', $bp, '--include', 'functions', '--no-detail')
            if ($IncludeCallables -or $IncludeGraphNodes) {
                $callables = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $bp, '--list-callables')
            }
            break
        }
        catch {
            $msg = $_.Exception.Message
            $isTransient = $msg -match '502|Bad Gateway|503|timed out|timeout'
            if ($isTransient -and $a -lt $perAssetAttempts) {
                $sleepSec = 5 * $a
                Write-Host ("Transient error on {0} (attempt {1}/{2}), retry in {3}s" -f $bp, $a, $perAssetAttempts, $sleepSec)
                Start-Sleep -Seconds $sleepSec
                continue
            }
            throw
        }
    }

    $variables = Normalize-Items $bpVarsInfo.variables
    $functions = Normalize-Items $bpFnsInfo.functions

    foreach ($fn in $functions) {
        $name = $fn.name
        if (-not $name) { $name = $fn.function_name }
        if (-not $name) { continue }
        Append-NDJsonLine @{
            kind = 'blueprint.function'
            asset_path = $bp
            name = [string]$name
        }
        Append-TextLine ("{0} | function | {1}" -f $bp, $name)
    }

    foreach ($v in $variables) {
        $name = $v.name
        if (-not $name) { $name = $v.variable_name }
        if (-not $name) { continue }
        $type = $v.type
        if (-not $type) { $type = $v.pin_type }
        Append-NDJsonLine @{
            kind = 'blueprint.variable'
            asset_path = $bp
            name = [string]$name
            type = $type
        }
        if ($type) {
            Append-TextLine ("{0} | variable | {1} : {2}" -f $bp, $name, $type)
        }
        else {
            Append-TextLine ("{0} | variable | {1}" -f $bp, $name)
        }
    }

    if ($IncludeCallables -or $IncludeGraphNodes) {
        $callableEntries = @()
        foreach ($k in @('events','functions','macros')) {
            if ($callables.PSObject.Properties.Name -contains $k) {
                $callableEntries += @($callables.$k)
            }
        }

        foreach ($c in $callableEntries) {
            $cname = $c.name
            if (-not $cname) { continue }
            $ctype = $c.type
            $cgraph = $c.graph

            Append-NDJsonLine @{
                kind = 'blueprint.callable'
                asset_path = $bp
                name = [string]$cname
                callable_type = $ctype
                graph = $cgraph
            }
            Append-TextLine ("{0} | callable | {1} | {2} | {3}" -f $bp, $cname, $ctype, $cgraph)

            if ($IncludeGraphNodes) {
                # Slow path: pull nodes for each callable; enables searching comment boxes and node titles.
                $g = $null
                for ($na = 1; $na -le 3; $na++) {
                    try {
                        $g = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $bp, '--callable-name', $cname)
                        break
                    }
                    catch {
                        $msg = $_.Exception.Message
                        $isTransient = $msg -match '502|Bad Gateway|503|timed out|timeout'
                        if ($isTransient -and $na -lt 3) {
                            $sleepSec = 3 * $na
                            Write-Host ("Transient node query error on {0}::{1} (attempt {2}/3), retry in {3}s" -f $bp, $cname, $na, $sleepSec)
                            Start-Sleep -Seconds $sleepSec
                            continue
                        }
                        throw
                    }
                }
                $nodes = @()
                if ($g.nodes) { $nodes = @($g.nodes) }
                elseif ($g.graph -and $g.graph.nodes) { $nodes = @($g.graph.nodes) }

                foreach ($n in $nodes) {
                    $title = $n.title
                    if (-not $title) { $title = $n.node_title }
                    $cls = $n.node_class
                    if (-not $cls) { $cls = $n.class }
                    if (-not $title -and -not $cls) { continue }

                    Append-NDJsonLine @{
                        kind = 'blueprint.node'
                        asset_path = $bp
                        callable = [string]$cname
                        node_class = $cls
                        title = $title
                    }
                    if ($title) {
                        Append-TextLine ("{0} | node | {1} | {2}" -f $bp, $cname, $title)
                    }
                    elseif ($cls) {
                        Append-TextLine ("{0} | node | {1} | class={2}" -f $bp, $cname, $cls)
                    }
                }
            }
        }
    }
}

Write-Host "Wrote: $ndjsonPath"
Write-Host "Wrote: $textPath"
Write-Host "Wrote: $metaPath"
Write-Host "Export-BlueprintTextIndex: OK"
exit 0

