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

$callables = @()
if ($CallableName) {
    $callables = @($CallableName)
}
else {
    $list = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $AssetPath, '--list-callables')
    foreach ($k in @('events','functions','macros')) {
        if ($list.PSObject.Properties.Name -contains $k) {
            foreach ($c in @($list.$k)) {
                if ($c -and $c.name) {
                    $callables += [string]$c.name
                }
            }
        }
    }
    $callables = @($callables | Where-Object { $_ } | Sort-Object -Unique)
}

Write-Host ("Callables: {0}" -f $callables.Count)

foreach ($cname in $callables) {
    Write-Host ("Graph: {0}::{1}" -f $AssetPath, $cname)
    $g = Invoke-SoftUEJson -CliArgs @('query-blueprint-graph', $AssetPath, '--callable-name', $cname)

    $safe = ($cname -replace '[<>:\"/\\\\|?*]', '_')
    $graphPath = Join-Path $graphsDir ($safe + '.graph.json')
    Write-JsonFileAtomic -Path $graphPath -Obj $g -Depth 200

    if ($IncludeNodeTitles) {
        $nodesTxt = Join-Path $graphsDir ($safe + '.nodes.txt')
        $titles = @()
        $nodes = @()
        if ($g) {
            if (($g.PSObject.Properties.Name -contains 'nodes') -and $g.nodes) {
                $nodes = @($g.nodes)
            }
            elseif (($g.PSObject.Properties.Name -contains 'graph') -and $g.graph -and ($g.graph.PSObject.Properties.Name -contains 'nodes') -and $g.graph.nodes) {
                $nodes = @($g.graph.nodes)
            }
        }
        foreach ($n in $nodes) {
            if ($n -and ($n.PSObject.Properties.Name -contains 'title') -and $n.title) {
                $titles += [string]$n.title
            }
        }
        $titles | Set-Content -LiteralPath $nodesTxt -Encoding UTF8
    }
}

Write-Host "Export-BlueprintDeepIndex: OK"
exit 0

