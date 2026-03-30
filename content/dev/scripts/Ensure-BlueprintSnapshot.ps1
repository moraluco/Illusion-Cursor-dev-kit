<#
.SYNOPSIS
  Ensure an on-disk, searchable Blueprint snapshot exists (and refresh if stale).

.DESCRIPTION
  Grep/Explore/Search only work on text files. This script generates a full Blueprint snapshot
  (functions/variables/callables/nodes) into a project-committed directory so it can always be searched
  even when Unreal Editor is not running.

  Scope: /Game + enabled plugins from the .uproject (treated as content roots like "/PluginName").

.EXAMPLE
  powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\\content\\dev\\scripts\\Ensure-BlueprintSnapshot.ps1"
#>
[CmdletBinding()]
param(
    # UE project root (contains the .uproject)
    [string] $ProjectRoot = 'D:\Workspace\MT\Engine\ManteumTower',

    # Full path to the .uproject
    [string] $UProjectPath = 'D:\Workspace\MT\Engine\ManteumTower\ManteumTower.uproject',

    # Snapshot directory inside the project repo (intended to be committed)
    [string] $SnapshotDir,

    # Mark snapshot stale after N hours
    [int] $FreshnessHours = 24,

    # Force rebuild even if snapshot looks fresh
    [switch] $Force,

    # Include graph nodes (enables comment/title searching; slower)
    [switch] $IncludeGraphNodes = $true,

    # Also export callable list (recommended)
    [switch] $IncludeCallables = $true,

    # Optional name query filter (use '*' for full)
    [string] $NameQuery = '*',

    # Max assets per content root
    [int] $Limit = 200000,

    # SoftUEBridge server override (optional)
    [string] $ServerUrl,

    # HTTP timeout seconds for slow queries
    [int] $TimeoutSec = 300
)

$ErrorActionPreference = 'Stop'

if (-not $SnapshotDir) {
    $SnapshotDir = Join-Path $ProjectRoot 'BlueprintSnapshot'
}

$snapshotBase = 'blueprints_full'
$txtPath = Join-Path $SnapshotDir ("{0}.txt" -f $snapshotBase)
$ndjsonPath = Join-Path $SnapshotDir ("{0}.ndjson" -f $snapshotBase)
$metaPath = Join-Path $SnapshotDir ("{0}.meta.json" -f $snapshotBase)

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
        # UE content root for plugins typically shows as "/PluginName" in Content Browser.
        $roots += ("/{0}" -f $n)
    }
    return ($roots | Sort-Object -Unique)
}

function Is-SnapshotFresh {
    if ($Force) { return $false }
    if (-not (Test-Path -LiteralPath $txtPath) -or -not (Test-Path -LiteralPath $ndjsonPath) -or -not (Test-Path -LiteralPath $metaPath)) {
        return $false
    }
    $age = (Get-Date) - (Get-Item -LiteralPath $metaPath).LastWriteTime
    return ($age.TotalHours -lt $FreshnessHours)
}

Write-Host "Ensure-BlueprintSnapshot: start"
Write-Host "ProjectRoot:  $ProjectRoot"
Write-Host "UProjectPath: $UProjectPath"
Write-Host "SnapshotDir:  $SnapshotDir"
Write-Host "FreshnessHours: $FreshnessHours"
Write-Host "Force: $([bool]$Force)"
Write-Host "IncludeGraphNodes: $([bool]$IncludeGraphNodes)"
Write-Host "IncludeCallables: $([bool]$IncludeCallables)"

if (-not (Test-Path -LiteralPath $ProjectRoot)) { throw "ProjectRoot not found: $ProjectRoot" }
if (-not (Test-Path -LiteralPath $UProjectPath)) { throw "uproject not found: $UProjectPath" }

if (Is-SnapshotFresh) {
    Write-Host "Snapshot is fresh. OK."
    Write-Host "SnapshotText: $txtPath"
    Write-Host "SnapshotNDJSON: $ndjsonPath"
    exit 0
}

if (-not (Test-Path -LiteralPath $SnapshotDir)) {
    New-Item -ItemType Directory -Path $SnapshotDir | Out-Null
}

$kitRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $PSCommandPath))
$startUe = Join-Path $kitRoot 'dev\scripts\Start-UnrealEditor.ps1'
$export = Join-Path $kitRoot 'dev\scripts\Export-BlueprintTextIndex.ps1'

if (-not (Test-Path -LiteralPath $startUe)) { throw "Start-UnrealEditor.ps1 not found: $startUe" }
if (-not (Test-Path -LiteralPath $export)) { throw "Export-BlueprintTextIndex.ps1 not found: $export" }

# Ensure bridge is up (will start UE if needed)
& $startUe -UProjectPath $UProjectPath -WaitForBridge -WaitTimeoutSec 240
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

$roots = Get-ContentRoots -UProject $UProjectPath
Write-Host ("ContentRoots: {0}" -f ($roots -join ', '))

Write-Host "Running Export-BlueprintTextIndex..."
$exportParams = @{
    ProjectRoot = $ProjectRoot
    OutDir = $SnapshotDir
    OutBaseName = $snapshotBase
    ContentPaths = $roots
    NameQuery = $NameQuery
    Limit = $Limit
    TimeoutSec = $TimeoutSec
}
if ($IncludeCallables) { $exportParams.IncludeCallables = $true }
if ($IncludeGraphNodes) { $exportParams.IncludeGraphNodes = $true }
if ($ServerUrl) { $exportParams.ServerUrl = $ServerUrl }

$exportAttempts = 3
for ($i = 1; $i -le $exportAttempts; $i++) {
    & $export @exportParams
    $code = $LASTEXITCODE
    if ($code -eq 0) { break }

    $isTransient = $false
    try {
        $status = (py -3 -m soft_ue_cli status 2>&1 | Out-String)
        $isTransient = $status -match '502|Bad Gateway|503|timed out|timeout'
    }
    catch { }

    if ($isTransient -and $i -lt $exportAttempts) {
        Write-Host ("Export failed with transient bridge error (attempt {0}/{1}). Restarting bridge and retry..." -f $i, $exportAttempts)
        & $startUe -UProjectPath $UProjectPath -WaitForBridge -WaitTimeoutSec 240
        Start-Sleep -Seconds 3
        continue
    }
    exit $code
}

Write-Host "Ensure-BlueprintSnapshot: OK"
Write-Host "SnapshotText: $txtPath"
Write-Host "SnapshotNDJSON: $ndjsonPath"
Write-Host "SnapshotMeta: $metaPath"
exit 0

