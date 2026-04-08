<#
.SYNOPSIS
  On-demand deep index for a single Blueprint/AnimBlueprint: export full graph JSON per callable.

.DESCRIPTION
  This is intentionally NOT part of the fast/default snapshot, because it is expensive.
  Use it when you need offline evidence of pins/links/defaults or want to grep node titles.

  Output layout:
    <ProjectRoot>/.soft-ue-index/assets/<sanitized_asset_path>/graphs/<callable>.graph.json
    <ProjectRoot>/.soft-ue-index/assets/<sanitized_asset_path>/graphs/<callable>.nodes.txt   (optional)
#>
[CmdletBinding()]
param(
    [string] $ProjectRoot = 'D:\Workspace\MT\Engine\ManteumTower',
    [string] $OutDir,

    # Blueprint asset path (soft object path). Example: /Game/Blueprints/BP_Character.BP_Character
    [Parameter(Mandatory = $true)]
    [string] $AssetPath,

    # If set, export only this callable name; otherwise export all callables.
    [string] $CallableName,

    # Also dump node titles to .nodes.txt for grep
    [switch] $IncludeNodeTitles,

    # Prefer Indexer L2 (bp-index-*) export over full graph query.
    # When enabled, writes *.l2chunk.json (chunk JSON) instead of *.graph.json (full graph JSON).
    [switch] $UseIndexer = $true,

    [ValidateSet('nodes_only','pins','connections')]
    [string] $L2Projection = 'connections',

    [ValidateSet('off','minimal','standard','full')]
    [string] $L2SemanticLevel = 'minimal',

    [string] $ServerUrl,
    [int] $TimeoutSec = 300
)

$ErrorActionPreference = 'Stop'

function Invoke-SoftUEJson {
    param([Parameter(Mandatory = $true)] [string[]] $CliArgs)

    $base = @('py', '-3', '-m', 'soft_ue_cli')
    if ($ServerUrl) { $base += @('--server', $ServerUrl) }
    if ($TimeoutSec -gt 0) { $base += @('--timeout', "$TimeoutSec") }
    $cmd = ($base + $CliArgs)

    $raw = & $cmd[0] $cmd[1..($cmd.Length - 1)] 2>&1 | Out-String
    if ($LASTEXITCODE -ne 0) {
        throw ("soft_ue_cli failed args={0}`n{1}" -f ($CliArgs -join ' '), $raw)
    }

    $start = $raw.IndexOf('{')
    $end = $raw.LastIndexOf('}')
    if ($start -lt 0 -or $end -lt $start) {
        throw ("soft_ue_cli returned non-JSON for args={0}`n{1}" -f ($CliArgs -join ' '), $raw)
    }
    ($raw.Substring($start, ($end - $start + 1)) | ConvertFrom-Json)
}

function Ensure-Dir([string] $Path) {
    if (-not (Test-Path -LiteralPath $Path)) {
        New-Item -ItemType Directory -Path $Path | Out-Null
    }
}

function Sanitize-AssetPath([string] $AssetPathValue) {
    $p = $AssetPathValue.Trim()
    if ($p.StartsWith('/')) { $p = $p.Substring(1) }
    $p = $p -replace ':', '_'
    $p = $p -replace '[<>\"/\\\\|?*]', '_'
    return $p
}

function Write-JsonFileAtomic([string] $Path, [object] $Obj, [int] $Depth = 120) {
    $tmp = $Path + '.partial'
    # Windows PowerShell ConvertTo-Json supports depth up to 100.
    $safeDepth = [Math]::Min(100, [Math]::Max(1, $Depth))
    ($Obj | ConvertTo-Json -Depth $safeDepth) | Set-Content -LiteralPath $tmp -Encoding UTF8
    Move-Item -LiteralPath $tmp -Destination $Path -Force
}

if (-not (Test-Path -LiteralPath $ProjectRoot)) { throw "ProjectRoot not found: $ProjectRoot" }
Set-Location -LiteralPath $ProjectRoot
if (-not $OutDir) { $OutDir = Join-Path $ProjectRoot '.soft-ue-index' }

$assetsRoot = Join-Path $OutDir 'assets'
Ensure-Dir $OutDir
Ensure-Dir $assetsRoot

# Health check
$null = Invoke-SoftUEJson -CliArgs @('status')

$assetOutDir = Join-Path $assetsRoot (Sanitize-AssetPath $AssetPath)
$graphsDir = Join-Path $assetOutDir 'graphs'
Ensure-Dir $assetOutDir
Ensure-Dir $graphsDir

