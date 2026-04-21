---
name: as-api-dynamic-query
description: >-
  P0 / AngelScript API 事实来源：UE 内 ASApiQuery HTTP（当前工程已注册类型/符号）。与 SoftUEBridge 无关。能开 UE 时禁止先用 Kit content/reference/AS_API 或 Hazelight 抢答。仅 UE 不可用时回落 angelscript-api-query。与 rule as-api-dynamic-query-authority 同级约束。
---

# AS 动态 API 查询（ASApiQuery）— **查「有哪些 AS API」的唯一第一入口（P0）**

> **插件内副本**：游戏仓库 `Engine/ManteumTower/Plugins/ASApiQuery/.cursor/skills/as-api-dynamic-query/SKILL.md` 与上游 [UE5-AS-API-Query](https://github.com/moraluco/UE5-AS-API-Query) 同步；随插件分发说明见同目录 **`CursorSkill_分发说明.md`**（在 **ManteumTower** 插件文件夹内）。

## Agent 执行顺序（强制，防「先 grep 本地 AS_API」）

1. **Shell 优先**：在 Kit 根执行（路径按你工作区调整）  
   `powershell -NoProfile -ExecutionPolicy Bypass -File "content/dev/scripts/Invoke-ASApiQuery.ps1" -ProjectRoot "<工程根含 .uproject>" -Filter "<关键词或 System::>"`  
   例（ManteumTower）：`-ProjectRoot "D:\Workspace\MT\Engine\ManteumTower" -Filter "DrawDebug"`  
2. **成功**：根据返回的 JSON 回答「当前工程已注册符号」；需要签名时再配合编译器 / Script-Examples / 绑定源码。  
3. **失败（退出码 1）**：**才**允许按 **angelscript-api-query** Read/grep `content/reference/AS_API/`，且须说明 ASApiQuery 不可用。  
4. **禁止**：在未执行步骤 1 的情况下，用 **Read** 打开 `content/reference/AS_API/API_Docs/*.md` 作为**第一步**。

脚本也可手写等价 HTTP（见下文 PowerShell 示例）；**与 SoftUEBridge 无关**。

## 硬规则（与 angelscript-api-query 的分界）

- **凡能启动 UE 并打开目标工程**：查「当前工程暴露了哪些 AS 类型/全局函数/成员名」时，**必须**使用本技能（HTTP 调 ASApiQuery），**禁止**用 Read/grep **`content/reference/AS_API/`** 或仅凭 Kit 静态文档当作事实来源。
- **仅当**无法开 UE、无 `instance.json`、连接拒绝、或 AngelScript `not_initialized` 等**实在不可用**时，才允许走技能 **angelscript-api-query**（Kit AS_API → Hazelight）。
- 动态查询返回的多为**符号名**（如 `System::DrawDebugLine()`）；完整签名以编译器、Script-Examples、插件绑定为准；必要时离线文档作补充。

## 何时使用

- 需要 **当前工程 + 当前编辑器** 下 AngelScript **已注册类型/符号** 等与运行时绑定一致的信息。
- **不要**通过 SoftUEBridge 的 `/bridge` 查 AS API（本服务独立 HTTP）。

## ManteumTower 路径（本工作区）

| 说明 | 路径 / 地址 |
|------|----------------|
| `.uproject` / 工程根 | `D:\Workspace\MT\Engine\ManteumTower\`（`ManteumTower.uproject`） |
| 插件源码 | `Engine/ManteumTower/Plugins/ASApiQuery/` |
| 运行时实例（编辑器启动后生成） | `Engine/ManteumTower/.as-api-query/instance.json`（已加入 `.gitignore`） |
| 默认监听 | `127.0.0.1:18080`；环境变量 **`AS_API_QUERY_PORT`** 可改端口 |
| Health | `GET http://127.0.0.1:<port>/as-api/health` |
| 查询 | `POST http://127.0.0.1:<port>/as-api/v1/query`，Body 为 JSON（含 `action`，如 `list_types`、`list_symbols`、`filter`） |
| `instance.json` 字段 | `host`、`port`、`basePath`（一般为 `/as-api`） |

**无 npm CLI 时**（上游 GitHub 仓库当前**不包含** `tools/as-api-query/`）：在**工程根**用 PowerShell 示例：

```powershell
# 端口以 .as-api-query/instance.json 为准，默认 18080
Invoke-RestMethod -Uri "http://127.0.0.1:18080/as-api/health" -Method Get
Invoke-RestMethod -Uri "http://127.0.0.1:18080/as-api/v1/query" -Method Post -ContentType "application/json" -Body '{"schemaVersion":1,"action":"list_symbols","filter":"System::"}'
```

## 流程（已集成时）

1. **启动 UE** 并加载工程；等待生成 **`Engine/ManteumTower/.as-api-query/instance.json`**（或你方工程对应路径）。
2. **`GET /as-api/health`** 确认 `ok=true`；再 **`POST /as-api/v1/query`**（`list_types` / `list_symbols` + `filter`）。
3. 若失败：按技能 **ue-editor-launch** 或项目脚本启动编辑器并重试。
4. **仍失败**（无实例、长期 `not_initialized`、纯 CI 无头）：**才**回落 **angelscript-api-query**（Kit AS_API / Hazelight）。

## 与 write-angelscript

- 编写 `.as` 时：**核对「有没有这个 API」** 优先本服务；Docs-UE-Angelscript 与叙事仍查 Kit；**静态 AS_API 仅在 UE 不可用时**作为回退。
