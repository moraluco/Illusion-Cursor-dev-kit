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
    [int] $WaitTimeoutSec = 180,

    # Gate: do not start new editors when memory is low / too many already running.
    [int] $MaxEditors = 2,
    [double] $MinFreeMemoryGB = 3,
    [int] $GateTimeoutSec = 300,
    [int] $GatePollSec = 2
)

$ErrorActionPreference = 'Stop'

function New-StartInfo {
    param(
        [bool] $StartedNew,
        [int] $ProcessId,
        [string] $UProject,
        [bool] $Skipped,
        [string] $SkipReason
    )
    return [pscustomobject]@{
        startedNew = $StartedNew
        pid = $ProcessId
        uproject = $UProject
        skipped = $Skipped
        skipReason = $SkipReason
    }
}

function Get-FreeMemoryGB {
    try {
        $os = Get-CimInstance -ClassName Win32_OperatingSystem
        # FreePhysicalMemory is in KB
        if ($null -ne $os.FreePhysicalMemory) {
            return ([double]$os.FreePhysicalMemory) / 1024 / 1024
        }
    }
    catch {
        # ignore
    }
    return $null
}

function Get-UnrealEditorProcesses {
    try {
        # Use CIM to read CommandLine (Get-Process doesn't expose it).
        return @(Get-CimInstance -ClassName Win32_Process -Filter "Name='UnrealEditor.exe'")
    }
    catch {
        return @()
    }
}

function Normalize-PathString([string] $Path) {
    if (-not $Path) { return $null }
    $p = $Path.Trim().Trim('"')
    try {
        $p = (Resolve-Path -LiteralPath $p -ErrorAction Stop).Path
    }
    catch {
        # Keep best-effort.
    }
    return $p.ToLowerInvariant()
}

function Find-ExistingEditorPidForUProject([string] $UProjectPath) {
    $needle = Normalize-PathString $UProjectPath
    if (-not $needle) { return $null }

    foreach ($p in (Get-UnrealEditorProcesses)) {
        $cmd = [string]$p.CommandLine
        if (-not $cmd) { continue }
        $cmdNorm = $cmd.ToLowerInvariant()
        if ($cmdNorm -like "*$needle*") {
            return [int]$p.ProcessId
        }
        # also check quoted form
        $needleQuoted = '"' + $needle + '"'
        if ($cmdNorm -like "*$needleQuoted*") {
            return [int]$p.ProcessId
        }
    }
    return $null
}

function Wait-ForGateOk {
    param(
        [int] $MaxEditors,
        [double] $MinFreeMemoryGB,
        [int] $GateTimeoutSec,
        [int] $GatePollSec
    )

    $deadline = (Get-Date).AddSeconds($GateTimeoutSec)
    while ((Get-Date) -lt $deadline) {
        $procs = @(Get-UnrealEditorProcesses)
        $count = $procs.Count
        $freeGb = Get-FreeMemoryGB

        $memOk = $true
        if ($null -ne $freeGb) { $memOk = ($freeGb -ge $MinFreeMemoryGB) }

        $countOk = $true
        if ($MaxEditors -gt 0) { $countOk = ($count -lt $MaxEditors) }

        if ($memOk -and $countOk) {
            return $true
        }

        $memText = if ($null -ne $freeGb) { ("{0:N2}GB" -f $freeGb) } else { "unknown" }
        Write-Host ("Gate not OK. UnrealEditor count={0} (max<{1}), FreeMem={2} (min>={3}GB). Waiting..." -f $count, $MaxEditors, $memText, $MinFreeMemoryGB)
        Start-Sleep -Seconds $GatePollSec
    }
    return $false
}

function Resolve-BridgeServerUrlForUProject {
    param([Parameter(Mandatory = $true)] [string] $UProjectPath)
    if ($env:SOFT_UE_BRIDGE_URL) { return $env:SOFT_UE_BRIDGE_URL }
    $root = Split-Path -Parent $UProjectPath
    $inst = Join-Path $root '.soft-ue-bridge\instance.json'
    if (Test-Path -LiteralPath $inst) {
        try {
            $j = Get-Content -LiteralPath $inst -Raw | ConvertFrom-Json
            $h = if ($j.host) { [string]$j.host } else { '127.0.0.1' }
            if ($j.port) { return ('http://{0}:{1}' -f $h, $j.port) }
        }
        catch { }
    }
    if ($env:SOFT_UE_BRIDGE_PORT) {
        return ('http://127.0.0.1:{0}' -f $env:SOFT_UE_BRIDGE_PORT)
    }
    return $null
}

