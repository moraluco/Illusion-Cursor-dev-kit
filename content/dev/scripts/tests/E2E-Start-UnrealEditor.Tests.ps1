Set-StrictMode -Version Latest

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$scriptsRoot = Split-Path -Parent $scriptRoot
$startUe = Join-Path $scriptsRoot 'Start-UnrealEditor.ps1'

function Get-UePids {
    $p = @(Get-Process UnrealEditor -ErrorAction SilentlyContinue)
    if (-not $p) { return @() }
    return [int[]]@($p | Select-Object -ExpandProperty Id)
}

Describe "Start-UnrealEditor (E2E)" -Tags @('E2E') {
    $skipIfRunning = (@(Get-UePids).Count -gt 0)
    if ($skipIfRunning) {
        It "ConcurrentStart_ReusesSamePid" -Skip { }
        return
    }

    It "ConcurrentStart_ReusesSamePid" {
        $before = @(Get-UePids)

        $jobScript = {
            param($Path)
            Set-Location (Split-Path -Parent $Path)
            & $Path -WaitForBridge -WaitTimeoutSec 240 | ConvertTo-Json -Compress
        }

        $j1 = Start-Job -ScriptBlock $jobScript -ArgumentList $startUe
        $j2 = Start-Job -ScriptBlock $jobScript -ArgumentList $startUe
        Wait-Job -Job $j1, $j2 | Out-Null

        $r1 = Receive-Job $j1
        $r2 = Receive-Job $j2
        Remove-Job $j1, $j2 | Out-Null

        $o1 = $r1 | ConvertFrom-Json
        $o2 = $r2 | ConvertFrom-Json

        $o1.pid | Should Be $o2.pid
        ([int]$o1.pid) | Should BeGreaterThan 0

        # At least one should have started the editor for a clean machine.
        (($o1.startedNew -eq $true) -or ($o2.startedNew -eq $true)) | Should Be $true

        $processId = [int]$o1.pid
        try {
            Start-Sleep -Seconds 2
            $after = @(Get-UePids)
            ($after.Count - $before.Count) | Should Be 1
        }
        finally {
            # Cleanup: close the started editor
            $p = Get-Process -Id $processId -ErrorAction SilentlyContinue
            if ($p) {
                $null = $p.CloseMainWindow()
                try { $p.WaitForExit(30000) | Out-Null } catch { }
                if (-not $p.HasExited) { Stop-Process -Id $processId -Force -ErrorAction SilentlyContinue }
            }
        }
    }
}

