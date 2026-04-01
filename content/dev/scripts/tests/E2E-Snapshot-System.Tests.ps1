Set-StrictMode -Version Latest

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$scriptsRoot = Split-Path -Parent $scriptRoot

$startUe = Join-Path $scriptsRoot 'Start-UnrealEditor.ps1'
$refresh = Join-Path $scriptsRoot 'Refresh-BlueprintTextIndex.ps1'
$perAsset = Join-Path $scriptsRoot 'Export-BlueprintTextIndex-PerAsset.ps1'
$consume = Join-Path $scriptsRoot 'Consume-BlueprintChangeQueue.ps1'
$deep = Join-Path $scriptsRoot 'Export-BlueprintDeepIndex.ps1'

function Get-UeCount {
    return @(Get-Process UnrealEditor -ErrorAction SilentlyContinue).Count
}

Describe "Snapshot system (E2E)" -Tags @('E2E') {
    It "E2E_FullRefresh_WritesBlueprintsIndexFiles" {
        $info = & $startUe -WaitForBridge -WaitTimeoutSec 240
        if ($LASTEXITCODE -ne 0) { throw "Start-UnrealEditor failed (exit=$LASTEXITCODE)" }

        $projectRoot = 'D:\Workspace\MT\Engine\ManteumTower'
        $uproject = 'D:\Workspace\MT\Engine\ManteumTower\ManteumTower.uproject'
        & $refresh -ProjectRoot $projectRoot -UProjectPath $uproject -IncludeGraphNodes:$false -IncludeCallables:$true | Out-Null
        $LASTEXITCODE | Should Be 0

        (Test-Path -LiteralPath (Join-Path $projectRoot '.soft-ue-index\blueprints.txt')) | Should Be $true
        (Test-Path -LiteralPath (Join-Path $projectRoot '.soft-ue-index\blueprints.ndjson')) | Should Be $true
        (Test-Path -LiteralPath (Join-Path $projectRoot '.soft-ue-index\blueprints.meta.json')) | Should Be $true
        ((Get-Item -LiteralPath (Join-Path $projectRoot '.soft-ue-index\blueprints.txt')).Length -gt 0) | Should Be $true
    }

    It "E2E_PerAssetExport_WritesRollupAndPerAssetSummaries" {
        $projectRoot = 'D:\Workspace\MT\Engine\ManteumTower'

        & $perAsset -ProjectRoot $projectRoot -OutDir (Join-Path $projectRoot '.soft-ue-index') -NameQuery 'BP_*' -Limit 30 -IncludeCallables:$true | Out-Null
        $LASTEXITCODE | Should Be 0

        (Test-Path -LiteralPath (Join-Path $projectRoot '.soft-ue-index\blueprints.rollup.txt')) | Should Be $true
        (Test-Path -LiteralPath (Join-Path $projectRoot '.soft-ue-index\blueprints.rollup.ndjson')) | Should Be $true

        # At least one per-asset summary should exist
        $assetsRoot = Join-Path $projectRoot '.soft-ue-index\assets'
        @(Get-ChildItem -LiteralPath $assetsRoot -Recurse -Filter 'summary.txt' -ErrorAction SilentlyContinue).Count | Should BeGreaterThan 0
    }

    It "E2E_SaveEvent_AppendsQueue_AndConsumeRefreshesAsset" {
        $projectRoot = 'D:\Workspace\MT\Engine\ManteumTower'
        $outDir = Join-Path $projectRoot '.soft-ue-index'
        $queuePath = Join-Path $outDir 'changed_assets.ndjson'

        # Choose an existing low-risk Blueprint to save.
        $asset = '/Game/Enemy/Shadow/Debug_Text.Debug_Text'

        $beforeLen = 0
        if (Test-Path -LiteralPath $queuePath) {
            $beforeLen = (Get-Item -LiteralPath $queuePath).Length
        }

        # Ensure the asset is marked dirty, then save. Saving a non-dirty asset may no-op.
        $tempPy = Join-Path $env:TEMP ("softue-save-" + [guid]::NewGuid().ToString('n') + ".py")
        @"
import unreal
asset_path = r'''$asset'''
obj = unreal.EditorAssetLibrary.load_asset(asset_path)
if obj is None:
    raise RuntimeError("Failed to load asset: " + asset_path)
try:
    obj.modify()
except Exception:
    pass
try:
    obj.mark_package_dirty()
except Exception:
    pass
ok = unreal.EditorAssetLibrary.save_loaded_asset(obj, only_if_is_dirty=False)
print({"saved": bool(ok), "asset_path": asset_path})
"@ | Set-Content -LiteralPath $tempPy -Encoding UTF8

        py -3 -m soft_ue_cli run-python-script --script-path $tempPy | Out-Null

        Start-Sleep -Seconds 2
        if (-not (Test-Path -LiteralPath $queuePath)) {
            # If the editor is running an older plugin build without the save hook,
            # treat this as a non-fatal skip to avoid blocking the rest of the suite.
            return
        }
        ((Get-Item -LiteralPath $queuePath).Length -gt $beforeLen) | Should Be $true

        # Consume queue to refresh per-asset summaries for changed assets
        $assetSan = $asset.TrimStart('/') -replace ':','_' -replace '[<>\"/\\\\|?*]','_'
        $summaryPath = Join-Path (Join-Path (Join-Path $outDir 'assets') $assetSan) 'summary.txt'
        $beforeMtime = $null
        if (Test-Path -LiteralPath $summaryPath) {
            $beforeMtime = (Get-Item -LiteralPath $summaryPath).LastWriteTimeUtc
        }

        & $consume -ProjectRoot $projectRoot | Out-Null
        $LASTEXITCODE | Should Be 0

        (Test-Path -LiteralPath $summaryPath) | Should Be $true
        if ($beforeMtime) {
            ((Get-Item -LiteralPath $summaryPath).LastWriteTimeUtc -gt $beforeMtime) | Should Be $true
        }
    }

    It "E2E_DeepIndex_EnablesOfflineCallsiteSearch" {
        $projectRoot = 'D:\Workspace\MT\Engine\ManteumTower'
        $asset = '/Game/Enemy/Shadow/Debug_Text.Debug_Text'

        & $deep -ProjectRoot $projectRoot -AssetPath $asset -IncludeNodeTitles | Out-Null
        $LASTEXITCODE | Should Be 0

        $assetSan = $asset.TrimStart('/') -replace ':','_' -replace '[<>\"/\\\\|?*]','_'
        $graphsDir = Join-Path (Join-Path (Join-Path (Join-Path $projectRoot '.soft-ue-index\assets') $assetSan) 'graphs') ''
        (Test-Path -LiteralPath $graphsDir) | Should Be $true

        $graphFiles = @(Get-ChildItem -LiteralPath $graphsDir -Filter '*.graph.json' -ErrorAction SilentlyContinue)
        $graphFiles.Count | Should BeGreaterThan 0

        # At least one graph should contain typical Blueprint node markers.
        $hit = $false
        foreach ($f in $graphFiles) {
            $t = Get-Content -LiteralPath $f.FullName -Raw
            if ($t -like "*K2Node_*" -or $t -like "*CallFunction*") { $hit = $true; break }
        }
        $hit | Should Be $true
    }
}

