#requires -Version 5.1
<#
.SYNOPSIS
  查询 UE 编辑器内 ASApiQuery（HTTP）。供 Agent 优先于 Read/grep Kit content/reference/AS_API 使用。

.DESCRIPTION
  读取工程根下 .as-api-query/instance.json（若存在），否则 127.0.0.1:18080 + /as-api。
  成功时向 stdout 输出 JSON（ConvertTo-Json 深度默认）；失败时非零退出并写 stderr。

.PARAMETER ProjectRoot
  含 .uproject 的工程根（其下应有 .as-api-query/instance.json，编辑器启动后生成）。
  可省略：使用环境变量 AS_API_QUERY_PROJECT_ROOT，或内置常见候选路径。

.PARAMETER Filter
  list_symbols 时的 filter 字符串，如 "DrawDebug"、"System::"、类名前缀。

.PARAMETER Action
  list_symbols 或 list_types。

.PARAMETER HealthOnly
  仅 GET /as-api/health。

.EXAMPLE
  .\Invoke-ASApiQuery.ps1 -ProjectRoot "D:\Workspace\MT\Engine\ManteumTower" -Filter "DrawDebug"
#>
param(
    [string]$ProjectRoot = "",
    [string]$Filter = "System::",
    [ValidateSet("list_symbols", "list_types")]
    [string]$Action = "list_symbols",
    [switch]$HealthOnly
)

$ErrorActionPreference = "Stop"

function Get-InstanceFromProject {
    param([string]$Root)
    if ([string]::IsNullOrWhiteSpace($Root)) { return $null }
    $dir = $Root
    if (-not (Test-Path -LiteralPath $dir -PathType Container)) { return $null }
    $jsonPath = Join-Path $dir ".as-api-query\instance.json"
    if (-not (Test-Path -LiteralPath $jsonPath)) { return $null }
    try {
        $raw = Get-Content -LiteralPath $jsonPath -Raw -Encoding UTF8
        return ($raw | ConvertFrom-Json)
    } catch {
        return $null
    }
}

$candidates = New-Object System.Collections.Generic.List[string]
if (-not [string]::IsNullOrWhiteSpace($ProjectRoot)) { [void]$candidates.Add($ProjectRoot.Trim()) }
if (-not [string]::IsNullOrWhiteSpace($env:AS_API_QUERY_PROJECT_ROOT)) {
    [void]$candidates.Add($env:AS_API_QUERY_PROJECT_ROOT.Trim())
}
# 常见 ManteumTower 布局（可按需增删）
[void]$candidates.Add("D:\Workspace\MT\Engine\ManteumTower")

$inst = $null
foreach ($c in $candidates) {
    $inst = Get-InstanceFromProject $c
    if ($null -ne $inst) { break }
}

$hostName = "127.0.0.1"
$port = 18080
$basePath = "/as-api"
if ($null -ne $inst) {
    if ($inst.host) { $hostName = [string]$inst.host }
    if ($null -ne $inst.port) { $port = [int]$inst.port }
    if ($inst.basePath) { $basePath = [string]$inst.basePath.TrimEnd('/') }
}
if (-not [string]::IsNullOrWhiteSpace($env:AS_API_QUERY_PORT)) {
    $port = [int]$env:AS_API_QUERY_PORT
}

$rootUrl = "http://${hostName}:${port}${basePath}"

try {
    if ($HealthOnly) {
        $r = Invoke-RestMethod -Uri "$rootUrl/health" -Method Get -TimeoutSec 15
        $r | ConvertTo-Json -Depth 20
        exit 0
    }

    $null = Invoke-RestMethod -Uri "$rootUrl/health" -Method Get -TimeoutSec 15

    $bodyObj = [ordered]@{
        schemaVersion = 1
        action        = $Action
        filter        = $Filter
    }
    $body = $bodyObj | ConvertTo-Json -Compress
    $q = Invoke-RestMethod -Uri "$rootUrl/v1/query" -Method Post -ContentType "application/json; charset=utf-8" -Body $body -TimeoutSec 60
    $q | ConvertTo-Json -Depth 30
    exit 0
} catch {
    [Console]::Error.WriteLine("ASApiQuery failed: $($_.Exception.Message)")
    [Console]::Error.WriteLine("Hint: start UE with the project (creates .as-api-query/instance.json), or set AS_API_QUERY_PROJECT_ROOT / AS_API_QUERY_PORT.")
    exit 1
}
