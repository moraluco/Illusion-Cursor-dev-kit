# soft-ue-cli 与 SoftUEBridge（操作备忘）

面向 **Agent/终端**：与 Kit 技能 **soft-ue-cli-ue-bridge** 配套；完整流程以该 SKILL 为准。

## 环境

- Python 3.10+，`httpx` 随 pip 安装。
- CLI 入口（PATH 未配置 Scripts 时推荐）：

```powershell
py -3 -m soft_ue_cli --help
```

## 工程路径（本项目）

- **项目根**（含 `ManteumTower.uproject`）：`D:\Workspace\MT\Engine\ManteumTower`。
- 在**该目录或其子目录**执行 CLI 时，可发现 `.soft-ue-bridge/instance.json`（插件写入，用于端口）。

## 自检

```powershell
cd D:\Workspace\MT\Engine\ManteumTower
py -3 -m soft_ue_cli check-setup
```

## Agent：蓝图事实与桥不可达

- **向用户断言「当前编辑器内」**蓝图父类、图结构、节点/连线、默认值等，**仅**以 `check-setup` **成功**后的 `query-blueprint` / `query-blueprint-graph` 等为准（技能 **soft-ue-cli-ue-bridge**）。
- **`check-setup` 失败**（含 502）：**先**用 **`content/dev/scripts/Start-UnrealEditor.ps1`** 或技能 **ue-editor-launch** 启动/复用交互式 UE，再重试。
- **禁止**用对**原始 `.uasset`** 的二进制扫字符串冒充上述断言的**唯一依据**。**不**禁止 **`BlueprintSnapshot/`、`.soft-ue-index/`** 等脚本导出的正规离线索引与快照（用于搜索/复盘时标注可能滞后即可）。

## 端口与多实例

- 默认 `http://127.0.0.1:8080`。
- 环境变量：`SOFT_UE_BRIDGE_PORT`、`SOFT_UE_BRIDGE_URL`。
- 多开编辑器时指定目标实例的 URL。

## 自动化：避免重复开多个 UE（内存门禁 + 复用 + 自动关闭）

在自动化脚本中，**不要直接 `Start-Process UnrealEditor.exe`**。请使用 Kit 脚本 `content/dev/scripts/Start-UnrealEditor.ps1` 统一管理编辑器生命周期：

- **同工程复用**：如果已存在打开同一个 `.uproject` 的 `UnrealEditor.exe`，脚本会复用，不再重复启动。
- **并发上限 + 内存门禁**：默认最多允许 2 个 UE；当 **可用内存 < 3GB** 时会等待，最多 5 分钟；超时则 **skip（退出码 0，不启动 UE）**。
- **任务后自动关闭**：`Ensure-BlueprintSnapshot.ps1` 在需要时会启动 UE，导出完成后**只关闭本次脚本启动的实例**（不会误关你手动打开的 UE）。

## 自动化测试（Pester）

Kit 提供了 Pester 测试用于验证“门禁/复用/并发”行为：

- **Unit（默认）**：不启动 UE，只测门禁 skip、并发 smoke 等逻辑。
- **E2E（可选）**：会真实启动/关闭 UE，并发触发脚本，验证不多开、不误关。\n  - E2E 用例带 `E2E` tag，若检测到机器上已有 UE 正在运行，会自动 skip，避免打断你的编辑器会话。

运行方式（在 Kit 的 `content/dev/scripts/` 目录下）：

```powershell
# Unit only
powershell -NoProfile -ExecutionPolicy Bypass -File .\Invoke-UEAutomationTests.ps1

# Unit + E2E
powershell -NoProfile -ExecutionPolicy Bypass -File .\Invoke-UEAutomationTests.ps1 -E2E
```

## 常用只读示例

```powershell
py -3 -m soft_ue_cli project-info
py -3 -m soft_ue_cli query-level --limit 30
py -3 -m soft_ue_cli query-blueprint /Game/Path/To/BP --include variables,functions
```

具体参数以 `--help` 为准。

## 在 Cursor 里“全局搜蓝图函数/变量/注释”的做法

### 方式 A：优先用 soft-ue-cli 在线查询（不落盘）

当你想“像搜代码一样搜蓝图”，但不想生成任何文件时，直接用 CLI 的查询能力（输出 JSON）：

```powershell
# 1) 先按名字/路径找到候选蓝图
py -3 -m soft_ue_cli query-asset --class Blueprint --path /Game --query "BP_*" --limit 2000

# 2) 在某个蓝图里按名字过滤函数/变量（只读，快）
py -3 -m soft_ue_cli query-blueprint /Game/Blueprints/BP_Character --include functions --include variables --search "*Health*"

# 3) 找变量用法 / 节点类型（只读，适合定位“在哪里用到了 X”）
py -3 -m soft_ue_cli find-references property /Game/Blueprints/BP_Character --variable-name Health
py -3 -m soft_ue_cli find-references node /Game/Blueprints/BP_Character --node-class K2Node_CallFunction --function-name "ApplyDamage"
```

优势：不需要额外文件、结果更“真”（来自编辑器内 .uasset）。代价：必须开着交互式编辑器。

### 方式 B：生成可 Grep 的本地文本索引（落盘，适合全局 Search/Grep）