function Wait-ForBridgeRunning {
    param(
        [int] $WaitTimeoutSec,
        [Parameter(Mandatory = $true)] [string] $UProjectPath
    )
    $serverUrl = Resolve-BridgeServerUrlForUProject -UProjectPath $UProjectPath
    $deadline = (Get-Date).AddSeconds($WaitTimeoutSec)
    while ((Get-Date) -lt $deadline) {
        try {
            $prev = (Get-Location).Path
            $out = $null
            try {
                # Project may contain ./soft_ue_cli that shadows pip; run full CLI from a neutral cwd when URL is known.
                if ($serverUrl) {
                    Set-Location -LiteralPath $env:SystemRoot
                }
                $base = @('py', '-3', '-m', 'soft_ue_cli')
                if ($serverUrl) { $base += @('--server', $serverUrl) }
                $cmd = $base + @('status')
                $out = (& $cmd[0] $cmd[1..($cmd.Length - 1)] 2>&1 | Out-String).Trim()
            }
            finally {
                Set-Location -LiteralPath $prev
            }
            if ($out -match '"running"\s*:\s*true') {
                return $true
            }
        }
        catch {
            # ignore and retry
        }
        Start-Sleep -Seconds 2
    }
    return $false
}

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

try {
    $mutexName = 'Global\IllusionSoftUEBridge_StartUnrealEditor'
    $mutex = New-Object System.Threading.Mutex($false, $mutexName)
    $got = $false
    try {
        $mutexWaitSec = [Math]::Max(30, $GateTimeoutSec)
        $got = $mutex.WaitOne([TimeSpan]::FromSeconds($mutexWaitSec))
        if (-not $got) {
            throw "Start mutex timeout (${mutexWaitSec}s). Another start decision is still running."
        }

        $existingPid = Find-ExistingEditorPidForUProject -UProjectPath $UProjectPath
        if ($existingPid) {
            Write-Host ("Found existing UnrealEditor for this uproject (pid={0}). Reusing." -f $existingPid)
            $info = New-StartInfo -StartedNew $false -ProcessId $existingPid -UProject $UProjectPath -Skipped $false -SkipReason $null
            Write-Output $info

            if ($WaitForBridge) {
                if (Wait-ForBridgeRunning -WaitTimeoutSec $WaitTimeoutSec -UProjectPath $UProjectPath) {
                    Write-Host "SoftUEBridge: OK"
                    exit 0
                }
                throw "SoftUEBridge not reachable within ${WaitTimeoutSec}s (try py -3 -m soft_ue_cli check-setup)"
            }

            exit 0
        }

        $gateOk = Wait-ForGateOk -MaxEditors $MaxEditors -MinFreeMemoryGB $MinFreeMemoryGB -GateTimeoutSec $GateTimeoutSec -GatePollSec $GatePollSec
        if (-not $gateOk) {
            $reason = "Gate timeout (${GateTimeoutSec}s): UnrealEditor count>=${MaxEditors} or FreeMem<${MinFreeMemoryGB}GB"
            Write-Host ("Skip starting UnrealEditor.exe: {0}" -f $reason)
            Write-Output (New-StartInfo -StartedNew $false -ProcessId 0 -UProject $UProjectPath -Skipped $true -SkipReason $reason)
            exit 0
        }

        # Re-check after waiting (another process may have started the editor meanwhile).
        $existingPid = Find-ExistingEditorPidForUProject -UProjectPath $UProjectPath
        if ($existingPid) {
            Write-Host ("Found existing UnrealEditor for this uproject (pid={0}). Reusing." -f $existingPid)
            $info = New-StartInfo -StartedNew $false -ProcessId $existingPid -UProject $UProjectPath -Skipped $false -SkipReason $null
            Write-Output $info

            if ($WaitForBridge) {
                if (Wait-ForBridgeRunning -WaitTimeoutSec $WaitTimeoutSec -UProjectPath $UProjectPath) {
                    Write-Host "SoftUEBridge: OK"
                    exit 0
                }
                throw "SoftUEBridge not reachable within ${WaitTimeoutSec}s (try py -3 -m soft_ue_cli check-setup)"
            }

            exit 0
        }

        $p = Start-Process -FilePath $UnrealEditorExe -ArgumentList @($UProjectPath) -PassThru
        $processId = [int]$p.Id
        Write-Host ("Started UnrealEditor.exe (pid={0})" -f $processId)
        Write-Output (New-StartInfo -StartedNew $true -ProcessId $processId -UProject $UProjectPath -Skipped $false -SkipReason $null)
    }
    finally {
        if ($got) {
            try { $mutex.ReleaseMutex() | Out-Null } catch { }
        }
        $mutex.Dispose()
    }
}
catch {
    throw
}

if ($WaitForBridge) {
    if (Wait-ForBridgeRunning -WaitTimeoutSec $WaitTimeoutSec -UProjectPath $UProjectPath) {
        Write-Host "SoftUEBridge: OK"
        exit 0
    }
    throw "SoftUEBridge not reachable within ${WaitTimeoutSec}s (try py -3 -m soft_ue_cli check-setup)"
}

exit 0

