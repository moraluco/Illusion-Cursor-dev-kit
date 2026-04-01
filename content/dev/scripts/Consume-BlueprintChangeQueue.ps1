<#
.SYNOPSIS
  Consume UE-written Blueprint change queue and refresh per-asset text index.

.DESCRIPTION
  UE (SoftUEBridgeEditor) appends NDJSON lines to:
    <ProjectRoot>/.soft-ue-index/changed_assets.ndjson

  This script atomically moves that file aside, extracts asset paths, de-dupes,
  then calls the per-asset exporter to refresh only those assets.
  New saves that happen while processing will go into a newly created queue file.
#>
[CmdletBinding()]
param(
    [string] $ProjectRoot = 'D:\Workspace\MT\Engine\ManteumTower',
    [string] $OutDir,
    [switch] $IncludeCallables = $true,
    [string] $ServerUrl,
    [int] $TimeoutSec = 120
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $ProjectRoot)) { throw "ProjectRoot not found: $ProjectRoot" }
if (-not $OutDir) { $OutDir = Join-Path $ProjectRoot '.soft-ue-index' }

$queuePath = Join-Path $OutDir 'changed_assets.ndjson'
if (-not (Test-Path -LiteralPath $queuePath)) {
    Write-Host "Consume-BlueprintChangeQueue: no queue file. OK."
    exit 0
}

# Move queue aside so UE can keep writing to a fresh file.
$stamp = (Get-Date).ToString('yyyyMMdd_HHmmss')
$processingPath = Join-Path $OutDir ("changed_assets.{0}.processing.ndjson" -f $stamp)

try {
    Move-Item -LiteralPath $queuePath -Destination $processingPath -Force
}
catch {
    # If we fail to move (e.g. locked), fallback to reading in place (best effort)
    $processingPath = $queuePath
}

$lines = @()
try {
    $lines = Get-Content -LiteralPath $processingPath -ErrorAction Stop
}
catch {
    Write-Host ("Consume-BlueprintChangeQueue: failed to read queue: {0}" -f $_.Exception.Message)
    exit 1
}

$assetPaths = @()
foreach ($ln in $lines) {
    if (-not $ln) { continue }
    try {
        $obj = $ln | ConvertFrom-Json
        if ($obj -and $obj.asset_path) {
            $assetPaths += [string]$obj.asset_path
        }
    }
    catch {
        # Ignore malformed lines
        continue
    }
}
$assetPaths = @($assetPaths | Where-Object { $_ } | Sort-Object -Unique)

Write-Host ("Consume-BlueprintChangeQueue: assets={0}" -f $assetPaths.Count)
if ($assetPaths.Count -eq 0) {
    exit 0
}

$kitRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $PSCommandPath))
$perAsset = Join-Path $kitRoot 'dev\scripts\Export-BlueprintTextIndex-PerAsset.ps1'
if (-not (Test-Path -LiteralPath $perAsset)) { throw "Per-asset exporter not found: $perAsset" }

$args = @{
    ProjectRoot = $ProjectRoot
    OutDir = $OutDir
    OnlyAssets = $assetPaths
    TimeoutSec = $TimeoutSec
}
if ($IncludeCallables) { $args.IncludeCallables = $true }
if ($ServerUrl) { $args.ServerUrl = $ServerUrl }

& $perAsset @args
exit $LASTEXITCODE

