Set-StrictMode -Version Latest

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$scriptsRoot = Split-Path -Parent $scriptRoot
$startUe = Join-Path $scriptsRoot 'Start-UnrealEditor.ps1'

Describe "Start-UnrealEditor" {
    It "GateSkip_ReturnsObjectAndExit0" {
        $tempDir = Join-Path $env:TEMP ("softue-test-" + [guid]::NewGuid().ToString('n'))
        New-Item -ItemType Directory -Force -Path $tempDir | Out-Null
        $uproject = Join-Path $tempDir "TempTest.uproject"
        '{"FileVersion":3,"Plugins":[]}' | Set-Content -LiteralPath $uproject -Encoding UTF8

        $out = & $startUe -UProjectPath $uproject -MinFreeMemoryGB 9999 -GateTimeoutSec 2 -GatePollSec 1 2>&1
        $code = $LASTEXITCODE

        $code | Should Be 0

        # Find the first object output (ignore host lines / strings)
        $obj = @($out | Where-Object { $_ -isnot [string] } | Select-Object -First 1)
        $obj.Count | Should Be 1

        $obj[0].skipped | Should Be $true
        $obj[0].startedNew | Should Be $false
        $obj[0].pid | Should Be 0
        ([string]$obj[0].skipReason).Length | Should BeGreaterThan 0
    }

    It "Mutex_SerializesStartDecisions_smoke" {
        $jobScript = {
            param($Path)
            $tempDir = Join-Path $env:TEMP ("softue-test-" + [guid]::NewGuid().ToString('n'))
            New-Item -ItemType Directory -Force -Path $tempDir | Out-Null
            $uproject = Join-Path $tempDir "TempTest.uproject"
            '{"FileVersion":3,"Plugins":[]}' | Set-Content -LiteralPath $uproject -Encoding UTF8
            & $Path -UProjectPath $uproject -MinFreeMemoryGB 9999 -GateTimeoutSec 2 -GatePollSec 1 | ConvertTo-Json -Compress
        }

        $j1 = Start-Job -ScriptBlock $jobScript -ArgumentList $startUe
        $j2 = Start-Job -ScriptBlock $jobScript -ArgumentList $startUe
        Wait-Job -Job $j1, $j2 | Out-Null

        $r1 = Receive-Job $j1
        $r2 = Receive-Job $j2
        Remove-Job $j1, $j2 | Out-Null

        $o1 = $r1 | ConvertFrom-Json
        $o2 = $r2 | ConvertFrom-Json

        $o1.skipped | Should Be $true
        $o2.skipped | Should Be $true
        $o1.pid | Should Be 0
        $o2.pid | Should Be 0
    }
}

