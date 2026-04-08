#Requires -Version 5.1

<#
.SYNOPSIS
  Unit: guardrail for broken knowledge/doc references.

.DESCRIPTION
  Scans Kit text files for references to `content/knowledge/*.md` and asserts the referenced files exist.
  This prevents Skill/Rule/Docs entrypoints from drifting into broken links.
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Describe "Knowledge references" -Tag "Unit" {
  It "All referenced content/knowledge/*.md files exist" {
    $kitRoot = (Resolve-Path (Join-Path $PSScriptRoot "..\\..\\..")).Path
    $knowledgeRoot = Join-Path $kitRoot "content\\knowledge"

    # Files we scan (keep small; focused on entrypoints).
    $scan = @(
      (Join-Path $kitRoot ".cursor\\rules"),
      (Join-Path $kitRoot ".cursor\\skills"),
      (Join-Path $kitRoot "content\\dev"),
      (Join-Path $kitRoot "content\\knowledge")
    )

    $patterns = @(
      'content/knowledge/([0-9]{2}-[A-Za-z0-9._-]+\.md)',
      'content\\knowledge\\([0-9]{2}-[A-Za-z0-9._-]+\.md)',
      '\[([0-9]{2}-[A-Za-z0-9._-]+\.md)\]\([0-9]{2}-[A-Za-z0-9._-]+\.md\)'
    )

    $refs = New-Object System.Collections.Generic.HashSet[string]
    foreach ($root in $scan) {
      if (-not (Test-Path -LiteralPath $root)) { continue }
      Get-ChildItem -LiteralPath $root -Recurse -File -ErrorAction SilentlyContinue |
        Where-Object { $_.Extension -in @(".md",".mdc",".ps1") } |
        ForEach-Object {
          $txt = Get-Content -LiteralPath $_.FullName -Raw -ErrorAction SilentlyContinue
          if (-not $txt) { return }
          foreach ($pat in $patterns) {
            foreach ($m in [regex]::Matches($txt, $pat)) {
              # pattern group 1 is filename if captured; fallback to whole match
              $fn = $null
              if ($m.Groups.Count -ge 2 -and $m.Groups[1].Value) { $fn = $m.Groups[1].Value }
              else { continue }
              [void]$refs.Add($fn)
            }
          }
        }
    }

    $missing = @()
    foreach ($fn in $refs) {
      $p = Join-Path $knowledgeRoot $fn
      if (-not (Test-Path -LiteralPath $p)) {
        $missing += $fn
      }
    }

    if ($missing.Count -ne 0) {
      throw ("Missing knowledge docs referenced by Kit entrypoints: {0}" -f ($missing -join ", "))
    }
  }
}

