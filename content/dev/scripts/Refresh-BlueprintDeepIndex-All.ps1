<#
.SYNOPSIS
  Full refresh of "deep" Blueprint graph index (L2): export graphs/*.graph.json for all Blueprint/AnimBlueprint assets.

.DESCRIPTION
  This is intentionally slow/expensive. It enumerates Blueprint/AnimBlueprint assets via SoftUEBridge and then
  calls Export-BlueprintDeepIndex.ps1 per asset to write:
    <ProjectRoot>/.soft-ue-index/assets/<asset>/graphs/*.graph.json

  Use this when you need offline callsite / pin / link / default-value evidence across the whole project.

.EXAMPLE
  powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\content\dev\scripts\Refresh-BlueprintDeepIndex-All.ps1"

.EXAMPLE
  # Only export /Game and only assets matching BP_* (still deep, but smaller set)
  powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\content\dev\scripts\Refresh-BlueprintDeepIndex-All.ps1" -ContentPaths /Game -NameQuery "BP_*"
#>
[CmdletBinding()]
param(
    # UE project root (contains the .uproject)
    [string] $ProjectRoot = 'D:\Workspace\MT\Engine\ManteumTower',

    # Full path to the .uproject
    [string] $UProjectPath = 'D:\Workspace\MT\Engine\ManteumTower\ManteumTower.uproject',

    # Output directory (default: <ProjectRoot>/.soft-ue-index)
    [string] $OutDir,

    # Asset classes to export (defaults include AnimBlueprint)
    [string[]] $AssetClasses = @('Blueprint', 'AnimBlueprint'),

    # Content Browser path prefixes (e.g. /Game, /MyPlugin). If omitted, uses /Game + enabled plugins.
    [string[]] $ContentPaths,

    # Optional asset name pattern (wildcards * ?)
    [string] $NameQuery = '*',

    # Max assets returned per content root per class
    [int] $Limit = 200000,

    # If set, also dump node titles to .nodes.txt for grep
    [switch] $IncludeNodeTitles,

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

function Has-Prop {
    param(
        [Parameter(Mandatory = $true)] $Obj,
        [Parameter(Mandatory = $true)] [string] $Name
    )
    if (-not $Obj) { return $false }
    try { return ($Obj.PSObject.Properties.Name -contains $Name) }
    catch { return $false }
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

if (-not $ContentPaths -or $ContentPaths.Count -eq 0) {
    $ContentPaths = Get-ContentRoots -UProject $UProjectPath
}

$kitRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $PSCommandPath))
$startUe = Join-Path $kitRoot 'dev\scripts\Start-UnrealEditor.ps1'
$deep = Join-Path $kitRoot 'dev\scripts\Export-BlueprintDeepIndex.ps1'

if (-not (Test-Path -LiteralPath $startUe)) { throw "Start-UnrealEditor.ps1 not found: $startUe" }
if (-not (Test-Path -LiteralPath $deep)) { throw "Export-BlueprintDeepIndex.ps1 not found: $deep" }

Write-Host "Refresh-BlueprintDeepIndex-All: start"
Write-Host "ProjectRoot: $ProjectRoot"
Write-Host "UProjectPath: $UProjectPath"
Write-Host "OutDir: $OutDir"
Write-Host ("ContentPaths: {0}" -f ($ContentPaths -join ', '))
Write-Host ("AssetClasses: {0}" -f ($AssetClasses -join ', '))
Write-Host "NameQuery: $NameQuery"
Write-Host "IncludeNodeTitles: $([bool]$IncludeNodeTitles)"

# Ensure bridge is up (will start UE if needed)
$startInfo = & $startUe -UProjectPath $UProjectPath -WaitForBridge -WaitTimeoutSec 240 -MaxEditors $MaxEditors -MinFreeMemoryGB $MinFreeMemoryGB -GateTimeoutSec $GateTimeoutSec -GatePollSec $GatePollSec
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

if ($startInfo -and ($startInfo.PSObject.Properties.Name -contains 'skipped') -and [bool]$startInfo.skipped) {
    Write-Host ("Skip deep index refresh (gate skip): {0}" -f $startInfo.skipReason)
    exit 0
}

Set-Location -LiteralPath $ProjectRoot
if (-not (Test-Path -LiteralPath $OutDir)) { New-Item -ItemType Directory -Force -Path $OutDir | Out-Null }

# Health check
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
$assetPaths = @($assetPaths | Sort-Object -Unique)

Write-Host ("Blueprint assets: {0}" -f $assetPaths.Count)

$ok = 0
$failed = 0
foreach ($bp in $assetPaths) {
    Write-Host ("DeepIndex: {0}" -f $bp)
    $args = @(
        '-ProjectRoot', $ProjectRoot,
        '-OutDir', $OutDir,
        '-AssetPath', $bp
    )
    if ($IncludeNodeTitles) { $args += @('-IncludeNodeTitles') }
    if ($ServerUrl) { $args += @('-ServerUrl', $ServerUrl) }
    if ($TimeoutSec -gt 0) { $args += @('-TimeoutSec', "$TimeoutSec") }

    & $deep @args | Out-Null
    if ($LASTEXITCODE -eq 0) { $ok++ } else { $failed++ }
}

Write-Host ("Refresh-BlueprintDeepIndex-All: done ok={0} failed={1}" -f $ok, $failed)
if ($failed -gt 0) { exit 2 }
exit 0

