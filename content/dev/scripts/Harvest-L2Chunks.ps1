#Requires -Version 5.1

<#
.SYNOPSIS
  Single-process harvester: refresh + list + chunk-get (NDJSON).

.DESCRIPTION
  Avoids per-chunk CLI cold start by using one Python process to call the bridge repeatedly.

.OUTPUTS
  Writes an NDJSON file (one L2 chunk JSON per line).
#>

[CmdletBinding()]
param(
  [string] $ProjectRoot = 'D:\Workspace\MT\Engine\ManteumTower',
  [string] $ScopePath = '/Game/System',
  [string] $OutPath,
  [ValidateSet('off','minimal','standard','full')]
  [string] $L2SemanticLevel = 'minimal',
  [int] $NodeLimit = 500
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not $OutPath) {
  $OutPath = Join-Path $ProjectRoot ".soft-ue-index\\l2_chunks.ndjson"
}

$py = $null
foreach ($c in @("py","python")) {
  try { $null = & $c -3 -c "import sys; print('ok')" 2>$null; $py = $c; break } catch { }
}
if (-not $py) { throw "python launcher not found (expected 'py' or 'python')" }

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$harvest = Join-Path $scriptRoot "ue-python\\harvest_l2_chunks.py"
if (-not (Test-Path -LiteralPath $harvest)) { throw "missing harvester: $harvest" }

& $py -3 $harvest --project-root $ProjectRoot --scope-path $ScopePath --out $OutPath --semantic-level $L2SemanticLevel --node-limit $NodeLimit | Out-Default

Write-Host "Wrote:"
Write-Host "  - $OutPath"

