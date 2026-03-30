# 经验总结：蓝图快照与 BlueprintSerializer 插件集成

> 来源：对话记录 [38c38910-e711-4459-b59f-b5e75177295a]，整理自「整理知识库 → 蓝图 AngelScript 重构计划 → 蓝图可读化 → 插件集成与编译修复」全流程。

---

## 1. 目标与背景

- **目标**：用 AngelScript 全面重构蓝图逻辑，蓝图只做数据配置；让 Cursor 能「读」到整个项目以便逐步重构。
- **核心难点**：蓝图逻辑在 `.uasset` 中，Cursor 不可读 → 需先把蓝图导出为** Cursor 可读的文本（如 JSON）**，再谈盘点与迁移。
- **选型**：采用「基于已有项目 BlueprintSerializer」集成，而非从零写插件；在插件上增加快照路径、Tools 菜单一键导出、可选 `_index.json`。

---

## 2. 编译与工程

### 2.1 生成解决方案与 Missing Modules

- **现象**：编辑器提示 "Missing Modules"，无法在引擎运行时编译。
- **做法**：用 **IDE 编译**，不要依赖编辑器内编译。
  - 右键项目 `.uproject` → **Generate Visual Studio project files**。
  - 用生成的 `.sln` 在 VS 中打开，选 **Development Editor** 配置进行 Build。
- **注意**：生成前先关闭 Unreal Editor，否则可能生成不完整。

### 2.2 是否编引擎

- **Epic 安装的引擎**：用「仅项目」的 .sln 生成与编译，只编游戏+插件，不编引擎（动作数在几百级）。
- **引擎源码 + 项目**：第一次或 Rebuild 会编引擎+项目（几千个 action 正常）；**日常开发用 Build，不要随便 Rebuild**，未改动的引擎不会重编。

### 2.3 构建失败与修复（VMNode 未声明）

- **现象**：`缺少类型说明符`、`语法错误: 缺少","`、`"VMNode": 未声明的标识符`，以及插件依赖警告（GameplayAbilities、EnhancedInput 未在 .uplugin 声明）。
- **根因**：
  - 插件用 `#if __has_include("ControlRigBlueprint.h")` 条件包含 RigVM 头；当该 include 失败时 `UEARATAME_HAS_CONTROL_RIG` 为 0。
  - 但 **MakeStableRigVMNodeGuid(const URigVMNode* VMNode)** 未包在 `#if UEARATAME_HAS_CONTROL_RIG` 内，仍被编译 → 使用未定义的 `URigVMNode` 报错。
  - .uplugin 的 `Plugins` 未声明 GameplayAbilities、EnhancedInput，导致构建警告。
- **修复**：
  1. **BlueprintAnalyzer.cpp**：用 `#if UEARATAME_HAS_CONTROL_RIG` / `#endif` 包住整个 `MakeStableRigVMNodeGuid` 函数（其调用点已在 ControlRig 分支内，HAS=0 时不会调用）。
  2. **BlueprintSerializer.uplugin**：在 `Plugins` 中增加 `GameplayAbilities`、`EnhancedInput`，且 `Enabled: true`。
- **不改**：Build.cs、其他已正确包在 `#if UEARATAME_HAS_CONTROL_RIG` 内的代码；「访问被拒绝」的 .msCoverage 问题属环境/权限/杀毒，非代码修改范围。

### 2.4 环境类错误

- **「未能向文件 ... .msCoverageSourceRootsMapping_... 写入 ... 访问被拒绝」**：多为杀毒/权限；可尝试以管理员运行 VS、或将路径加入杀毒排除列表。

---

## 3. 插件使用与测试

