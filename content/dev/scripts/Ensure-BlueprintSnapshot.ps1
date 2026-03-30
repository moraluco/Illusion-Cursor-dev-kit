<#
.SYNOPSIS
  Ensure an on-disk, searchable Blueprint snapshot exists (and refresh if stale).

.DESCRIPTION
  Grep/Explore/Search only work on text files. This script generates a project-committed snapshot directory
  so it can always be searched even when Unreal Editor is not running.

  Note: Prefer the hierarchical snapshot exporter (Export-AssetSnapshot.ps1) when you need full-fidelity
  graph details (pins/links/defaults). This script keeps the legacy flat text index for simple grep.

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
    [int] $TimeoutSec = 300,

    # Start-UnrealEditor gate settings (see Start-UnrealEditor.ps1)
    [int] $MaxEditors = 2,
    [double] $MinFreeMemoryGB = 3,
    [int] $GateTimeoutSec = 300,
    [int] $GatePollSec = 2
)

$ErrorActionPreference = 'Stop'

if (-not $SnapshotDir) {
    $SnapshotDir = Join-Path $ProjectRoot 'BlueprintSnapshot'
}

$snapshotBase = 'blueprints_full'
$txtPath = Join-Path $SnapshotDir ("{0}.txt" -f $snapshotBase)
$ndjsonPath = Join-Path $SnapshotDir ("{0}.ndjson" -f $snapshotBase)
$metaPath = Join-Path $SnapshotDir ("{0}.meta.json" -f $snapshotBase)

function Stop-UnrealEditorIfStartedByUs {
    param(
        $StartInfo
    )

    try {
        if (-not $StartInfo) { return }
        if (-not $StartInfo.startedNew) { return }
        $processId = [int]$StartInfo.pid
        if ($processId -le 0) { return }

        $p = Get-Process -Id $processId -ErrorAction SilentlyContinue
        if (-not $p) { return }

        Write-Host ("Closing UnrealEditor.exe (pid={0}) started by this script..." -f $processId)

        try {
            $null = $p.CloseMainWindow()
        }
        catch { }

        try {
            $p.WaitForExit(30000) | Out-Null
        }
        catch { }

        if (-not $p.HasExited) {
            Write-Host ("UnrealEditor.exe still running, force stop (pid={0})" -f $processId)
            Stop-Process -Id $processId -Force -ErrorAction SilentlyContinue
        }
    }
    catch {
        Write-Host ("Failed to close UnrealEditor.exe (non-fatal): {0}" -f $_.Exception.Message)
    }
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
$exportHier = Join-Path $kitRoot 'dev\scripts\Export-AssetSnapshot.ps1'

if (-not (Test-Path -LiteralPath $startUe)) { throw "Start-UnrealEditor.ps1 not found: $startUe" }
if (-not (Test-Path -LiteralPath $export)) { throw "Export-BlueprintTextIndex.ps1 not found: $export" }
if (-not (Test-Path -LiteralPath $exportHier)) { throw "Export-AssetSnapshot.ps1 not found: $exportHier" }

$startInfo = $null
try {
    # Ensure bridge is up (will start UE if needed)
    $startInfo = & $startUe -UProjectPath $UProjectPath -WaitForBridge -WaitTimeoutSec 240 -MaxEditors $MaxEditors -MinFreeMemoryGB $MinFreeMemoryGB -GateTimeoutSec $GateTimeoutSec -GatePollSec $GatePollSec
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

    # Gate skip: keep existing snapshot unchanged and exit success (per policy)
    if ($startInfo -and ($startInfo.PSObject.Properties.Name -contains 'skipped') -and [bool]$startInfo.skipped) {
        Write-Host ("Skip refreshing snapshot (gate skip): {0}" -f $startInfo.skipReason)
        if (Test-Path -LiteralPath $txtPath) { Write-Host "SnapshotText: $txtPath" }
        if (Test-Path -LiteralPath $ndjsonPath) { Write-Host "SnapshotNDJSON: $ndjsonPath" }
        if (Test-Path -LiteralPath $metaPath) { Write-Host "SnapshotMeta: $metaPath" }
        exit 0
    }

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
            $startInfo = & $startUe -UProjectPath $UProjectPath -WaitForBridge -WaitTimeoutSec 240
            Start-Sleep -Seconds 3
            continue
        }
        exit $code
    }

    # Also generate hierarchical snapshot meta/index (Full graph export is handled by Export-AssetSnapshot.ps1 directly)
    try {
        & $exportHier -ProjectRoot $ProjectRoot -UProjectPath $UProjectPath -SnapshotDir $SnapshotDir -NameQuery $NameQuery -Level IndexOnly
    }
    catch {
        Write-Host ("Export-AssetSnapshot(IndexOnly) failed (non-fatal): {0}" -f $_.Exception.Message)
    }

    Write-Host "Ensure-BlueprintSnapshot: OK"
    Write-Host "SnapshotText: $txtPath"
    Write-Host "SnapshotNDJSON: $ndjsonPath"
    Write-Host "SnapshotMeta: $metaPath"
    exit 0
}
finally {
    Stop-UnrealEditorIfStartedByUs -StartInfo $startInfo
}

