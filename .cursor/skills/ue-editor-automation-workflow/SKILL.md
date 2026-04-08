---
name: ue-editor-automation-workflow
description: >-
  通用“进 UE 做自动化测试/验证”工作流：选择 Editor+Bridge vs Editor-Cmd，启动与等待、并发/资源治理、证据采集与清理；并提供 Pester Unit/E2E 测试入口。（术语「Harness」在本 Kit 中专指工作区约束 Agent 的整体环境，见规则 harness。）
---

# UE 编辑器自动化工作流（通用）

本技能用于任何“进 UE 做自动化测试/自动化验证”的任务，目标是：**稳定、可复盘、可并发控制、可清理**。

---

## 0) 先判定：能否“不进 UE”（最省时也最稳）

很多验证不需要 UE：例如纯脚本逻辑、落盘与原子写入、纯 C++ 工具库单测。此类任务优先在 Cursor 内完成：

- 统一入口：`content/dev/scripts/Run-LocalTests.ps1`
  - L0（可选）：Lint/静态检查（best-effort）
  - L1：Pester Unit（默认不跑 `-Tag E2E`，不启动 UE）
  - L2：纯 C++ Unit（CMake + doctest，不进 UE）
  - L3：可选 E2E（需要 UE 时才启用 `-IncludeE2E`）
- 纯 C++ 单独入口：`content/dev/scripts/Run-CppUnitTests.ps1`
- 说明文档：
  - `content/dev/no-ue-first-tests.md`
  - `content/dev/cpp-tests.md`

只有当任务**确实需要 UE 能力**（资产查询/蓝图图结构/PIE/截图/引擎子系统等）才进入下一节选模式。

## 1) 再选“进 UE”模式（最重要）

### A. 交互式 Editor + SoftUEBridge（soft-ue-cli）

适合：查询/导出编辑器内资产数据、**蓝图/AnimBP 图结构（事实）**、PIE、截图、关卡 Actor 查询等。\
入口参考：技能 `soft-ue-cli-ue-bridge` 与 `content/dev/soft-ue-cli.md`；**单图全 JSON vs 批量图结构/语义**的分流见 **`content/knowledge/07-blueprint-query-workflow.md`**（§1.1.2：优先 `bp-index-refresh` + L2 chunk，避免脚本内对 `query-blueprint-graph` 逐资产循环）。蓝图事实**仅**在 `check-setup` 成功后成立；桥不可达时先 **`Start-UnrealEditor.ps1`** 或 **ue-editor-launch** 恢复连接。

### B. 无人值守 UnrealEditor-Cmd（Commandlet）

适合：CI/夜间构建/无人值守测试，以**退出码 + Saved/Logs**为主。\
入口参考：`content/dev/unattended-ue-automation.md`。

---

## 2) 启动与可达性（Editor 模式）

- 统一用脚本 `content/dev/scripts/Start-UnrealEditor.ps1` 启动与复用编辑器：
  - 同工程复用
  - 门禁（并发上限 + 内存阈值）
  - 强互斥（避免并发双开）
  - 输出 `startedNew/pid/skipped`
- 需要桥时加 `-WaitForBridge` 并设置合理超时。

---

## 2.1 资产写操作的落盘策略（必须项）

在 Editor+Bridge 模式下，任何对资产的写操作都必须遵守：

- **做完就 Save**：reparent、增删变量、改蓝图图节点/连线、改 defaults、rename/remove graph 等，立刻保存资产（并在 compile 通过后再保存一次）。
- **按里程碑 Save**：一次复杂改动拆成多个“可恢复点”，每个恢复点都保存，避免 UE 闪退导致整段返工。
- **失败即回滚并保存**：如果 reparent/compile 失败，为保证工程可用，应回滚到可编译状态并保存（避免留下半残资产）。

---

### 2.2 C++ 编译（ManteumTower / 游戏模块与插件）

与 **仅改 AngelScript**（保存即热重载）不同：改 **`.cpp` / `.h` / `Build.cs` / `.uproject` 插件开关** 后必须走 **正式 C++ 编译** 才能加载新符号。

**约定（本团队 / ManteumTower）**

1. **不要用编辑器 Live Coding 当作「唯一可信」的 C++ 验证**  
   Live Coding 易失败、与 **UnrealBuildTool（UBT）** 冲突：若提示 `Unable to build while Live Coding is active`，须 **关闭 UE** 或 **关闭 Live Coding**（例如 **Ctrl+Alt+F11**）后再编。  
   **Agent**：不要默认建议用户依赖 Live Coding 完成项目侧 C++ 变更的验收；需要「编过」时以 **VS 或 UBT** 为准。

2. **Visual Studio：只编游戏项目，不要整解决方案**  
   在解决方案资源管理器中 **仅生成** **Games → ManteumTower**（对应目标一般为 **`ManteumTowerEditor` + `Development_Editor` + `x64`**），**避免**无必要地「生成整个解决方案」（引擎/ShaderCompileWorker 等），除非用户明确要求。

3. **命令行等价（Agent 自动化 / CI）**（需在 **未占用 Live Coding** 时执行）  
   使用引擎 `Build.bat` 只打 **ManteumTowerEditor** 目标，例如：

   ```text
   <EngineRoot>\Build\BatchFiles\Build.bat ManteumTowerEditor Win64 Development -Project="<...>\ManteumTower.uproject" -WaitMutex
   ```

4. **编过后**  
   若改了 **编辑器插件**（如 SoftUEBridge）或 **模块加载顺序**，通常需 **重启 UE** 才能与 soft-ue-cli / 桥行为一致；不要假设 Live Coding 已覆盖所有二进制边界。

5. **头文件**  
   使用 `FObjectPreSaveContext` 等类型时，若仅前向声明会报 **C2027**，需包含定义所在头文件（例如 **`#include "UObject/ObjectSaveContext.h"`**）。以引擎/插件 **Public** 头为准，勿猜不存在的路径。

---

## 3) 并发与资源治理（必须项）

- **不要多开**：互斥拿不到不要继续启动（等待或失败）。
- **输出隔离**：并发任务不要写同一套输出文件；用独立 OutDir/临时目录。
- **生命周期**：只关闭“本次脚本启动”的 UE（基于 `startedNew + pid`）。

---

## 4) 如何写“可复盘”的自动化

建议每个自动化脚本都输出以下信息（stdout 即可）：

- UnrealEditor 路径、UProject 路径
- pid、是否 startedNew、是否 skipped（原因）
- OutDir / 产物路径
- 失败时：最后的错误与重试次数

---

## 5) 自动化测试（Pester）

入口脚本：

- `content/dev/scripts/Invoke-UEAutomationTests.ps1`

默认仅跑 Unit；使用 `-E2E` 跑真实启动/关闭 UE 的用例。\
详见 `content/dev/ue-automation-tests.md`。

---

## 6) 复盘与工作流进化（可选）

一段自动化验证 / Editor-Cmd / 证据采集任务结束后，若要把「坑」与改进**写回 Kit**并形成可重复套路：

- 技能 **retro-automation-workflow**
- 文档 `content/knowledge/15-retro-automation-workflow.md`（含 Mermaid：取证 → 门禁 → 提交）
- 易错点摘要：`content/knowledge/05-gotchas.md`、`content/knowledge/13-ue-automation-test-playbook.md` § Editor-Cmd + AngelScript

