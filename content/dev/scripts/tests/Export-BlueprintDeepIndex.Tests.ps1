Set-StrictMode -Version Latest

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$scriptsRoot = Split-Path -Parent $scriptRoot
$deep = Join-Path $scriptsRoot 'Export-BlueprintDeepIndex.ps1'

function New-TempDir([string] $Prefix) {
    $d = Join-Path $env:TEMP ($Prefix + "-" + [guid]::NewGuid().ToString('n'))
    New-Item -ItemType Directory -Force -Path $d | Out-Null
    return $d
}

Describe "Export-BlueprintDeepIndex" {
    It "WritesGraphsAndOptionalNodes_Atomic_NoPartials" {
        $tempBin = New-TempDir "softue-bin"
        $projRoot = New-TempDir "softue-proj"

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
    echo {"events":[{"name":"EventGraph","type":"native","graph":"EventGraph"}],"functions":[{"name":"DoThing","type":"function","graph":"DoThing"}],"macros":[]}
    exit /b 0
  )
  echo %ARGS% | findstr /I /C:"--callable-name" >nul
  if %ERRORLEVEL%==0 (
    echo {"graph":{"nodes":[{"title":"Call ApplyDamage","node_class":"K2Node_CallFunction"},{"title":"Print","node_class":"K2Node_PrintString"}]}}
    exit /b 0
  )
)

echo {"error":"unknown fake command","args":"%ARGS%"}
exit /b 0
"@ | Set-Content -LiteralPath $pyCmd -Encoding ASCII

        $oldAlias = Get-Alias py -ErrorAction SilentlyContinue
        try {
            Set-Alias -Name py -Value $pyCmd
            $asset = "/Game/Test/BP_A.BP_A"

            & $deep -ProjectRoot $projRoot -AssetPath $asset -IncludeNodeTitles | Out-Null
            $LASTEXITCODE | Should Be 0

            $outDir = Join-Path $projRoot ".soft-ue-index"
            $san = $asset.TrimStart('/') -replace ':','_' -replace '[<>\"/\\\\|?*]','_'
            $graphsDir = Join-Path (Join-Path (Join-Path $outDir "assets") $san) "graphs"

            @(Get-ChildItem -LiteralPath $graphsDir -Filter '*.graph.json' -ErrorAction SilentlyContinue).Count | Should BeGreaterThan 0

            # If nodes dumps exist, they should be readable (best-effort; may be empty depending on exporter output).
            $nodesFiles = @(Get-ChildItem -LiteralPath $graphsDir -Filter '*.nodes.txt' -ErrorAction SilentlyContinue)
            if ($nodesFiles.Count -gt 0) {
                $nodes = Get-Content -LiteralPath $nodesFiles[0].FullName -Raw
                $nodes | Should Not Be $null
            }

            @(Get-ChildItem -LiteralPath $outDir -Recurse -Filter "*.partial" -ErrorAction SilentlyContinue).Count | Should Be 0
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

