Set-StrictMode -Version Latest

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$scriptsRoot = Split-Path -Parent $scriptRoot
$perAsset = Join-Path $scriptsRoot 'Export-BlueprintTextIndex-PerAsset.ps1'

function New-TempDir([string] $Prefix) {
    $d = Join-Path $env:TEMP ($Prefix + "-" + [guid]::NewGuid().ToString('n'))
    New-Item -ItemType Directory -Force -Path $d | Out-Null
    return $d
}

Describe "Export-BlueprintTextIndex-PerAsset" {
    It "WritesPerAssetSummariesAndRollup_Atomic_NoPartials" {
        $tempBin = New-TempDir "softue-bin"
        $outRoot = New-TempDir "softue-out"

        # Fake 'py' so the script doesn't require a running editor.
        $pyCmd = Join-Path $tempBin 'py.cmd'
        @"
@echo off
setlocal EnableExtensions EnableDelayedExpansion

set ARGS=%*

echo %ARGS% | findstr /I /C:"status" >nul
if %ERRORLEVEL%==0 (
  echo {"status":"ok"}
  exit /b 0
)

echo %ARGS% | findstr /I /C:"query-blueprint-graph" >nul
if %ERRORLEVEL%==0 (
  echo %ARGS% | findstr /I /C:"--list-callables" >nul
  if %ERRORLEVEL%==0 (
    echo {"events":[{"name":"BlueprintUpdateAnimation","type":"native","graph":"EventGraph"}],"functions":[{"name":"DoThing","type":"function","graph":"DoThing"}],"macros":[]}
    exit /b 0
  )
)

echo %ARGS% | findstr /I /C:"query-blueprint" >nul
if %ERRORLEVEL%==0 (
  echo %ARGS% | findstr /I /C:"variables" >nul
  if %ERRORLEVEL%==0 (
    echo {"variables":[{"name":"Speed","type":"real"},{"name":"BPC_Anim","type":"object"}]}
    exit /b 0
  )
  echo %ARGS% | findstr /I /C:"functions" >nul
  if %ERRORLEVEL%==0 (
    echo {"functions":[{"name":"UpdateStates"},{"name":"AnimGraph"}]}
    exit /b 0
  )
  echo {"variables":[],"functions":[]}
  exit /b 0
)

echo {"error":"unknown fake command","args":"%ARGS%"}
exit /b 0
"@ | Set-Content -LiteralPath $pyCmd -Encoding ASCII

        $oldAlias = Get-Alias py -ErrorAction SilentlyContinue
        try {
            Set-Alias -Name py -Value $pyCmd

            $assets = @(
                "/Game/Test/BP_A.BP_A",
                "/Game/Test/BP_B.BP_B"
            )

            & $perAsset -ProjectRoot $outRoot -OutDir (Join-Path $outRoot ".soft-ue-index") -OnlyAssets $assets -IncludeCallables:$true | Out-Null
            $LASTEXITCODE | Should Be 0

            $outDir = Join-Path $outRoot ".soft-ue-index"
            (Test-Path -LiteralPath (Join-Path $outDir "blueprints.rollup.txt")) | Should Be $true
            (Test-Path -LiteralPath (Join-Path $outDir "blueprints.rollup.ndjson")) | Should Be $true

            foreach ($a in $assets) {
                $san = $a.TrimStart('/') -replace ':','_' -replace '[<>\"/\\\\|?*]','_'
                $assetDir = Join-Path (Join-Path $outDir "assets") $san
                (Test-Path -LiteralPath (Join-Path $assetDir "summary.txt")) | Should Be $true
                (Test-Path -LiteralPath (Join-Path $assetDir "summary.ndjson")) | Should Be $true
            }

            # No partial files should remain
            @(Get-ChildItem -LiteralPath $outDir -Recurse -Filter "*.partial" -ErrorAction SilentlyContinue).Count | Should Be 0

            # Rollup should include at least one known line
            $roll = Get-Content -LiteralPath (Join-Path $outDir "blueprints.rollup.txt") -Raw
            ($roll -like "*| variable | Speed*") | Should Be $true
            ($roll -like "*| function | *") | Should Be $true
            ($roll -like "*| callable | *") | Should Be $true
        }
        finally {
            if ($oldAlias) {
                Set-Alias -Name py -Value $oldAlias.Definition
            }
            else {
                Remove-Item Alias:py -ErrorAction SilentlyContinue
            }
        }
    }
}

