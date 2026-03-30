<#
.SYNOPSIS
  Start UnrealEditor.exe for this project (reliable path discovery).

.DESCRIPTION
  This repository uses soft-ue-cli + SoftUEBridge for interactive editor automation.
  soft-ue-cli requires a running UnrealEditor.exe with SoftUEBridge enabled.

  Path discovery order:
    1) $env:UE_EDITOR_EXE
    2) Project fallback: D:\Workspace\MT\Engine\Engine\Engine\Binaries\Win64\UnrealEditor.exe

.EXAMPLE
  powershell -NoProfile -ExecutionPolicy Bypass -File .\Start-UnrealEditor.ps1

.EXAMPLE
  $env:UE_EDITOR_EXE='D:\UE\Engine\Binaries\Win64\UnrealEditor.exe'
  powershell -NoProfile -ExecutionPolicy Bypass -File .\Start-UnrealEditor.ps1 -WaitForBridge
#>
[CmdletBinding()]
param(
    [string] $UProjectPath = 'D:\Workspace\MT\Engine\ManteumTower\ManteumTower.uproject',
    [string] $UnrealEditorExe,
    [switch] $WaitForBridge,
    [int] $WaitTimeoutSec = 180
)

$ErrorActionPreference = 'Stop'

if (-not $UnrealEditorExe) {
    if ($env:UE_EDITOR_EXE) {
        $UnrealEditorExe = $env:UE_EDITOR_EXE
    }
    else {
        $UnrealEditorExe = 'D:\Workspace\MT\Engine\Engine\Engine\Binaries\Win64\UnrealEditor.exe'
    }
}

if (-not (Test-Path -LiteralPath $UnrealEditorExe)) {
    throw "UnrealEditor.exe not found: $UnrealEditorExe (set UE_EDITOR_EXE to override)"
}
if (-not (Test-Path -LiteralPath $UProjectPath)) {
    throw "uproject not found: $UProjectPath"
}

Write-Host "UnrealEditorExe: $UnrealEditorExe"
Write-Host "UProjectPath:   $UProjectPath"

Start-Process -FilePath $UnrealEditorExe -ArgumentList @($UProjectPath) | Out-Null
Write-Host "Started UnrealEditor.exe"

if ($WaitForBridge) {
    $deadline = (Get-Date).AddSeconds($WaitTimeoutSec)
    while ((Get-Date) -lt $deadline) {
        try {
            $out = (py -3 -m soft_ue_cli status 2>&1 | Out-String).Trim()
            if ($out -match '"running"\s*:\s*true') {
                Write-Host "SoftUEBridge: OK"
                exit 0
            }
        }
        catch {
            # ignore and retry
        }
        Start-Sleep -Seconds 2
    }
    throw "SoftUEBridge not reachable within ${WaitTimeoutSec}s (try py -3 -m soft_ue_cli check-setup)"
}

exit 0

