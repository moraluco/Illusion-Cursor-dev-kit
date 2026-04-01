<#
.SYNOPSIS
  Fast refresh of local, grep-friendly Blueprint text index under .soft-ue-index/.

.DESCRIPTION
  This is the "daily" fast path intended for interactive use and agent workflows:
  - Starts / reuses an interactive Unreal Editor (via Start-UnrealEditor.ps1) and waits for SoftUEBridge
  - Exports Blueprint + AnimBlueprint variables/functions and (optionally) callable list
  - DOES NOT export per-node titles/comments by default (that is the slow path)

  Output goes to <ProjectRoot>/.soft-ue-index/ so Cursor Search/Grep can see it.

.EXAMPLE
  powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\\content\\dev\\scripts\\Refresh-BlueprintTextIndex.ps1"
#>
[CmdletBinding()]
param(
    # UE project root (contains the .uproject)
    [string] $ProjectRoot = 'D:\Workspace\MT\Engine\ManteumTower',

    # Full path to the .uproject
    [string] $UProjectPath = 'D:\Workspace\MT\Engine\ManteumTower\ManteumTower.uproject',

    # Output directory (default: <ProjectRoot>/.soft-ue-index)
    [string] $OutDir,

    # Content Browser path prefixes (e.g. /Game, /MyPlugin). If omitted, uses /Game + enabled plugins.
    [string[]] $ContentPaths,

    # Optional asset name pattern (wildcards * ?)
    [string] $NameQuery = '*',

    # Max assets returned per content root per class
    [int] $Limit = 200000,

    # Export callable list (recommended; adds one extra query per asset, still fast)
    [switch] $IncludeCallables = $true,

    # Export node titles/comments (slow; only enable when you need comment/title searching)
    [switch] $IncludeGraphNodes = $false,

    # SoftUEBridge server override (optional)
    [string] $ServerUrl,

    # HTTP timeout seconds for slow queries
    [int] $TimeoutSec = 180,

    # Start-UnrealEditor gate settings (see Start-UnrealEditor.ps1)
    [int] $MaxEditors = 2,
    [double] $MinFreeMemoryGB = 3,
    [int] $GateTimeoutSec = 300,
    [int] $GatePollSec = 2
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $ProjectRoot)) { throw "ProjectRoot not found: $ProjectRoot" }
if (-not (Test-Path -LiteralPath $UProjectPath)) { throw "uproject not found: $UProjectPath" }

if (-not $OutDir) {
    $OutDir = Join-Path $ProjectRoot '.soft-ue-index'
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

if (-not $ContentPaths -or $ContentPaths.Count -eq 0) {
    $ContentPaths = Get-ContentRoots -UProject $UProjectPath
}

$kitRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $PSCommandPath))
$startUe = Join-Path $kitRoot 'dev\scripts\Start-UnrealEditor.ps1'
$export = Join-Path $kitRoot 'dev\scripts\Export-BlueprintTextIndex.ps1'

if (-not (Test-Path -LiteralPath $startUe)) { throw "Start-UnrealEditor.ps1 not found: $startUe" }
if (-not (Test-Path -LiteralPath $export)) { throw "Export-BlueprintTextIndex.ps1 not found: $export" }

Write-Host "Refresh-BlueprintTextIndex: start"
Write-Host "ProjectRoot: $ProjectRoot"
Write-Host "UProjectPath: $UProjectPath"
Write-Host "OutDir: $OutDir"
Write-Host ("ContentPaths: {0}" -f ($ContentPaths -join ', '))
Write-Host "NameQuery: $NameQuery"
Write-Host "IncludeCallables: $([bool]$IncludeCallables)"
Write-Host "IncludeGraphNodes: $([bool]$IncludeGraphNodes)"

# Ensure bridge is up (will start UE if needed)
$startInfo = & $startUe -UProjectPath $UProjectPath -WaitForBridge -WaitTimeoutSec 240 -MaxEditors $MaxEditors -MinFreeMemoryGB $MinFreeMemoryGB -GateTimeoutSec $GateTimeoutSec -GatePollSec $GatePollSec
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

if ($startInfo -and ($startInfo.PSObject.Properties.Name -contains 'skipped') -and [bool]$startInfo.skipped) {
    Write-Host ("Skip refreshing local index (gate skip): {0}" -f $startInfo.skipReason)
    exit 0
}

$exportParams = @{
    ProjectRoot = $ProjectRoot
    OutDir = $OutDir
    OutBaseName = 'blueprints'
    ContentPaths = $ContentPaths
    NameQuery = $NameQuery
    Limit = $Limit
    TimeoutSec = $TimeoutSec
}
if ($IncludeCallables) { $exportParams.IncludeCallables = $true }
if ($IncludeGraphNodes) { $exportParams.IncludeGraphNodes = $true }
if ($ServerUrl) { $exportParams.ServerUrl = $ServerUrl }

& $export @exportParams
exit $LASTEXITCODE

