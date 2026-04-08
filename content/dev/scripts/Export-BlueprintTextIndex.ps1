<#
.SYNOPSIS
  Export Blueprint metadata (functions/variables/graphs) into local text/NDJSON for Grep/Search.

.DESCRIPTION
  Grep/Explore/Search only see on-disk text. Blueprint .uasset contents are not searchable by text tools.
  This script queries a running Unreal Editor via SoftUEBridge (soft-ue-cli) and writes a searchable index:
    - blueprints.ndjson : one JSON object per line (easy to grep + machine-process)
    - blueprints.txt    : compact human/grep-friendly lines

  By default this exports names (fast).

  For batch workflows, this script prefers the Blueprint Indexer toolchain:
    bp-index-refresh -> bp-index-l2-list -> bp-index-chunk-get
  Full graph query (query-blueprint-graph) is a fallback only, and must be observable via reason code.

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

    # Prefer Indexer L2 (bp-index-*) over query-blueprint-graph for batch extraction.
    [switch] $UseIndexer = $true,

    # Indexer settings (only used when -UseIndexer)
    [ValidateSet('nodes_only','pins','connections')]
    [string] $L2Projection = 'connections',

    [ValidateSet('off','minimal','standard','full')]
    [string] $L2SemanticLevel = 'minimal',

    # Output base name (default writes blueprints.txt / blueprints.ndjson)
    [string] $OutBaseName = 'blueprints',

    # SoftUEBridge server override (optional)
    [string] $ServerUrl,

    # HTTP timeout seconds for slow queries
    [int] $TimeoutSec = 120
)

$ErrorActionPreference = 'Stop'

function Resolve-SoftUEServerUrl {
    param(
        [Parameter(Mandatory = $true)] [string] $ProjectRoot,
        [string] $ExplicitServerUrl
    )
    if ($ExplicitServerUrl) { return $ExplicitServerUrl }
    if ($env:SOFT_UE_BRIDGE_URL) { return $env:SOFT_UE_BRIDGE_URL }
    $inst = Join-Path $ProjectRoot '.soft-ue-bridge\instance.json'
    if (Test-Path -LiteralPath $inst) {
        try {
            $j = Get-Content -LiteralPath $inst -Raw | ConvertFrom-Json
            $h = if ($j.host) { [string]$j.host } else { '127.0.0.1' }
            if ($j.port) { return ('http://{0}:{1}' -f $h, $j.port) }
        }
        catch { }
    }
    if ($env:SOFT_UE_BRIDGE_PORT) {
        return ('http://127.0.0.1:{0}' -f $env:SOFT_UE_BRIDGE_PORT)
    }
    return $null
}

