<#
.SYNOPSIS
  Export a hierarchical, committed asset snapshot (Blueprint/AnimBlueprint + BehaviorTree + StateTree).

.DESCRIPTION
  Produces a 3-level snapshot under a project-committed directory:
    L1: top-level index (assets_index.* + snapshot.meta.json)
    L2: per-asset summaries (assets/<sanitized>/summary.json)
    L3: full graph/tree details (assets/<sanitized>/graphs/*.graph.json etc)

  Requires an interactive Unreal Editor with SoftUEBridge enabled.

.EXAMPLE
  powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\\content\\dev\\scripts\\Export-AssetSnapshot.ps1"
#>
[CmdletBinding()]
param(
    # UE project root (contains the .uproject)
    [string] $ProjectRoot = 'D:\Workspace\MT\Engine\ManteumTower',

    # Full path to the .uproject
    [string] $UProjectPath = 'D:\Workspace\MT\Engine\ManteumTower\ManteumTower.uproject',

    # Snapshot directory inside the project repo (intended to be committed)
    [string] $SnapshotDir,

    # Mark snapshot stale after N hours (for "ensure" workflows)
    [int] $FreshnessHours = 24,

    # Force rebuild even if snapshot looks fresh
    [switch] $Force,

    # Content Browser path prefixes (e.g. /Game, /MyPlugin)
    [string[]] $ContentPaths,

    # Optional asset name filter (wildcards * ?)
    [string] $NameQuery = '*',

    # Export level
    [ValidateSet('IndexOnly','Summary','Full')]
    [string] $Level = 'Full',

    # Include node titles/comments in the grep-friendly .txt (Full JSON always includes pins/links)
    [switch] $IncludeGraphNodeTitles = $true,

    # Exported classes (default: Blueprint + AnimBlueprint + BehaviorTree + StateTree)
    [string[]] $AssetClasses = @('Blueprint', 'AnimBlueprint', 'BehaviorTree', 'StateTree'),

    # Max assets returned per content root per class
    [int] $Limit = 200000,

    # SoftUEBridge server override (optional)
    [string] $ServerUrl,

    # soft-ue-cli timeout seconds
    [int] $TimeoutSec = 300
)

$ErrorActionPreference = 'Stop'

if (-not $SnapshotDir) {
    $SnapshotDir = Join-Path $ProjectRoot 'BlueprintSnapshot'
}

$snapshotVersion = 1

$indexNdjsonPath = Join-Path $SnapshotDir 'assets_index.ndjson'
$indexTextPath = Join-Path $SnapshotDir 'assets_index.txt'
$snapshotMetaPath = Join-Path $SnapshotDir 'snapshot.meta.json'
$assetsRoot = Join-Path $SnapshotDir 'assets'

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

function Read-EnabledPluginNames([string] $UProject) {
    $json = Get-Content -LiteralPath $UProject -Raw | ConvertFrom-Json
    $names = @()
    if ($json.Plugins) {
        foreach ($p in $json.Plugins) {
            if ($p.Enabled -eq $true -and $p.Name) {
                $names += [string]$p.Name
            }
        }
    }
    return ($names | Sort-Object -Unique)
}

function Get-ContentRoots([string] $UProject) {
    $roots = @('/Game')
    $plugins = Read-EnabledPluginNames -UProject $UProject
    foreach ($n in $plugins) {
        $roots += ("/{0}" -f $n)
    }
    return ($roots | Sort-Object -Unique)
}

function Is-SnapshotFresh {
    if ($Force) { return $false }
    if (-not (Test-Path -LiteralPath $snapshotMetaPath)) { return $false }
    $age = (Get-Date) - (Get-Item -LiteralPath $snapshotMetaPath).LastWriteTime
    return ($age.TotalHours -lt $FreshnessHours)
}

function Ensure-Dir([string] $Path) {
    if (-not (Test-Path -LiteralPath $Path)) {
        New-Item -ItemType Directory -Path $Path | Out-Null
    }
}

function New-TempPath([string] $FinalPath) {
    return ($FinalPath + '.partial')
}

function Write-JsonFileAtomic([string] $Path, [object] $Obj, [int] $Depth = 50) {
    $tmp = New-TempPath $Path
    ($Obj | ConvertTo-Json -Depth $Depth) | Set-Content -LiteralPath $tmp -Encoding UTF8
    Move-Item -LiteralPath $tmp -Destination $Path -Force
}

function Add-NDJsonLine([string] $Path, [object] $Obj) {
    ($Obj | ConvertTo-Json -Compress -Depth 50) | Add-Content -LiteralPath $Path -Encoding UTF8
}

function Add-TextLine([string] $Path, [string] $Line) {
    $Line | Add-Content -LiteralPath $Path -Encoding UTF8
}

function Sanitize-AssetPath([string] $AssetPath) {
    # /Game/Foo/Bar.Baz -> Game/Foo/Bar.Baz (then filesystem-safe)
    $p = $AssetPath.Trim()
    if ($p.StartsWith('/')) { $p = $p.Substring(1) }
    $p = $p -replace ':', '_'
    $p = $p -replace '[<>\"/\\\\|?*]', '_'
    return $p
}

function Get-AssetOutDir([string] $AssetPath) {
    $rel = Sanitize-AssetPath $AssetPath
    return (Join-Path $assetsRoot $rel)
}

Write-Host "Export-AssetSnapshot: start"
Write-Host "ProjectRoot: $ProjectRoot"
Write-Host "UProjectPath: $UProjectPath"
Write-Host "SnapshotDir: $SnapshotDir"
Write-Host "Level: $Level"
Write-Host "IncludeGraphNodeTitles: $([bool]$IncludeGraphNodeTitles)"
Write-Host "AssetClasses: $($AssetClasses -join ', ')"
Write-Host "FreshnessHours: $FreshnessHours"
Write-Host "Force: $([bool]$Force)"

if (-not (Test-Path -LiteralPath $ProjectRoot)) { throw "ProjectRoot not found: $ProjectRoot" }
if (-not (Test-Path -LiteralPath $UProjectPath)) { throw "uproject not found: $UProjectPath" }

if (Is-SnapshotFresh) {
    Write-Host "Snapshot is fresh. OK."
    Write-Host "SnapshotMeta: $snapshotMetaPath"
    exit 0
}

Ensure-Dir $SnapshotDir
Ensure-Dir $assetsRoot

# Normalize comma-separated class args (PowerShell sometimes passes "A,B" as a single string)
$AssetClasses = @(
    $AssetClasses |
        ForEach-Object { $_ -split ',' } |
        ForEach-Object { $_.Trim() } |
        Where-Object { $_ }
)

# Fresh index files per run (safe: this dir is committed snapshot output)
if (Test-Path -LiteralPath $indexNdjsonPath) { Remove-Item -LiteralPath $indexNdjsonPath -Force }
if (Test-Path -LiteralPath $indexTextPath) { Remove-Item -LiteralPath $indexTextPath -Force }
New-Item -ItemType File -Path $indexNdjsonPath -Force | Out-Null
New-Item -ItemType File -Path $indexTextPath -Force | Out-Null

if (-not $ContentPaths -or $ContentPaths.Count -eq 0) {
    $ContentPaths = Get-ContentRoots -UProject $UProjectPath
}
Write-Host ("ContentPaths: {0}" -f ($ContentPaths -join ', '))

$kitRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $PSCommandPath))
$startUe = Join-Path $kitRoot 'dev\scripts\Start-UnrealEditor.ps1'
if (-not (Test-Path -LiteralPath $startUe)) { throw "Start-UnrealEditor.ps1 not found: $startUe" }

# Ensure bridge is up (will start UE if needed)
& $startUe -UProjectPath $UProjectPath -WaitForBridge -WaitTimeoutSec 240
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

# Bridge health check (clear error if editor/bridge isn't reachable)
$null = Invoke-SoftUEJson -CliArgs @('status')

$meta = [ordered]@{
    snapshot_version = $snapshotVersion
    generated_at = (Get-Date).ToString('o')
    project_root = $ProjectRoot
    uproject_path = $UProjectPath
    content_paths = @($ContentPaths)
    asset_classes = @($AssetClasses)
    name_query = $NameQuery
    level = $Level
    include_graph_node_titles = [bool]$IncludeGraphNodeTitles
    limit = $Limit
}
Write-JsonFileAtomic -Path $snapshotMetaPath -Obj $meta -Depth 20

$assetMap = @{}
foreach ($root in $ContentPaths) {
    if (-not $root) { continue }
    foreach ($cls in $AssetClasses) {
        if (-not $cls) { continue }
        $assetResp = Invoke-SoftUEJson -CliArgs @('query-asset', '--class', $cls, '--path', $root, '--query', $NameQuery, '--limit', "$Limit")

        $items = @()
        if ($assetResp -is [System.Collections.IEnumerable] -and -not ($assetResp -is [string])) {
            $items = @($assetResp)
        }
        elseif ($assetResp.assets) {
            $items = @($assetResp.assets)
        }
        elseif ($assetResp.results) {
            $items = @($assetResp.results)
        }
        else {
            $items = @($assetResp)
        }

        foreach ($it in $items) {
            $p = Get-AssetPathFromItem -Item $it
            if (-not $p) { continue }
            if (-not $assetMap.ContainsKey($p)) {
                $assetMap[$p] = [ordered]@{
                    asset_path = $p
                    asset_classes = @()
                    content_roots = @()
                }
            }
            $assetMap[$p].asset_classes += @([string]$cls)
            $assetMap[$p].content_roots += @([string]$root)
        }
    }
}

$allAssets = @($assetMap.Values | ForEach-Object {
    [pscustomobject]@{
        asset_path = [string]$_.asset_path
        asset_classes = @($_.asset_classes | Sort-Object -Unique)
        content_roots = @($_.content_roots | Sort-Object -Unique)
    }
} | Sort-Object -Property asset_path)

Write-Host ("Assets: {0}" -f (@($allAssets).Count))

foreach ($a in $allAssets) {
    Add-NDJsonLine -Path $indexNdjsonPath -Obj @{
        kind = 'asset'
        asset_path = $a.asset_path
        asset_classes = @($a.asset_classes)
        content_roots = @($a.content_roots)
    }
    Add-TextLine -Path $indexTextPath -Line ("{0} | {1}" -f $a.asset_path, ($a.asset_classes -join ','))
}

if ($Level -eq 'IndexOnly') {
    Write-Host "Wrote: $snapshotMetaPath"
    Write-Host "Wrote: $indexNdjsonPath"
    Write-Host "Wrote: $indexTextPath"
    Write-Host "Export-AssetSnapshot: IndexOnly OK"
    exit 0
}

$bpClasses = @('Blueprint','AnimBlueprint')
$bpAssets = @($allAssets | Where-Object {
    ($_.asset_classes | Where-Object { $bpClasses -contains $_ }).Count -gt 0
})

foreach ($bpRow in $bpAssets) {
    $bp = [string]$bpRow.asset_path
    $outDir = Get-AssetOutDir -AssetPath $bp
    Ensure-Dir $outDir
    $graphsDir = Join-Path $outDir 'graphs'
    Ensure-Dir $graphsDir

    # Summary: variables + functions + callables + parent_class/anim info best-effort
    $varsInfo = Invoke-SoftUEJson -CliArgs @('query-blueprint', $bp, '--include', 'variables', '--no-detail')
    $fnsInfo = Invoke-SoftUEJson -CliArgs @('query-blueprint', $bp, '--include', 'functions', '--no-detail')
    $callables = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $bp, '--list-callables')

    $summary = [ordered]@{
        asset_path = $bp
        asset_classes = @($bpRow.asset_classes)
        exported_at = (Get-Date).ToString('o')
        blueprint = $bp
        parent_class = $null
        is_anim_blueprint = $null
        target_skeleton = $null
        variables = $varsInfo.variables
        functions = $fnsInfo.functions
        callables = $callables
    }

    # Populate parent_class/is_anim_blueprint/target_skeleton from any graph query (cheap)
    try {
        $g0 = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $bp, '--callable-name', 'AnimGraph')
        if ($g0.parent_class) { $summary.parent_class = $g0.parent_class }
        if ($g0.PSObject.Properties.Name -contains 'is_anim_blueprint') { $summary.is_anim_blueprint = [bool]$g0.is_anim_blueprint }
        if ($g0.target_skeleton) { $summary.target_skeleton = $g0.target_skeleton }
    }
    catch {
        # Non-AnimBlueprint or no AnimGraph; ignore.
    }

    Write-JsonFileAtomic -Path (Join-Path $outDir 'summary.json') -Obj $summary -Depth 50

    if ($Level -eq 'Summary') { continue }

    # Full graph details for each callable
    $callableEntries = @()
    foreach ($k in @('events','functions','macros')) {
        if ($callables.PSObject.Properties.Name -contains $k) {
            $callableEntries += @($callables.$k)
        }
    }

    foreach ($c in $callableEntries) {
        $cname = [string]$c.name
        if (-not $cname) { continue }
        Write-Host ("Graph: {0}::{1}" -f $bp, $cname)

        $g = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $bp, '--callable-name', $cname)
        $fileName = ($cname -replace '[<>:\"/\\\\|?*]', '_') + '.graph.json'
        Write-JsonFileAtomic -Path (Join-Path $graphsDir $fileName) -Obj $g -Depth 80

        if ($IncludeGraphNodeTitles) {
            # Grep-friendly node titles dump (optional; separate file per graph to keep diffs local)
            $titlesPath = Join-Path $graphsDir (($cname -replace '[<>:\"/\\\\|?*]', '_') + '.nodes.txt')
            if (Test-Path -LiteralPath $titlesPath) { Remove-Item -LiteralPath $titlesPath -Force }
            $nodes = @()
            if ($g.graph -and $g.graph.nodes) { $nodes = @($g.graph.nodes) }
            foreach ($n in $nodes) {
                $t = $n.title
                if (-not $t) { continue }
                Add-TextLine -Path $titlesPath -Line $t
            }
        }
    }
}

if ($AssetClasses -contains 'BehaviorTree' -and $Level -ne 'IndexOnly') {
    $btAssets = @($allAssets | Where-Object { $_.asset_classes -contains 'BehaviorTree' })
    $btScript = Join-Path $kitRoot 'dev\scripts\ue-python\export_behavior_tree.py'
    if (-not (Test-Path -LiteralPath $btScript)) { throw "BehaviorTree exporter not found: $btScript" }

    foreach ($btRow in $btAssets) {
        $bt = [string]$btRow.asset_path
        Write-Host ("BT: {0}" -f $bt)

        $outDir = Get-AssetOutDir -AssetPath $bt
        Ensure-Dir $outDir

        # Preview image (useful when full graph isn't extractable)
        try {
            $prev = Invoke-SoftUEJson -CliArgs @('get-asset-preview', $bt)
            if ($prev -and $prev.file_path) {
                $src = [string]$prev.file_path
                if ($src -match '^[A-Za-z]:/') { $src = $src -replace '/', '\' }
                $dst = Join-Path $outDir 'preview.png'
                if (Test-Path -LiteralPath $src) {
                    Copy-Item -LiteralPath $src -Destination $dst -Force
                }
            }
        }
        catch {
            # ignore preview failures
        }

        $wrapper = @"
import builtins
ASSET_PATH = r'''$bt'''
SCRIPT_PATH = r'''$btScript'''
code = open(SCRIPT_PATH, 'r', encoding='utf-8').read()
g = {'__name__': '__main__', 'ASSET_PATH': ASSET_PATH}
exec(compile(code, SCRIPT_PATH, 'exec'), g, g)
"@
        $resp = Invoke-SoftUEJson -CliArgs @('run-python-script', '--script', $wrapper)
        if (-not $resp -or -not ($resp.PSObject.Properties.Name -contains 'success')) {
            Write-JsonFileAtomic -Path (Join-Path $outDir 'behavior_tree.error.json') -Obj $resp -Depth 50
            throw "BehaviorTree export returned unexpected response: $bt"
        }
        if (-not [bool]$resp.success) {
            Write-JsonFileAtomic -Path (Join-Path $outDir 'behavior_tree.error.json') -Obj $resp -Depth 50
            throw ("BehaviorTree export failed: {0}`n{1}" -f $bt, [string]$resp.error)
        }

        $payload = $null
        if ($resp -and $resp.output) {
            $raw = [string]$resp.output
            $start = $raw.IndexOf('{')
            $end = $raw.LastIndexOf('}')
            if ($start -ge 0 -and $end -ge $start) {
                $jsonText = $raw.Substring($start, ($end - $start + 1))
                $payload = ($jsonText | ConvertFrom-Json)
            }
        }
        if (-not $payload) {
            Write-JsonFileAtomic -Path (Join-Path $outDir 'behavior_tree.error.json') -Obj $resp -Depth 20
            throw "BehaviorTree export produced no JSON payload: $bt"
        }

        # L2 summary (same payload for now; can split later)
        Write-JsonFileAtomic -Path (Join-Path $outDir 'summary.json') -Obj $payload -Depth 80

        if ($Level -eq 'Full') {
            Write-JsonFileAtomic -Path (Join-Path $outDir 'behavior_tree.full.json') -Obj $payload -Depth 80
        }
    }
}

if ($AssetClasses -contains 'StateTree' -and $Level -ne 'IndexOnly') {
    $stAssets = @($allAssets | Where-Object { $_.asset_classes -contains 'StateTree' })
    foreach ($stRow in $stAssets) {
        $st = [string]$stRow.asset_path
        Write-Host ("StateTree: {0}" -f $st)

        $outDir = Get-AssetOutDir -AssetPath $st
        Ensure-Dir $outDir

        $summary = Invoke-SoftUEJson -CliArgs @('query-statetree', $st, '--no-detail')
        Write-JsonFileAtomic -Path (Join-Path $outDir 'summary.json') -Obj $summary -Depth 80

        if ($Level -eq 'Full') {
            $full = Invoke-SoftUEJson -CliArgs @('query-statetree', $st)
            Write-JsonFileAtomic -Path (Join-Path $outDir 'state_tree.full.json') -Obj $full -Depth 120
        }
    }
}

Write-Host "Wrote: $snapshotMetaPath"
Write-Host "Wrote: $indexNdjsonPath"
Write-Host "Wrote: $indexTextPath"
Write-Host "AssetsRoot: $assetsRoot"
Write-Host "Export-AssetSnapshot: Blueprint/AnimBlueprint export OK (BT/StateTree pending)"
exit 0

