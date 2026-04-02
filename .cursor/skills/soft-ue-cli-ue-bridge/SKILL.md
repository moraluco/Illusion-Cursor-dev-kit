---
name: soft-ue-cli-ue-bridge
description: 通过 soft-ue-cli 与 SoftUEBridge 查询/驱动 UE 编辑器内资产与关卡；蓝图事实以 check-setup 成功后的 CLI 为唯一权威；桥不可达时先 ue-editor-launch 或 Start-UnrealEditor.ps1 恢复连接再查；读 Blueprint/BehaviorTree/关卡等均以本技能为唯一入口；AS 测试见 angelscript-tdd-agent-iteration；写 AS 见 write-angelscript。
---

# soft-ue-cli 与 SoftUEBridge（UE 编辑器自动化）

在需要**读取或操作编辑器内的蓝图、行为树、关卡、材质、PIE、截图、日志**等时，使用 **soft-ue-cli**（Python）通过本机 HTTP 与 **SoftUEBridge** 插件通信。

**蓝图“事实”（父类、变量列表、图节点/连线/pins、默认值、引用关系等）的唯一权威来源**：`py -3 -m soft_ue_cli check-setup` **成功**之后的 `query-blueprint` / `query-blueprint-graph` / `query-asset` / `find-references` 等。**不得**把 BlueprintSnapshot、`.soft-ue-index`、或对 `.uasset` 二进制/ASCII 的启发式扫字符串当作已向用户确认的编辑器内事实（离线材料仅可作搜索候选或旁证，且须标注可能滞后）。**不得**用未解析 UObject 格式的原始字节猜测图结构。

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

期望：插件文件存在、`.uproject` 已启用 SoftUEBridge、桥可访问。若 **失败（含 502 / timeout）**：**先恢复桥再查图**——按技能 **ue-editor-launch**（优先使用 Kit 的 `content/dev/scripts/Start-UnrealEditor.ps1` 复用或启动交互式编辑器），待工程加载后再次 `check-setup`；仍失败再排查端口、`SOFT_UE_BRIDGE_URL` / `SOFT_UE_BRIDGE_PORT`、或查看 `Saved/Logs`（见 `content/dev/soft-ue-cli.md`）。**不要**在未尝试恢复桥的情况下，改用不可靠的离线手段冒充“已核实”的蓝图事实。

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

## 5. 桥不可用时的行为（Agent 必须遵守）

1. **先恢复连接，再查事实**：`check-setup` 失败时，**不要**转而用未验证方法（例如对 `.uasset` 做正则/ASCII 扫字符串、猜测父类或节点）作为对用户问题的**确定答案**。应执行：
   - 技能 **ue-editor-launch**；或
   - Kit 脚本 **`content/dev/scripts/Start-UnrealEditor.ps1`**（同工程复用、避免多开，见 `content/dev/soft-ue-cli.md` §自动化）  
   启动或复用**交互式** `UnrealEditor`，加载目标 `.uproject`，等待工程就绪后**再次** `py -3 -m soft_ue_cli check-setup`，成功后再跑 `query-*`。
2. **仍不可达**：明确告知用户当前**无法**通过桥读取编辑器内事实，并给出已尝试的步骤（启动/端口/日志）；可辅以**离线索引仅作搜索候选**，且必须声明**非事实确认**。
3. **离线快照的定位**：`BlueprintSnapshot/`、`.soft-ue-index/` 用于 **Search/Grep、离线复盘、PR 旁证**；**可能滞后**，不能替代在线权威。

### 5.1 离线“可 Grep”的蓝图文本索引（仅用于搜索/候选，非事实终裁）

当目标是“像搜代码一样”全局搜蓝图里的**函数/变量/callables**，可用 `.soft-ue-index/`（需桥在跑过索引脚本或历史产物）：

- 全量快速刷新：`content/dev/scripts/Refresh-BlueprintTextIndex.ps1`
- 结构化（每资产一份）+ 全局汇总：`content/dev/scripts/Export-BlueprintTextIndex-PerAsset.ps1` → `.soft-ue-index/assets/**/summary.*` + `blueprints.rollup.*`
- 增量：`changed_assets.ndjson` + `content/dev/scripts/Consume-BlueprintChangeQueue.ps1`
- 深索引：`content/dev/scripts/Export-BlueprintDeepIndex.ps1` → `graphs/*.graph.json`

**注意**：索引/快照刷新本身也依赖 **Bridge** 调用编辑器；桥不可达时先按 §5 恢复桥，再谈索引刷新。

决策树与取证落地：`content/knowledge/07-blueprint-query-workflow.md`。启动 UE 的权威入口：**ue-editor-launch**（与 `Start-UnrealEditor.ps1` 配合）。

---

## 6. 交叉引用

- 操作步骤与端口：`content/dev/soft-ue-cli.md`
- 启动 UE：技能 **ue-editor-launch**
- Git、提交顺序、长程上下文：技能 **git-local-p4-workflow**
- 经验沉淀：技能 **summarize-to-knowledge**
- 入口不变的 subagents 增效：技能 **subagents-workflow-augmentation**
