<#
.SYNOPSIS
  Runs UnrealEditor-Cmd against a .uproject, waits for exit, optionally scans the latest Saved/Logs file.

.DESCRIPTION
  For unattended CI: primary signal is the editor process exit code. Logs are under <project>/Saved/Logs.
  Use -AlsoFailOnLogPatterns to add a secondary check (e.g. Fatal error) on the newest .log file.

.PARAMETER UProjectPath
  Full path to the .uproject file.

.PARAMETER UnrealEditorCmd
  Path to UnrealEditor-Cmd.exe. If omitted, uses $env:UE_EDITOR_CMD, or
  Join-Path $env:UE_ENGINE_PATH 'Binaries/Win64/UnrealEditor-Cmd.exe'.

.PARAMETER EditorArgs
  Arguments after the .uproject path (e.g. -run=AngelscriptTest, -unattended, -stdout).

.PARAMETER AlsoFailOnLogPatterns
  Substrings (case-insensitive) to search for in the latest log after the run.
  If any line contains a substring, exit code becomes 3 unless the process already exited non-zero.

.PARAMETER TailLogLinesOnFailure
  If the process exits non-zero, print this many lines from the latest log to the host.

.EXAMPLE
  .\Run-UnrealEditorCmd-CollectLog.ps1 -UProjectPath 'D:\proj\ManteumTower.uproject' `
    -EditorArgs '-run=AngelscriptTest','-unattended','-stdout','-nosplash','-noscreenmessages'

.EXAMPLE
  # Optional secondary gate when editor returns 0 but log still contains a fatal line:
  .\Run-UnrealEditorCmd-CollectLog.ps1 -UProjectPath '.\ManteumTower.uproject' `
    -EditorArgs '-run=AngelscriptTest','-unattended','-stdout' `
    -AlsoFailOnLogPatterns 'Fatal error:','Ensure condition failed'
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $UProjectPath,

    [string] $UnrealEditorCmd,

    [string[]] $EditorArgs = @(),

    [string[]] $AlsoFailOnLogPatterns = @(),

    [int] $TailLogLinesOnFailure = 120
)

$ErrorActionPreference = 'Stop'

$resolved = (Resolve-Path -LiteralPath $UProjectPath).Path
$projectDir = Split-Path -Parent $resolved
$savedLogs = Join-Path $projectDir 'Saved\Logs'

if (-not $UnrealEditorCmd) {
    if ($env:UE_EDITOR_CMD) {
        $UnrealEditorCmd = $env:UE_EDITOR_CMD
    }
    elseif ($env:UE_ENGINE_PATH) {
        $UnrealEditorCmd = Join-Path $env:UE_ENGINE_PATH 'Binaries\Win64\UnrealEditor-Cmd.exe'
    }
    else {
        throw 'Set -UnrealEditorCmd, or UE_EDITOR_CMD, or UE_ENGINE_PATH (to .../Engine).'
    }
}

if (-not (Test-Path -LiteralPath $UnrealEditorCmd)) {
    throw "UnrealEditor-Cmd not found: $UnrealEditorCmd"
}

Write-Host "Running: $UnrealEditorCmd"
Write-Host "  Project: $resolved"
if ($EditorArgs.Count -gt 0) {
    Write-Host "  Args: $($EditorArgs -join ' ')"
}

$beforeLogs = @()
if (Test-Path -LiteralPath $savedLogs) {
    $beforeLogs = @(Get-ChildItem -LiteralPath $savedLogs -Filter '*.log' -ErrorAction SilentlyContinue |
        ForEach-Object { $_.FullName })
}

$p = Start-Process -FilePath $UnrealEditorCmd -ArgumentList (@($resolved) + $EditorArgs) -NoNewWindow -PassThru -Wait
$exitCode = $p.ExitCode
Write-Host "UnrealEditor-Cmd exit code: $exitCode"

$latestLog = $null
if (Test-Path -LiteralPath $savedLogs) {
    $allLogs = @(Get-ChildItem -LiteralPath $savedLogs -Filter '*.log' -ErrorAction SilentlyContinue)
    $newOnes = $allLogs | Where-Object { $beforeLogs -notcontains $_.FullName }
    if ($newOnes.Count -gt 0) {
        $latestLog = $newOnes | Sort-Object LastWriteTime -Descending | Select-Object -First 1
    }
    else {
        $latestLog = $allLogs | Sort-Object LastWriteTime -Descending | Select-Object -First 1
    }
}

if ($latestLog) {
    Write-Host "Latest log: $($latestLog.FullName)"
}
else {
    Write-Host "No .log found under: $savedLogs"
}

if ($exitCode -ne 0 -and $TailLogLinesOnFailure -gt 0 -and $latestLog) {
    Write-Host "---- tail $($latestLog.Name) (last $TailLogLinesOnFailure lines) ----"
    Get-Content -LiteralPath $latestLog.FullName -Tail $TailLogLinesOnFailure
}

$finalCode = $exitCode

if ($AlsoFailOnLogPatterns.Count -gt 0 -and $latestLog -and $exitCode -eq 0) {
    $lines = Get-Content -LiteralPath $latestLog.FullName -ErrorAction SilentlyContinue
    $matched = $false
    foreach ($line in $lines) {
        foreach ($pat in $AlsoFailOnLogPatterns) {
            if ($pat -and $line.IndexOf($pat, [StringComparison]::OrdinalIgnoreCase) -ge 0) {
                Write-Host "AlsoFailOnLogPatterns matched: $pat"
                Write-Host "  $line"
                $matched = $true
            }
        }
    }
    if ($matched) {
        $finalCode = 3
    }
}

exit $finalCode