- **控制台命令**（Output 或 Ctrl+`）：
  - `BP_SLZR.CountBlueprints` — 统计蓝图数量，先确认插件已加载。
  - `BP_SLZR.ExportSingleBlueprint <路径>` — 导出单个蓝图。
  - `BP_SLZR.ExportAllBlueprints [目录]` — 全量导出；不写目录则用默认 `Saved/BlueprintExports/BP_SLZR_All`。
- **菜单**：Tools → Blueprint Serializer → Serialize Selected Blueprint / Open Export Folder / Settings。
- **建议顺序**：先 CountBlueprints → 再单蓝图导出确认 JSON 正常 → 再全量导出（耗时会随蓝图数增加）。

---

## 4. 与 Kit 的衔接

- **快照输出**：可固定到 Kit 的 `content/reference/blueprint-exports/` 或 `blueprint-dumps/`，在 reference/README 中说明目录与 JSON 结构（可引用 FBS_BlueprintData / Manifest）。
- **设计文档**：`blueprint-to-as-refactor.md` 应包含「蓝图可读化方案与输出目录约定」；阶段 0 前置为：先建「蓝图→文本导出」管线并导出至少一批蓝图到 content，再盘点与分层。

---

## 5. 需求澄清

- **「批量测试脚本」**：若指「导出后验证」（统计文件、检查 Manifest、校验 JSON），可做 PowerShell 等后处理脚本。
- **若指「编辑器内自动测试与导出 log 便于调试」**：需在编辑器内跑（如 Python/Editor Utility 或控制台命令批量执行），并把结果写到 log 或文件，与「导出后验证」区分开，避免实现错位。

---

## 6. 可复用的要点

| 类别       | 要点 |
|------------|------|
| 第三方插件 | 优先参考已有实现（如 BlueprintSerializer），在其上扩展路径/菜单/索引，减少从零开发成本。 |
| 条件编译   | 依赖可选模块（如 ControlRig/RigVM）时，**头文件与使用该类型的函数**都要用同一宏（如 `UEARATAME_HAS_CONTROL_RIG`）包裹，避免「include 失败但函数仍被编译」。 |
| 插件依赖   | Build.cs 里依赖的模块若来自其他插件，应在 .uplugin 的 `Plugins` 中声明，避免构建警告与潜在加载顺序问题。 |
| 引擎源码编 | 日常用 Build；仅当必要再做 Rebuild；想完全不编引擎则用 Epic 安装版引擎 + 仅项目 .sln。 |
| 需求表述   | 「批量测试」需明确是「导出后校验」还是「编辑器内自动化测试+log」，以便给出正确方案。 |

---

## 7. 近期经验：Agent 友好优化与结构文档

### 7.1 目标

让 **Cursor/Agent 能基于蓝图快照快速理解项目结构**，无需逐个打开大 JSON，也不依赖编辑器。

### 7.2 已做优化（BlueprintSerializer 插件侧）

- **`_index.json` 增强**（需开启设置「Optimize for Agent Readability」）：  
  - 增加 `_schema`、`_agentReadme`；  
  - 每条蓝图增加 `exportFileName`、可选 `summary`（name、type、parentClass、nodeCount、variableCount、functionCount），便于 Agent 先扫索引再按需打开文件。
- **单蓝图 JSON**：根对象开头增加 **`_agentSummary`**，Agent 读前几行即可判断是否继续解析全文。
- **Pretty Print**：索引与单蓝图 JSON 均可按设置格式化输出，便于人工与 Agent 阅读。

### 7.2.1 导出文件命名约定（可读 + 最小冲突）

目标是让人类与 Agent **一眼能把 JSON 文件对应回蓝图资产**，同时在批量导出时**避免覆盖**，并尽量保留“目录语义”来辅助理解蓝图类之间的关系（模块/层级/子系统）。

- **默认命名**：`BlueprintName.json`
  - `BlueprintName` 等于蓝图资产名（与 `.uasset` 文件名一致）。
- **重名规避（仅在同一次导出中发生冲突时启用）**：
  1. **优先追加父文件夹名**：`BlueprintName_ParentFolder.json`  
     - 可读、能看出蓝图所在目录，利于按模块梳理与理解关系。
  2. **仍冲突或无法得到父文件夹名**：追加 **4 位短哈希**：`BlueprintName_Hash4.json`  
     - 作为最短兜底，避免把文件名变成不可读的长 ID。
- **落地方式（目录内自解释）**：导出目录自动生成 `README_naming.md`（若不存在才写入），把上述规则写死在快照旁边，避免“规则只在代码里/口头里”导致后续误解。

### 7.3 快照目录内可补充的文档

- **OVERVIEW.md**：按路径/模块统计蓝图数量，列出本游戏核心蓝图（GM、角色、武器、敌人等），便于建立「项目骨架」。
- **ARCHITECTURE_*.md**：针对某一子系统（如玩家 Lin）写清类层次、组件、动画、数据流；结合 `_index.json` 与单蓝图 JSON 的 `parentClass`、`detailedComponents`、`dependencyClosure` 归纳而成。

### 7.4 经验要点

| 要点 | 说明 |
|------|------|
| 先索引后单文件 | Agent 应优先读 `_index.json`（及 OVERVIEW/ARCHITECTURE），再按需打开单蓝图 JSON，避免一次性加载全部。 |
| 摘要前置 | 单蓝图内 `_agentSummary` 放在根对象前面，便于流式/截断读取。 |
| 快照与代码结合 | 架构文档可同时引用快照（父类、组件、依赖）与项目 C++/脚本（若有），例如 Angelscript 的 PlayerCharacterBase 在 C++ 中无源码，需在知识库中说明。 |
| 导出时机 | 快照为某一时刻的导出结果；若用户未重新导出，需在回答中注明「基于快照时间 xxx」。 |

### 7.5 知识库衔接

- **Agent 如何使用蓝图快照** → [07-blueprint-snapshot-for-agent.md](07-blueprint-snapshot-for-agent.md)。  
- **插件使用与 Agent 友好 JSON 细节** → [content/dev/editor-tools/blueprint-export-serializer.md](../dev/editor-tools/blueprint-export-serializer.md)。

---

*文档维护：有新的蓝图可读化/插件集成/编译修复经验可追加到本文件或 05-gotchas.md。*