Grep/Explore/Search 只能检索**磁盘文本**，蓝图 `.uasset` 是二进制，因此需要把函数/变量/节点标题等导出到 `.ndjson/.txt`。

Kit 提供脚本（运行于 UE 项目根，需桥可用）：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\\content\\dev\\scripts\\Export-BlueprintTextIndex.ps1"
```

产物默认写到项目根下 `.soft-ue-index/`：

- `blueprints.txt`：人类可读、适合 Ctrl+Shift+F / ripgrep
- `blueprints.ndjson`：一行一个 JSON 对象，适合工具二次处理

默认会导出 **Blueprint + AnimBlueprint（ABP_*）** 两类资产；如需自定义可用 `-AssetClasses`（例如只导出 AnimBlueprint：`-AssetClasses AnimBlueprint`）。

如果需要把**注释框/节点标题**也纳入搜索（更慢）：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\\content\\dev\\scripts\\Export-BlueprintTextIndex.ps1" -IncludeGraphNodes
```

提示：为了让 Cursor 能搜到索引文件，不要把 `.soft-ue-index/` 放进 `.cursorignore`；是否提交到 Git 由项目约定决定（通常建议本地缓存，不进库）。

### 方式 B2：结构化索引（每资产一份）+ 全局 rollup（推荐）

当你希望“全局可搜”同时又要**增量更新**（而不是每次重建一个巨型文件）时，使用 per-asset 布局：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\\content\\dev\\scripts\\Export-BlueprintTextIndex-PerAsset.ps1"
```

产物：

- `.soft-ue-index/assets/**/summary.txt|ndjson`：每个蓝图一份摘要（函数/变量/callables）
- `.soft-ue-index/blueprints.rollup.txt|ndjson`：全局汇总（适合 Ctrl+Shift+F 一把梭）

### 方式 B3：保存蓝图后秒级增量更新（队列消费）

编辑器侧会把“已保存的蓝图资产路径”追加写入：

- `.soft-ue-index/changed_assets.ndjson`

然后在需要查询前（或你提示 agent “先刷新快照”时）运行消费脚本：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\\content\\dev\\scripts\\Consume-BlueprintChangeQueue.ps1"
```

它会去重队列，并只刷新变更资产的 per-asset 索引与 rollup。

### 方式 D：按需导出单个蓝图的图 JSON（pins/连线/defaults + 可离线 grep）

当你要找“函数调用点 / 引用关系 / 精确连线细节”，用按需深索引（只导单资产，避免全量慢）： 

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\\content\\dev\\scripts\\Export-BlueprintDeepIndex.ps1" -AssetPath "/Game/Path/To/ABP_Foo.ABP_Foo"
```

可选加 `-IncludeNodeTitles` 生成 `*.nodes.txt`，便于搜注释框/节点标题。

### 方式 C：生成“可提交”的层次化资产快照（推荐：离线可读、可复盘）

当你希望把蓝图/动画蓝图的**完整图细节**（节点、pins、连线、默认值）以及 AI/StateTree 等结构**落盘并提交到项目仓库**时，使用层次化快照脚本：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "<KIT>\\content\\dev\\scripts\\Export-AssetSnapshot.ps1" `
  -ProjectRoot "D:\\Workspace\\MT\\Engine\\ManteumTower" `
  -UProjectPath "D:\\Workspace\\MT\\Engine\\ManteumTower\\ManteumTower.uproject" `
  -SnapshotDir "D:\\Workspace\\MT\\Engine\\ManteumTower\\BlueprintSnapshot" `
  -AssetClasses Blueprint,AnimBlueprint,BehaviorTree,StateTree `
  -Level Full `
  -Force
```

产物默认写到 `BlueprintSnapshot/`：

- `snapshot.meta.json`：生成参数与范围
- `assets_index.ndjson|.txt`：全量资产索引
- `assets/<sanitized_asset_path>/summary.json`：资产摘要（变量/函数/继承/关联等）
- `assets/<...>/graphs/*.graph.json`：Blueprint/AnimBlueprint 每个 callable 的完整图 JSON（含 pins/连线/defaults，可离线重建拓扑与执行链）
- `assets/<...>/behavior_tree.full.json`：BehaviorTree 导出（当前会包含 blackboard 等摘要；若某些结构在 API 中不可读，会在 `limitations` 中说明）
- `assets/<...>/state_tree.full.json`：StateTree 完整结构（若项目里存在 StateTree 资产）

## 与无人值守自动化（CI）的边界

**SoftUEBridge / soft-ue-cli 仅适用于交互式 `UnrealEditor.exe`**：在 `UnrealEditor-Cmd`、Commandlet、`-unattended` 等非交互进程中，桥**不会**启动 HTTP 服务，因此 **CI 不能**用 soft-ue-cli 代替「看日志」。

无人值守时应使用 **`UnrealEditor-Cmd` + 进程退出码 + `Saved/Logs/*.log`（及可选 `-stdout`）**；AngelScript 测试见技能 **angelscript-tdd-agent-iteration**，流水线与日志归档示例见 **[unattended-ue-automation.md](unattended-ue-automation.md)**。

## 验收

- `check-setup` 全部通过。
- 需要读图时：编辑器已运行，日志中有桥监听信息（见引擎输出）。