Write-Host "Export-BlueprintDeepIndex: start"
Write-Host "AssetPath: $AssetPath"
Write-Host "GraphsDir: $graphsDir"
Write-Host "IncludeNodeTitles: $([bool]$IncludeNodeTitles)"
Write-Host "UseIndexer: $([bool]$UseIndexer)"

function Parse-ChunkIdParts([string] $ChunkId) {
    $parts = $ChunkId -split '\|', 3
    if ($parts.Count -lt 3) { return $null }
    return [pscustomobject]@{ asset_path = $parts[0]; graph_kind = $parts[1]; graph_name = $parts[2] }
}

$callables = @()
if ($UseIndexer) {
    $null = Invoke-SoftUEJson -CliArgs @(
        'bp-index-refresh',
        '--scope-path', $AssetPath,
        '--levels', 'L0L1L2',
        '--batch-size', '1',
        '--l2-projection', $L2Projection,
        '--l2-semantic-level', $L2SemanticLevel
    )
    $list = Invoke-SoftUEJson -CliArgs @('bp-index-l2-list', '--scope-path', $AssetPath, '--limit', '50000')
    $ids = @()
    if ($list -and ($list.PSObject.Properties.Name -contains 'chunk_ids')) { $ids = @($list.chunk_ids) }
    foreach ($cid in $ids) {
        $p = Parse-ChunkIdParts -ChunkId ([string]$cid)
        if (-not $p) { continue }
        if ($CallableName -and $p.graph_name -ne $CallableName) { continue }
        $callables += [pscustomobject]@{ name = $p.graph_name; chunk_id = [string]$cid }
    }
} else {
    if ($CallableName) { $callables = @([pscustomobject]@{ name = $CallableName }) }
    else {
        $list = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $AssetPath, '--list-callables')
        foreach ($k in @('events','functions','macros')) {
            if ($list.PSObject.Properties.Name -contains $k) {
                foreach ($c in @($list.$k)) {
                    if ($c -and $c.name) { $callables += [pscustomobject]@{ name = [string]$c.name } }
                }
            }
        }
        $callables = @($callables | Where-Object { $_ -and $_.name } | Sort-Object -Property name -Unique)
    }
}

Write-Host ("Callables: {0}" -f $callables.Count)

foreach ($c in $callables) {
    $cname = [string]$c.name
    Write-Host ("Graph: {0}::{1}" -f $AssetPath, $cname)
    $safe = ($cname -replace '[<>:\"/\\\\|?*]', '_')

    if ($UseIndexer) {
        # chunk_id contains '|' which must be quoted for cmd.exe based launchers (e.g. py.cmd) to avoid piping.
        $quotedChunkId = ('"{0}"' -f $c.chunk_id)
        $cj = Invoke-SoftUEJson -CliArgs @('bp-index-chunk-get', '--chunk-id', $quotedChunkId, '--node-offset', '0', '--node-limit', '2000')
        $outPath = Join-Path $graphsDir ($safe + '.l2chunk.json')
        Write-JsonFileAtomic -Path $outPath -Obj $cj -Depth 120

        if ($IncludeNodeTitles) {
            $nodesTxt = Join-Path $graphsDir ($safe + '.nodes.txt')
            $titles = @()
            foreach ($n in @($cj.nodes)) {
                if ($n -and ($n.PSObject.Properties.Name -contains 'title') -and $n.title) { $titles += [string]$n.title }
            }
            $titles | Set-Content -LiteralPath $nodesTxt -Encoding UTF8
        }
    }
    else {
        $g = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $AssetPath, '--callable-name', $cname)
        $graphPath = Join-Path $graphsDir ($safe + '.graph.json')
        Write-JsonFileAtomic -Path $graphPath -Obj $g -Depth 200

        if ($IncludeNodeTitles) {
            $nodesTxt = Join-Path $graphsDir ($safe + '.nodes.txt')
            $titles = @()
            $nodes = @()
            if ($g) {
                if (($g.PSObject.Properties.Name -contains 'nodes') -and $g.nodes) { $nodes = @($g.nodes) }
                elseif (($g.PSObject.Properties.Name -contains 'graph') -and $g.graph -and ($g.graph.PSObject.Properties.Name -contains 'nodes') -and $g.graph.nodes) { $nodes = @($g.graph.nodes) }
            }
            foreach ($n in $nodes) {
                if ($n -and ($n.PSObject.Properties.Name -contains 'title') -and $n.title) { $titles += [string]$n.title }
            }
            $titles | Set-Content -LiteralPath $nodesTxt -Encoding UTF8
        }
    }
}

Write-Host "Export-BlueprintDeepIndex: OK"
exit 0

