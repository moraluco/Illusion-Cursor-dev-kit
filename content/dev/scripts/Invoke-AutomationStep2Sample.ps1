<#
.SYNOPSIS
  Step 2 示例：零 UE / 零 AS 的本地可重复自检（返回 0 = 通过）。

.DESCRIPTION
  用于验证「纯 Coding + Git」自动化习惯；可复制到项目仓库后改为真实检查（lint、单测入口等）。
  约束：本脚本不应调用 UnrealEditor/UnrealEditor-Cmd，也不应依赖 AngelScript。
#>
[CmdletBinding()]
param(
    # Optional: specify repository root for contextual checks/logs.
    [string] $RepoRoot = (Get-Location).Path,

    # Optional: run additional commands (each entry is a full command line).
    [string[]] $Run = @()
)

$ErrorActionPreference = 'Stop'

Write-Host 'Invoke-AutomationStep2Sample: start (no UE/AS)'
Write-Host ("RepoRoot: {0}" -f $RepoRoot)

if (-not (Test-Path -LiteralPath $RepoRoot)) {
    throw "RepoRoot not found: $RepoRoot"
}

# Minimal deterministic checks (extend in project copies).
$commands = @()
$commands += 'git --version'
$commands += 'git status --porcelain'

foreach ($cmd in $commands + $Run) {
    if (-not $cmd) { continue }
    Write-Host ("Run: {0}" -f $cmd)
    cmd.exe /c $cmd | Write-Host
    if ($LASTEXITCODE -ne 0) {
        Write-Host ("FAILED: {0} (exit={1})" -f $cmd, $LASTEXITCODE)
        exit 1
    }
}

Write-Host 'Invoke-AutomationStep2Sample: OK'
exit 0
