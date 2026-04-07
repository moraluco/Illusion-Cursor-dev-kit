---
name: as-api-dynamic-query
description: 通过 ASApiQuery 编辑器内 HTTP 服务查询当前会话已注册的 AngelScript 类型/符号（与 SoftUEBridge 无关）。编辑器未开或服务不可用时回落 angelscript-api-query（Kit AS_API / Hazelight）。ManteumTower 已启用插件见 §「ManteumTower 路径」。
---

# AS 动态 API 查询（ASApiQuery）

> **插件内副本**：游戏仓库 `Engine/ManteumTower/Plugins/ASApiQuery/.cursor/skills/as-api-dynamic-query/SKILL.md` 与上游 [UE5-AS-API-Query](https://github.com/moraluco/UE5-AS-API-Query) 同步；随插件分发说明见同目录 **`CursorSkill_分发说明.md`**（在 **ManteumTower** 插件文件夹内）。

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
| 查询 | `POST http://127.0.0.1:<port>/as-api/v1/query`，Body 为 JSON（含 `action`，如 `list_types`、`list_symbols`） |
| `instance.json` 字段 | `host`、`port`、`basePath`（一般为 `/as-api`） |

**无 npm CLI 时**（上游 GitHub 仓库当前**不包含** `tools/as-api-query/`，README 里的 `npm run as-api:query` 需从 AS-learn 等带 `tools` 的仓库另行拷贝）：在**工程根**用 PowerShell 示例：

```powershell
# 端口以 .as-api-query/instance.json 为准，默认 18080
Invoke-RestMethod -Uri "http://127.0.0.1:18080/as-api/health" -Method Get
Invoke-RestMethod -Uri "http://127.0.0.1:18080/as-api/v1/query" -Method Post -ContentType "application/json" -Body '{"schemaVersion":1,"action":"list_types","filter":""}'
```

## 流程（已集成时）

1. 用编辑器打开 **ManteumTower**（非 Commandlet、非无人值守；否则 HTTP 不启动）。
2. 确认存在 **`Engine/ManteumTower/.as-api-query/instance.json`**。
3. 访问 health / POST query（见上表）。
4. **失败时**：回落 **`angelscript-api-query`**（`content/reference/AS_API/` → https://angelscript.hazelight.se/api/）。

## 与 write-angelscript

- 编写 `.as` 时：优先用本服务核对 **当前工程绑定**；静态文档与 Hazelight 用于补充说明。
