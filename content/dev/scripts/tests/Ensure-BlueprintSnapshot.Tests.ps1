Set-StrictMode -Version Latest

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$scriptsRoot = Split-Path -Parent $scriptRoot
$ensure = Join-Path $scriptsRoot 'Ensure-BlueprintSnapshot.ps1'
$startUe = Join-Path $scriptsRoot 'Start-UnrealEditor.ps1'

function Get-UeCount {
    return @(Get-Process UnrealEditor -ErrorAction SilentlyContinue).Count
}

Describe "Ensure-BlueprintSnapshot" {
    It "GateSkip_DoesNotRunExportAndExit0" {
        $tempDir = Join-Path $env:TEMP ("softue-test-" + [guid]::NewGuid().ToString('n'))
        New-Item -ItemType Directory -Force -Path $tempDir | Out-Null
        $uproject = Join-Path $tempDir "TempTest.uproject"
        '{"FileVersion":3,"Plugins":[]}' | Set-Content -LiteralPath $uproject -Encoding UTF8

        $snapDir = Join-Path $tempDir 'Snapshot'
        $null = & $ensure -ProjectRoot $tempDir -UProjectPath $uproject -SnapshotDir $snapDir -FreshnessHours 0 -MinFreeMemoryGB 9999 -GateTimeoutSec 2 -GatePollSec 1
        $code = $LASTEXITCODE

        $code | Should Be 0

        # Gate skip should not generate snapshot files (directory may exist, but should be empty).
        (Test-Path -LiteralPath $snapDir) | Should Be $true
        @(Get-ChildItem -LiteralPath $snapDir -Recurse -File -ErrorAction SilentlyContinue).Count | Should Be 0
    }

}

Describe "Ensure-BlueprintSnapshot (E2E)" -Tags @('E2E') {
    It "Snapshot_ClosesOnlyWhenStartedNew_startedNew_true" {
        # Ensure should start UnrealEditor itself and close it on exit.
        if (Get-UeCount -gt 0) { return }

        $tempSnap = Join-Path $env:TEMP ("softue-snap-" + [guid]::NewGuid().ToString('n'))
        New-Item -ItemType Directory -Force -Path $tempSnap | Out-Null
        & $ensure -FreshnessHours 0 -NameQuery 'BP_*' -Limit 50 -TimeoutSec 60 -SnapshotDir $tempSnap -IncludeGraphNodes:$false | Out-Null

        Start-Sleep -Seconds 3
        (Get-UeCount) | Should Be 0
    }

    It "Snapshot_DoesNotCloseWhenReusing_startedNew_false" {
        if (Get-UeCount -gt 0) { return }

        $info = & $startUe -WaitForBridge -WaitTimeoutSec 240
        if ($LASTEXITCODE -ne 0) { throw "Start-UnrealEditor failed (exit=$LASTEXITCODE)" }
        $processId = [int]$info.pid
        $tempSnap = Join-Path $env:TEMP ("softue-snap-" + [guid]::NewGuid().ToString('n'))
        New-Item -ItemType Directory -Force -Path $tempSnap | Out-Null

        try {
            & $ensure -FreshnessHours 0 -NameQuery 'BP_*' -Limit 50 -TimeoutSec 60 -SnapshotDir $tempSnap -IncludeGraphNodes:$false | Out-Null
            Start-Sleep -Seconds 2
            (Get-Process -Id $processId -ErrorAction SilentlyContinue) | Should Not Be $null
        }
        finally {
            Stop-Process -Id $processId -Force -ErrorAction SilentlyContinue
        }
    }

    It "ConcurrentSnapshot_PotentialInterference_observational" {
        if (Get-UeCount -gt 0) { return }

        # Start UE once; concurrent snapshot runs should reuse (and not close it).
        $info = & $startUe -WaitForBridge -WaitTimeoutSec 240
        if ($LASTEXITCODE -ne 0) { throw "Start-UnrealEditor failed (exit=$LASTEXITCODE)" }
        $processId = [int]$info.pid

        $jobScript = {
            param($Path, $OutDir)
            Set-Location (Split-Path -Parent $Path)
            & $Path -FreshnessHours 0 -NameQuery 'BP_*' -Limit 30 -TimeoutSec 60 -SnapshotDir $OutDir -IncludeGraphNodes:$false
            return $LASTEXITCODE
        }

        try {
            $d1 = Join-Path $env:TEMP ("softue-snap-" + [guid]::NewGuid().ToString('n'))
            $d2 = Join-Path $env:TEMP ("softue-snap-" + [guid]::NewGuid().ToString('n'))
            New-Item -ItemType Directory -Force -Path $d1 | Out-Null
            New-Item -ItemType Directory -Force -Path $d2 | Out-Null
            $j1 = Start-Job -ScriptBlock $jobScript -ArgumentList $ensure, $d1
            $j2 = Start-Job -ScriptBlock $jobScript -ArgumentList $ensure, $d2
            Wait-Job -Job $j1, $j2 | Out-Null
            $c1 = [int](Receive-Job $j1)
            $c2 = [int](Receive-Job $j2)
            Remove-Job $j1, $j2 | Out-Null

            $c1 | Should Be 0
            $c2 | Should Be 0

            Start-Sleep -Seconds 2
            (Get-Process -Id $processId -ErrorAction SilentlyContinue) | Should Not Be $null
        }
        finally {
            Stop-Process -Id $processId -Force -ErrorAction SilentlyContinue
        }
    }
}

