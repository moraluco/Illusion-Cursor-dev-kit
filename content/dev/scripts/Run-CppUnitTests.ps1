<#
.SYNOPSIS
  Build and run pure C++ unit tests (no UE).

.DESCRIPTION
  Uses CMake + ctest against `content/dev/cpp-tests/`.
  Intended to run inside Cursor locally without requiring Unreal Engine.

.PARAMETER SourceDir
  CMake source directory. Defaults to the kit's cpp-tests folder.

.PARAMETER BuildDir
  CMake build directory. Defaults to <SourceDir>/build.

.PARAMETER Configuration
  Build configuration (Debug/Release). Defaults to Debug.

.PARAMETER OutDir
  Optional output directory for test reports/logs. If set, a JUnit XML will be written there.
#>
[CmdletBinding()]
param(
    [string] $SourceDir,
    [string] $BuildDir,
    [ValidateSet('Debug', 'Release')]
    [string] $Configuration = 'Debug',
    [string] $OutDir
)

$ErrorActionPreference = 'Stop'

$commonCmakePaths = @(
    $env:CMAKE_EXE,
    'C:\Program Files\CMake\bin\cmake.exe',
    'C:\Program Files (x86)\CMake\bin\cmake.exe'
)

function Find-CMake {
    $cmd = Get-Command cmake -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Path }

    foreach ($p in $commonCmakePaths) {
        if ($p -and (Test-Path -LiteralPath $p)) { return $p }
    }

    $vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
    if (Test-Path -LiteralPath $vswhere) {
        try {
            $installPath = & $vswhere -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath 2>$null
            if ($installPath) {
                $cmake1 = Join-Path $installPath 'Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe'
                if (Test-Path -LiteralPath $cmake1) { return $cmake1 }
            }
        }
        catch {
            # ignore
        }
    }

    return $null
}

function Find-CTest([string] $CMakeExe) {
    $cmd = Get-Command ctest -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Path }

    if ($CMakeExe) {
        $dir = Split-Path -Parent $CMakeExe
        $ct = Join-Path $dir 'ctest.exe'
        if (Test-Path -LiteralPath $ct) { return $ct }
    }

    return $null
}

$kitRoot = Resolve-Path (Join-Path $PSScriptRoot '..\..\..') | Select-Object -ExpandProperty Path
$defaultSource = Join-Path $kitRoot 'content\dev\cpp-tests'

if (-not $SourceDir) { $SourceDir = $defaultSource }
$SourceDir = (Resolve-Path -LiteralPath $SourceDir).Path

if (-not $BuildDir) { $BuildDir = Join-Path $SourceDir 'build' }

Write-Host "C++ tests source: $SourceDir"
Write-Host "C++ tests build:  $BuildDir"
Write-Host "Config:           $Configuration"

if ($OutDir) {
    New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
    Write-Host "OutDir:           $OutDir"
}

$cmakeExe = Find-CMake
if (-not $cmakeExe) {
    throw "cmake not found. Install CMake, or set CMAKE_EXE, or ensure Visual Studio provides cmake."
}
Write-Host "CMake:            $cmakeExe"

  $ctestExe = Find-CTest -CMakeExe $cmakeExe
if (-not $ctestExe) {
    throw "ctest not found. Ensure CMake is installed correctly (ctest.exe should be alongside cmake.exe)."
}
Write-Host "CTest:            $ctestExe"

& $cmakeExe -S $SourceDir -B $BuildDir | Out-Host
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

& $cmakeExe --build $BuildDir --config $Configuration -j | Out-Host
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

$ctestArgs = @('--test-dir', $BuildDir, '--output-on-failure')
if ($Configuration) {
    $ctestArgs += @('-C', $Configuration)
}

Write-Host ("Running: ctest " + ($ctestArgs -join ' '))
& $ctestExe @ctestArgs | Out-Host
$code = $LASTEXITCODE

if ($OutDir) {
    $exe = Join-Path $BuildDir 'cpp_unit_tests.exe'
    if (-not (Test-Path -LiteralPath $exe)) {
        # Multi-config generators may put the exe under a config subfolder.
        $exe = Join-Path (Join-Path $BuildDir $Configuration) 'cpp_unit_tests.exe'
    }

    if (Test-Path -LiteralPath $exe) {
        $junit = Join-Path $OutDir 'cpp-unit-tests.junit.xml'
        & $exe --no-version --reporters=junit --out=$junit --success=true | Out-Null
        Write-Host "Wrote JUnit: $junit"
    }
    else {
        Write-Host "Skip JUnit: cpp_unit_tests.exe not found under build dir."
    }
}

exit $code

