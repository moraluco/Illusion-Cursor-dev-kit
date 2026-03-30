<#
.SYNOPSIS
  Run Pester tests for UE automation scripts.

.DESCRIPTION
  Runs Unit tests by default. Use -E2E to include tests tagged with 'E2E'.
  This is intended for local validation and CI integration.

.EXAMPLE
  powershell -NoProfile -ExecutionPolicy Bypass -File .\Invoke-UEAutomationTests.ps1

.EXAMPLE
  powershell -NoProfile -ExecutionPolicy Bypass -File .\Invoke-UEAutomationTests.ps1 -E2E
#>
[CmdletBinding()]
param(
    [switch] $E2E,
    [string] $TestsPath,
    [int] $PassThruExitCode = 1
)

$ErrorActionPreference = 'Stop'

if (-not $TestsPath) {
    $TestsPath = Join-Path $PSScriptRoot 'tests'
}

if (-not (Test-Path -LiteralPath $TestsPath)) {
    throw "TestsPath not found: $TestsPath"
}

Import-Module Pester -ErrorAction Stop | Out-Null

$pesterParams = @{
    Script = $TestsPath
}

if ($E2E) {
    Write-Host "Pester: running Unit + E2E"
}
else {
    Write-Host "Pester: running Unit only (excluding -Tag E2E)"
    $pesterParams.ExcludeTag = @('E2E')
}

$result = Invoke-Pester @pesterParams -PassThru

if ($result.FailedCount -gt 0) {
    Write-Host ("Pester failed: {0} failed" -f $result.FailedCount)
    exit $PassThruExitCode
}

Write-Host "Pester OK"
exit 0