function Invoke-SoftUEJson {
    param(
        [Parameter(Mandatory = $true)] [string[]] $CliArgs
    )

    $base = @('py', '-3', '-m', 'soft_ue_cli')
    if ($script:SoftUEBridgeResolvedUrl) { $base += @('--server', $script:SoftUEBridgeResolvedUrl) }
    if ($TimeoutSec -gt 0) { $base += @('--timeout', "$TimeoutSec") }

    $cmd = ($base + $CliArgs)

    $attempts = 10
    for ($i = 1; $i -le $attempts; $i++) {
        $prevLoc = (Get-Location).Path
        $raw = $null
        try {
            # UE projects may ship a minimal ./soft_ue_cli that shadows pip; cwd must not be ProjectRoot when using full CLI.
            if ($script:SoftUEBridgeResolvedUrl) {
                Set-Location -LiteralPath $env:SystemRoot
            }
            $raw = & $cmd[0] $cmd[1..($cmd.Length - 1)] 2>&1 | Out-String
        }
        finally {
            Set-Location -LiteralPath $prevLoc
        }
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

function Write-FallbackNotice {
    param(
        [Parameter(Mandatory = $true)] [string] $ReasonCode,
        [Parameter(Mandatory = $true)] [string] $AssetPath,
        [string] $Evidence
    )
    $ev = $Evidence
    if (-not $ev) { $ev = "" }
    $line = ("FALLBACK_QUERY_BLUEPRINT_GRAPH reason={0} asset={1} evidence={2}" -f $ReasonCode, $AssetPath, $ev)
    Write-Host $line
}

function Parse-ChunkIdParts([string] $ChunkId) {
    # Format example: /Game/A.BP_A|uber_graph|EventGraph
    $parts = $ChunkId -split '\|', 3
    if ($parts.Count -lt 3) { return $null }
    return [pscustomobject]@{ asset_path = $parts[0]; graph_kind = $parts[1]; graph_name = $parts[2] }
}

function Get-IndexerCallablesAndNodes {
    param(
        [Parameter(Mandatory = $true)] [string] $AssetPath,
        [switch] $NeedNodes
    )
    $list = Invoke-SoftUEJson -CliArgs @('bp-index-l2-list', '--scope-path', $AssetPath, '--limit', '50000')
    $ids = @()
    if ($list -and ($list.PSObject.Properties.Name -contains 'chunk_ids')) { $ids = @($list.chunk_ids) }
    if ($ids.Count -lt 1) { return $null }

    $callables = @()
    $nodesOut = @()

    foreach ($cid in $ids) {
        $p = Parse-ChunkIdParts -ChunkId ([string]$cid)
        if (-not $p) { continue }
        $callables += [pscustomobject]@{ name = $p.graph_name; type = $p.graph_kind; graph = $p.graph_name; chunk_id = [string]$cid }
    }

    if ($NeedNodes) {
        foreach ($c in $callables) {
            # chunk_id contains '|' which must be quoted for cmd.exe based launchers (e.g. py.cmd) to avoid piping.
            $quotedChunkId = ('"{0}"' -f $c.chunk_id)
            $cj = Invoke-SoftUEJson -CliArgs @('bp-index-chunk-get', '--chunk-id', $quotedChunkId, '--node-offset', '0', '--node-limit', '200')
            if (-not $cj -or -not ($cj.PSObject.Properties.Name -contains 'nodes')) { continue }
            foreach ($n in @($cj.nodes)) {
                $title = $null
                if ($n.PSObject.Properties.Name -contains 'title') { $title = $n.title }
                $cls = $null
                if ($n.PSObject.Properties.Name -contains 'class') { $cls = $n.class }
                if (-not $title -and -not $cls) { continue }
                $nodesOut += [pscustomobject]@{
                    callable = [string]$c.name
                    node_class = $cls
                    title = $title
                }
            }
        }
    }

    return [pscustomobject]@{ callables = $callables; nodes = $nodesOut }
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

$script:SoftUEBridgeResolvedUrl = Resolve-SoftUEServerUrl -ProjectRoot (Get-Location).Path -ExplicitServerUrl $ServerUrl
if ($script:SoftUEBridgeResolvedUrl) {
    Write-Host ("SoftUE bridge URL (for full soft_ue_cli): {0}" -f $script:SoftUEBridgeResolvedUrl)
}

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

if ($UseIndexer -and ($IncludeCallables -or $IncludeGraphNodes)) {
    Write-Host "Indexer warm-up: bp-index-refresh (L0L1L2 + L2 connections + semantic)"
    foreach ($root in $ContentPaths) {
        if (-not $root) { continue }
        $null = Invoke-SoftUEJson -CliArgs @(
            'bp-index-refresh',
            '--scope-path', $root,
            '--levels', 'L0L1L2',
            '--batch-size', '50',
            '--l2-projection', $L2Projection,
            '--l2-semantic-level', $L2SemanticLevel
        )
    }
}

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
        elseif ((Has-Prop -Obj $assetResp -Name 'assets') -and $assetResp.assets) {
            $assetItems = @($assetResp.assets)
        }
        elseif ((Has-Prop -Obj $assetResp -Name 'results') -and $assetResp.results) {
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
    $skipAsset = $false
    for ($a = 1; $a -le $perAssetAttempts; $a++) {
        try {
            $bpVarsInfo = Invoke-SoftUEJson -CliArgs @('query-blueprint', $bp, '--include', 'variables', '--no-detail')
            $bpFnsInfo = Invoke-SoftUEJson -CliArgs @('query-blueprint', $bp, '--include', 'functions', '--no-detail')
            if ($IncludeCallables -or $IncludeGraphNodes) {
                if ($UseIndexer) {
                    $idx = Get-IndexerCallablesAndNodes -AssetPath $bp -NeedNodes:$IncludeGraphNodes
                    if (-not $idx) { throw "Indexer returned no chunks" }
                    $callables = [pscustomobject]@{
                        events = @()
                        functions = @($idx.callables)
                        macros = @()
                        _indexer_nodes = @($idx.nodes)
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
                $sleepSec = 5 * $a
                Write-Host ("Transient error on {0} (attempt {1}/{2}), retry in {3}s" -f $bp, $a, $perAssetAttempts, $sleepSec)
                Start-Sleep -Seconds $sleepSec
                continue
            }
            Write-Warning ("Skipping asset (soft_ue_cli): {0}`n{1}" -f $bp, $msg)
            $skipAsset = $true
            break
        }
    }
    if ($skipAsset) { continue }

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
            $ctype = $null
            if (Has-Prop -Obj $c -Name 'type') { $ctype = $c.type }
            $cgraph = $null
            if (Has-Prop -Obj $c -Name 'graph') { $cgraph = $c.graph }

            Append-NDJsonLine @{
                kind = 'blueprint.callable'
                asset_path = $bp
                name = [string]$cname
                callable_type = $ctype
                graph = $cgraph
            }
            Append-TextLine ("{0} | callable | {1} | {2} | {3}" -f $bp, $cname, $ctype, $cgraph)

            if ($IncludeGraphNodes) {
                if ($UseIndexer -and ($callables.PSObject.Properties.Name -contains '_indexer_nodes')) {
                    foreach ($n in @($callables._indexer_nodes | Where-Object { $_.callable -eq $cname })) {
                        Append-NDJsonLine @{
                            kind = 'blueprint.node'
                            asset_path = $bp
                            callable = [string]$cname
                            node_class = $n.node_class
                            title = $n.title
                        }
                        if ($n.title) { Append-TextLine ("{0} | node | {1} | {2}" -f $bp, $cname, $n.title) }
                        elseif ($n.node_class) { Append-TextLine ("{0} | node | {1} | class={2}" -f $bp, $cname, $n.node_class) }
                    }
                } else {
                    Write-FallbackNotice -ReasonCode "need_field_not_in_l2_schema" -AssetPath $bp -Evidence "IncludeGraphNodes requires full graph nodes"
                    # Fallback: full graph node titles/comments
                    $g = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $bp, '--callable-name', $cname)
                    $nodes = @()
                    if ((Has-Prop -Obj $g -Name 'nodes') -and $g.nodes) { $nodes = @($g.nodes) }
                    elseif ((Has-Prop -Obj $g -Name 'graph') -and $g.graph -and (Has-Prop -Obj $g.graph -Name 'nodes') -and $g.graph.nodes) { $nodes = @($g.graph.nodes) }
                    foreach ($n in $nodes) {
                        $title = $null
                        if (Has-Prop -Obj $n -Name 'title') { $title = $n.title }
                        if (-not $title -and (Has-Prop -Obj $n -Name 'node_title')) { $title = $n.node_title }
                        $cls = $null
                        if (Has-Prop -Obj $n -Name 'node_class') { $cls = $n.node_class }
                        if (-not $cls -and (Has-Prop -Obj $n -Name 'class')) { $cls = $n.class }
                        if (-not $title -and -not $cls) { continue }
                        Append-NDJsonLine @{ kind='blueprint.node'; asset_path=$bp; callable=[string]$cname; node_class=$cls; title=$title }
                        if ($title) { Append-TextLine ("{0} | node | {1} | {2}" -f $bp, $cname, $title) }
                        elseif ($cls) { Append-TextLine ("{0} | node | {1} | class={2}" -f $bp, $cname, $cls) }
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

