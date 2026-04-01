---
name: soft-ue-cli-ue-bridge
description: 通过 soft-ue-cli 与 SoftUEBridge 查询/驱动 UE 编辑器内资产与关卡；读 Blueprint、BehaviorTree、关卡 Actor、图结构等均以本技能为唯一入口；需跑 AS 测试见 angelscript-tdd-agent-iteration；写 AS 见 write-angelscript。
---

# soft-ue-cli 与 SoftUEBridge（UE 编辑器自动化）

在需要**读取或操作编辑器内的蓝图、行为树、关卡、材质、PIE、截图、日志**等时，使用 **soft-ue-cli**（Python）通过本机 HTTP 与 **SoftUEBridge** 插件通信。**不再**使用 BlueprintSnapshot JSON 或任何「导出蓝图快照目录」作为读图来源。

**项目根**：工作区中含 `.uproject` 的目录。**本项目**为 `D:\Workspace\MT\Engine\ManteumTower`。CLI 在终端执行；桥随 **已启动的 Unreal 编辑器**（且已编译并启用 SoftUEBridge）可用。

---

## 1. 安装与自检

```powershell
py -3 -m pip install soft-ue-cli
```

在项目根（示例：`D:\Workspace\MT\Engine\ManteumTower`）：

```powershell
cd D:\Workspace\MT\Engine\ManteumTower
py -3 -m soft_ue_cli check-setup
```

期望：插件文件存在、`.uproject` 已启用 SoftUEBridge、桥可访问。若失败：确认编辑器已启动、端口未被占用，或设置 `SOFT_UE_BRIDGE_PORT` / `SOFT_UE_BRIDGE_URL`（见 `content/dev/soft-ue-cli.md`）。

---

## 2. 与无人值守 / TDD 的边界

- **SoftUEBridge** 在 **UnrealEditor-Cmd**、Commandlet、`-unattended` 等**非交互进程**中**不会**启动 HTTP 服务（见引擎插件中对 `IsRunningCommandlet` / `FApp::IsUnattended()` 的判断）。**不要用 soft-ue-cli 充当 CI 里的「读日志」方案。**
- **无人值守「看 Log」**：用 **`UnrealEditor-Cmd`** 跑测试或 Commandlets；**以进程退出码为主**；日志在**项目目录**下 **`Saved/Logs/*.log`**（时间戳文件名），可加 **`-stdout`** 把关键输出打到控制台；流水线里**归档日志**、失败时 **tail** 尾部。详见 **[content/dev/unattended-ue-automation.md](../../content/dev/unattended-ue-automation.md)**。
- **AngelScript 测试**（`RunAngelscriptTests.ps1`、`AngelscriptTest` Commandlet）按技能 **angelscript-tdd-agent-iteration** 执行，**不**经过本桥。
- 需要**读编辑器内图、关卡内 Actor、PIE 验证**时，必须**交互式编辑器**已运行且桥可用。

---

## 3. 常用命令（读路径）

以下均为 `py -3 -m soft_ue_cli <子命令>`；完整列表以 `py -3 -m soft_ue_cli --help` 与各子命令 `--help` 为准。

| 目的 | 示例 |
|------|------|
| 工程/引擎信息 | `project-info` |
| 关卡与 Actor | `query-level`（可加 class/name 过滤） |
| 蓝图/AnimBP 元数据与变量 | `query-blueprint <资产路径>` |
| 蓝图/材质等**图**与节点 | `query-blueprint-graph <资产路径>` |
| 资产搜索 | `query-asset` |
| Behavior Tree | 作为资产用 `query-blueprint` / `query-asset`（路径指向 BT 资产） |
| 日志 | `get-logs`（可过滤） |
| 截图 | `capture-screenshot` |
| PIE | `pie-session` |
| 调用 BlueprintCallable | `call-function` |

读图、改图、编译、存盘等写操作仅在确认团队流程后使用；详见官方 README 与 `content/dev/soft-ue-cli.md`。

---

## 4. 与 write-angelscript / 代码

- **C++ / AngelScript 源码**仍以项目树与 `content/reference/` 为准。
- 本技能解决 **编辑器内 .uasset 状态**（蓝图图、关卡实例等），与 `.as`/`.cpp` 互补。

---

## 5. 桥不可用时的行为

若 `check-setup` 失败或用户未开编辑器：说明无法通过桥读图；此时优先使用**离线快照/索引 + 源码 + knowledge** 做定位与推理，并明确标注“这不是编辑器内实时事实”。需要确认**最新图结构 / pins / 默认值 / 连线**时，提示用户启动 UE 后再执行桥命令。

> 说明（避免口径冲突）  
> - **在线权威**：soft-ue-cli 查询的是“编辑器内 `.uasset` 的实时状态”，用于最终确认与精确结构（图、pins、默认值、引用等）。  
> - **离线快照**：`BlueprintSnapshot/`、`.soft-ue-index/` 等文本产物用于 **Search/Grep、离线复盘、可提交证据**；但可能滞后于编辑器内最新修改，因此不能替代在线权威。

### 5.1 离线“可 Grep”的蓝图文本快照（推荐）

当目标是“像搜代码一样”全局搜蓝图里的**函数/变量/callables**，优先用 `.soft-ue-index/`（本地缓存，快、可频繁刷新）：

- 全量快速刷新（默认不导节点标题/注释）：`content/dev/scripts/Refresh-BlueprintTextIndex.ps1`
- 结构化（每资产一份）+ 全局汇总：`content/dev/scripts/Export-BlueprintTextIndex-PerAsset.ps1` → `.soft-ue-index/assets/**/summary.*` + `.soft-ue-index/blueprints.rollup.*`
- 增量刷新（保存蓝图后秒级更新）：UE 会把变更写到 `.soft-ue-index/changed_assets.ndjson`，然后运行 `content/dev/scripts/Consume-BlueprintChangeQueue.ps1` 消费队列并只刷新变更资产
- 需要离线看图（pins/links/defaults）时：用 `content/dev/scripts/Export-BlueprintDeepIndex.ps1` 对**单资产**按需导出 `graphs/*.graph.json`

提示：离线快照用于“找位置/候选集/留证”；涉及最新事实与精确结构时以在线 soft-ue-cli 为准（见 `content/knowledge/07-blueprint-query-workflow.md`）。

提示：本项目“启动 UE 并确保能找到 UnrealEditor.exe”的权威入口为技能 **ue-editor-launch**（含路径优先级与桥可达性检查）。

---

## 6. 交叉引用

- 操作步骤与端口：`content/dev/soft-ue-cli.md`
- 启动 UE：技能 **ue-editor-launch**
- Git、提交顺序、长程上下文：技能 **git-local-p4-workflow**
- 经验沉淀：技能 **summarize-to-knowledge**
- 入口不变的 subagents 增效：技能 **subagents-workflow-augmentation**
