Set-StrictMode -Version Latest

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$scriptsRoot = Split-Path -Parent $scriptRoot

function New-TempDir([string] $Prefix) {
    $d = Join-Path $env:TEMP ($Prefix + "-" + [guid]::NewGuid().ToString('n'))
    New-Item -ItemType Directory -Force -Path $d | Out-Null
    return $d
}

Describe "Consume-BlueprintChangeQueue" {
    It "DedupesAndIgnoresMalformedLines_AndKeepsNewQueueWrites" {
        # Build an isolated fake kit root so Consume-BlueprintChangeQueue calls our fake exporter.
        $kitRoot = New-TempDir "softue-kit"
        $kitScripts = Join-Path $kitRoot "content\\dev\\scripts"
        New-Item -ItemType Directory -Force -Path $kitScripts | Out-Null

        $consumeSrc = Join-Path $scriptsRoot "Consume-BlueprintChangeQueue.ps1"
        $consumeDst = Join-Path $kitScripts "Consume-BlueprintChangeQueue.ps1"
        Copy-Item -LiteralPath $consumeSrc -Destination $consumeDst -Force

        $fakeExporter = Join-Path $kitScripts "Export-BlueprintTextIndex-PerAsset.ps1"
        $fakeLog = Join-Path $kitRoot "exporter.called.json"
        $queueMarker = '{"asset_path":"/Game/NewWrites/BP_New.BP_New","asset_class":"Blueprint","saved_at":"2099-01-01T00:00:00Z"}'

        @"
param(
  [string]`$ProjectRoot,
  [string]`$OutDir,
  [string[]]`$OnlyAssets,
  [switch]`$IncludeCallables,
  [string]`$ServerUrl,
  [int]`$TimeoutSec
)

`$payload = [ordered]@{
  ProjectRoot = `$ProjectRoot
  OutDir = `$OutDir
  OnlyAssets = @(`$OnlyAssets)
  IncludeCallables = [bool]`$IncludeCallables
  ServerUrl = `$ServerUrl
  TimeoutSec = `$TimeoutSec
}
(`$payload | ConvertTo-Json -Depth 10) | Set-Content -LiteralPath "$fakeLog" -Encoding UTF8

# Simulate UE writing to the queue while we are processing (new file should exist after move)
`$queuePath = Join-Path `$OutDir 'changed_assets.ndjson'
New-Item -ItemType File -Path `$queuePath -Force | Out-Null
Add-Content -LiteralPath `$queuePath -Encoding UTF8 -Value '$queueMarker'

exit 0
"@ | Set-Content -LiteralPath $fakeExporter -Encoding UTF8

        # Create a fake project root with a queue file.
        $projectRoot = New-TempDir "softue-proj"
        $outDir = Join-Path $projectRoot ".soft-ue-index"
        New-Item -ItemType Directory -Force -Path $outDir | Out-Null

        $queuePath = Join-Path $outDir "changed_assets.ndjson"
        @(
            '{"asset_path":"/Game/A/BP_A.BP_A","asset_class":"Blueprint","saved_at":"2026-01-01T00:00:00Z"}'
            '{"asset_path":"/Game/A/BP_A.BP_A","asset_class":"Blueprint","saved_at":"2026-01-01T00:00:01Z"}'
            'not json'
            '{"asset_path":"/Game/B/BP_B.BP_B","asset_class":"Blueprint","saved_at":"2026-01-01T00:00:02Z"}'
        ) | Set-Content -LiteralPath $queuePath -Encoding UTF8

        # Run consume
        & $consumeDst -ProjectRoot $projectRoot -IncludeCallables:$true | Out-Null
        $LASTEXITCODE | Should Be 0

        # Fake exporter should have been called with unique assets A,B (order not guaranteed).
        (Test-Path -LiteralPath $fakeLog) | Should Be $true
        $called = (Get-Content -LiteralPath $fakeLog -Raw | ConvertFrom-Json)
        @($called.OnlyAssets | Sort-Object) | Should Be @("/Game/A/BP_A.BP_A", "/Game/B/BP_B.BP_B")

        # New writes should still be present in the (re-created) queue file.
        (Test-Path -LiteralPath $queuePath) | Should Be $true
        $queueNow = Get-Content -LiteralPath $queuePath -Raw
        ($queueNow -like "*BP_New.BP_New*") | Should Be $true
    }
}

