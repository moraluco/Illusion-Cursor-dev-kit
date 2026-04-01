<#
.SYNOPSIS
  Run local tests with a "no UE first" policy.

.DESCRIPTION
  Layers:
    L0: optional lint/static checks (best-effort; skipped if tools missing)
    L1: Pester Unit tests (no UE)
    L2: Pure C++ unit tests (CMake + doctest, no UE)
    L3: Optional E2E (requires UE Editor/Bridge)

  This script is intended to be the single local entry point in Cursor.

.PARAMETER OutDir
  Directory for logs/reports. Defaults to a temp folder.

.PARAMETER IncludeE2E
  Include E2E tests (will start/close UE and require SoftUEBridge).

.PARAMETER SkipCpp
  Skip pure C++ tests.

.PARAMETER SkipPester
  Skip Pester tests.

.PARAMETER SkipLint
  Skip lint/static checks.
#>
[CmdletBinding()]
param(
    [string] $OutDir,
    [switch] $IncludeE2E,
    [switch] $SkipCpp,
    [switch] $SkipPester,
    [switch] $SkipLint
)

$ErrorActionPreference = 'Stop'

function New-DefaultOutDir {
    $stamp = (Get-Date).ToString('yyyyMMdd-HHmmss')
    $d = Join-Path $env:TEMP ("illusion-localtests-" + $stamp)
    New-Item -ItemType Directory -Force -Path $d | Out-Null
    return $d
}

function Write-TextFile([string] $Path, [string] $Text) {
    $dir = Split-Path -Parent $Path
    if ($dir) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
    $Text | Set-Content -LiteralPath $Path -Encoding UTF8
}

function Invoke-Step {
    param(
        [Parameter(Mandatory = $true)][string] $Name,
        [Parameter(Mandatory = $true)][scriptblock] $Body,
        [Parameter(Mandatory = $true)][string] $StepDir
    )

    New-Item -ItemType Directory -Force -Path $StepDir | Out-Null
    $stdoutPath = Join-Path $StepDir 'stdout.txt'
    $metaPath = Join-Path $StepDir 'meta.json'

    $started = Get-Date
    $exitCode = 0
    $status = 'ok'

    try {
        $out = & $Body 2>&1 | Out-String
        Write-TextFile -Path $stdoutPath -Text $out
        $exitCode = $LASTEXITCODE
        if ($exitCode -ne 0) { $status = 'failed' }
    }
    catch {
        $status = 'failed'
        $exitCode = 1
        Write-TextFile -Path $stdoutPath -Text ($_ | Out-String)
    }

    $ended = Get-Date
    $meta = [ordered]@{
        name = $Name
        status = $status
        exitCode = $exitCode
        startedAt = $started.ToString('o')
        endedAt = $ended.ToString('o')
    } | ConvertTo-Json -Depth 5
    Write-TextFile -Path $metaPath -Text $meta

    return [pscustomobject]@{
        name = $Name
        status = $status
        exitCode = $exitCode
        stdoutPath = $stdoutPath
        stepDir = $StepDir
    }
}

if (-not $OutDir) { $OutDir = New-DefaultOutDir }
New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

$kitRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..')).Path
$stepsRoot = Join-Path $OutDir 'steps'

Write-Host "KitRoot: $kitRoot"
Write-Host "OutDir:  $OutDir"
Write-Host "E2E:     $IncludeE2E"

$results = @()

if (-not $SkipLint) {
    $stepDir = Join-Path $stepsRoot 'L0-lint'
    $results += Invoke-Step -Name 'L0-lint' -StepDir $stepDir -Body {
        $pssa = Get-Module -ListAvailable -Name PSScriptAnalyzer | Select-Object -First 1
        if (-not $pssa) {
            Write-Host 'PSScriptAnalyzer not installed - skipping lint.'
            $global:LASTEXITCODE = 0
            return
        }

        Import-Module PSScriptAnalyzer -ErrorAction Stop | Out-Null
        $target = Join-Path $kitRoot 'content\dev\scripts'
        $issues = Invoke-ScriptAnalyzer -Path $target -Recurse -Severity Warning,Error
        if ($issues -and $issues.Count -gt 0) {
            $issues | Format-Table -AutoSize | Out-String | Write-Host
            $global:LASTEXITCODE = 2
        }
        else {
            Write-Host 'PSScriptAnalyzer: OK'
            $global:LASTEXITCODE = 0
        }
    }
}

if (-not $SkipPester) {
    $stepDir = Join-Path $stepsRoot 'L1-pester'
    $results += Invoke-Step -Name 'L1-pester' -StepDir $stepDir -Body {
        $invoke = Join-Path $kitRoot 'content\dev\scripts\Invoke-UEAutomationTests.ps1'
        if ($IncludeE2E) {
            & $invoke -E2E -OutDir $stepDir
        }
        else {
            & $invoke -OutDir $stepDir
        }
    }
}

if (-not $SkipCpp) {
    $stepDir = Join-Path $stepsRoot 'L2-cpp'
    $results += Invoke-Step -Name 'L2-cpp' -StepDir $stepDir -Body {
        $cpp = Join-Path $kitRoot 'content\dev\scripts\Run-CppUnitTests.ps1'
        $out = Join-Path $stepDir 'reports'
        & $cpp -Configuration Debug -OutDir $out
    }
}

$summaryPath = Join-Path $OutDir 'summary.json'
$summary = [ordered]@{
    outDir = $OutDir
    includeE2E = [bool]$IncludeE2E
    steps = @($results | ForEach-Object {
        [ordered]@{
            name = $_.name
            status = $_.status
            exitCode = $_.exitCode
            stdoutPath = $_.stdoutPath
            stepDir = $_.stepDir
        }
    })
} | ConvertTo-Json -Depth 6
Write-TextFile -Path $summaryPath -Text $summary

Write-Host "Summary: $summaryPath"

$failed = @($results | Where-Object { $_.exitCode -ne 0 })
if ($failed.Count -gt 0) {
    Write-Host ("FAILED steps: " + (($failed | Select-Object -ExpandProperty name) -join ', '))
    exit 1
}

Write-Host 'All selected steps OK'
exit 0

