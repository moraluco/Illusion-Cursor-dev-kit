# 蓝图快照：供 Agent 理解项目结构

> 本文档面向 **AI/Agent**：如何利用蓝图快照目录快速理解 UE 项目中的蓝图分布、类层次与核心架构，无需打开编辑器或逐个解析 .uasset。

---

## 1. 什么是蓝图快照

- **定义**：将项目中所有蓝图（含 AnimBlueprint）导出为 **JSON 文本** 的集合，便于在 Cursor/IDE 内被搜索、阅读和归纳。
- **生成方式**：使用 BlueprintSerializer 插件，在编辑器中执行 `BP_SLZR.ExportAllBlueprints` 或菜单「Tools → Blueprint Serializer → Export All Blueprints to Snapshot」。
- **默认输出目录**：项目根目录下的 **BlueprintSnapshot**（可在 Project Settings → Plugins → Blueprint Serializer 中修改 Snapshot Export Path）。
- **产物**：每张蓝图一个 `.json` 文件；同目录下还有 **`_index.json`**（总索引），以及可选的 **OVERVIEW.md**、**ARCHITECTURE_*.md**（人工或脚本根据索引生成的概览与架构说明）。

---

## 2. Agent 推荐阅读顺序

1. **先读 `_index.json`**  
   - 了解「有多少张蓝图、是否全部导出成功、每张蓝图在工程中的路径（`blueprintPath`）与导出文件名（若有 `exportFileName`/`summary`）」。
   - 若启用了「Optimize for Agent Readability」，索引中会有 `_schema`、`_agentReadme` 以及每条的 `summary`（name、type、parentClass、nodeCount 等），便于按类型/规模筛选后再决定打开哪些单蓝图 JSON。

2. **若有 OVERVIEW.md**  
   - 通常按模块/路径对蓝图做了分类与数量统计（如 /Game、/EnemyRefactored、/ALS、/Engine），并标出本游戏核心蓝图（如 GM、角色、武器、敌人 AI）。可据此建立「项目骨架」印象。

3. **若有 ARCHITECTURE_*.md（如 ARCHITECTURE_Player_Lin.md）**  
   - 针对某一子系统（如玩家 Lin）的类层次、组件、动画与数据流做了归纳，适合在需要改该子系统时先通读，再按需打开对应蓝图的 JSON 查细节。

4. **按需打开单蓝图 JSON**  
   - 单文件若启用了 Agent 优化，**根对象开头会有 `_agentSummary`**（name、path、type、parentClass、nodeCount、variableCount、functionCount 等），先看这一段再决定是否继续解析全文（metadata、variables、graphs、detailedComponents 等）。

---

## 3. 关键字段速查（_index.json）

| 字段 | 含义 |
|------|------|
| `exportTimestamp` | 快照导出时间 |
| `exportDirectory` | 快照所在目录（绝对或相对路径） |
| `total` / `successCount` / `failCount` | 总数、成功数、失败数 |
| `blueprints` | 数组，每项通常含 `blueprintPath`、`assetName`、`success`；启用 Agent 优化时还有 `exportFileName`、`summary` |
| `_schema`（可选） | 索引格式版本与说明 |
| `_agentReadme`（可选） | 给 Agent 的简短使用说明 |

**定位单蓝图文件**：`exportDirectory` + `exportFileName` = 该蓝图对应的 JSON 文件路径（若索引中有 `exportFileName`）。

---

## 4. 单蓝图 JSON 关键字段速查

| 字段 | 含义 |
|------|------|
| `_agentSummary`（可选） | 根对象开头，摘要：name、path、type、parentClass、nodeCount、variableCount、functionCount、graphCount 等 |
| `blueprintPath` / `blueprintName` | 资产路径与名称 |
| `parentClassName` / `parentClassPath` | 父类名与类路径（如 `/Script/Angelscript.PlayerCharacterBase`） |
| `metadata` / `blueprintInfo` | 类型、命名空间等元信息 |
| `detailedComponents` | 组件列表（name、class、parentComponent、properties 等） |
| `variables` / `detailedVariables` | 变量与详细变量信息 |
| `functions` / `detailedFunctions` | 函数与详细函数信息 |
| `dependencyClosure` | 依赖的类/资产/模块，便于理解蓝图与谁耦合 |

---

## 5. 与 Kit 其他文档的关系

- **如何导出、插件设置、编译与易错点** → [content/dev/editor-tools/blueprint-export-serializer.md](../dev/editor-tools/blueprint-export-serializer.md)、[06-lessons-blueprint-serializer.md](06-lessons-blueprint-serializer.md)、[05-gotchas.md](05-gotchas.md)。
- **快照输出目录约定、是否纳入 reference** → [04-decisions.md](04-decisions.md)；若项目把快照放到 Kit 的 `content/reference/blueprint-exports/`，需在 reference/README 中说明。
- **AngelScript 与 UE 集成** → [03-angelscript-ue.md](03-angelscript-ue.md)；部分蓝图父类可能来自 Angelscript 插件（如 PlayerCharacterBase），在 C++ 中无源码，仅通过插件注册。

---

## 6. 使用建议（给 Agent）

- 回答「项目里有哪些蓝图」「玩家/敌人/武器是谁」「某系统由哪些蓝图组成」时，优先查 **BlueprintSnapshot/_index.json** 和该目录下的 **OVERVIEW.md**、**ARCHITECTURE_*.md**（若存在）。
- 需要某一张蓝图的父类、组件、变量或依赖时，用 **blueprintPath** 或 **exportFileName** 找到对应 JSON，先读 **`_agentSummary`** 再按需读其余字段。
- 快照可能不是最新：若用户刚改过蓝图但未重新导出，以编辑器内与源码为准；可在回答中注明「以下基于 BlueprintSnapshot 导出时间 xxx」。

---

*本文档为 Kit 知识库一部分，供 Cursor/AI 通过 @ 引用以理解基于蓝图快照的项目结构。*
