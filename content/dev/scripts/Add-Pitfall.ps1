[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $Title,

    [string] $Where,

    [string] $Evidence,

    [string] $InboxPath
)

$ErrorActionPreference = 'Stop'

Set-StrictMode -Version Latest

if (-not $InboxPath) {
    $scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
    $devRoot = Split-Path -Parent $scriptRoot
    $InboxPath = Join-Path $devRoot 'pitfalls-inbox.md'
}

$resolvedInbox = (Resolve-Path -LiteralPath $InboxPath -ErrorAction SilentlyContinue)
if (-not $resolvedInbox) {
    throw "Pitfalls inbox not found: $InboxPath"
}

$now = Get-Date
$date = $now.ToString('yyyy-MM-dd')
$time = $now.ToString('HH:mm:ss')

$lines = @()
$lines += ""
$lines += "### $date $Title"
$lines += ""
$lines += "- **Symptom / Error**:"
$lines += "- **Where**: " + $(if ($Where) { $Where } else { "" })
$lines += "- **Trigger**:"
$lines += "- **Repro**:"
$lines += "- **Evidence**: " + $(if ($Evidence) { $Evidence } else { "" })
$lines += "- **Hypothesis**:"
$lines += "- **Fix**:"
$lines += "- **How to verify**:"
$lines += "- **Prevention**:"
$lines += "- **Promote to**: (knowledge/dev file)"
$lines += ""
$lines += "> created $date $time by Add-Pitfall.ps1"
$lines += ""

Add-Content -LiteralPath $resolvedInbox.Path -Value $lines -Encoding UTF8
Write-Host "Appended pitfall to: $($resolvedInbox.Path)"

