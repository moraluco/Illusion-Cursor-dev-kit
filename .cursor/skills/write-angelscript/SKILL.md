---
name: write-angelscript
description: 编写或编辑 AngelScript(.as) 的单一入口：写前查阅 Kit 的 content/reference 与 Script-Examples，遵循 AS 优先与保存即生效；需测试时见 skill angelscript-tdd-agent-iteration；本地无 API/签名时使用 skill angelscript-api-query。
---

# 编写 AngelScript 脚本

在需要**编写或修改 AngelScript（.as）**时按本技能执行（如实现游戏逻辑、武器、UI 或任意 `.as` 文件）。「何时用 AS」由 rule **angelscript-primary-cpp-fallback** 定义；本技能负责**怎么写** AS。

所有路径均相对于 **Kit 根目录**（含本技能与 `content/`）。**项目根**为工作区中另一枚根（代码与资源所在）。

---

## 写代码前必做

### 1. 文档与 API

- 查阅 **Kit** `content/reference/AS_API/`：类、函数、枚举等 API 定义。
- 查阅 **Kit** `content/reference/Docs-UE-Angelscript/`：UE–AS 用法、子系统、组件、委托、网络等。
- 路径与用法见 rule **angelscript-docs-reference**。

### 2. API 未找到时

若在 `content/reference/AS_API` 中未找到某类/函数，或需核对线上签名：

- **使用技能 angelscript-api-query**：先查 Kit 本地 AS_API，未命中再查 https://angelscript.hazelight.se/api/，并将线上新查到的内容写回 `content/reference/AS_API/API_Docs/` 并更新 `API_Index.md`。
- 写 AS 时若提示「使用技能 angelscript-api-query」或「查 API」，即执行该技能，再将结果用于后续编写。不要臆造签名。

### 3. 范例

- 写或改 `.as` 前，查看**项目/引擎**中的 **Script-Examples**（如项目根下 `Engine/Engine/Script-Examples/`：Examples、GASExamples、EnhancedInputExamples、EditorExamples 等）。
- 用于学习 API 用法、绑定方式与最佳实践。

### 4. 可选本地参考

- 若存在 `.cursor/skills/write-angelscript/reference.md` 或 `gotchas.md`，阅读其中的项目级 AS 约定与常见坑（由 **summarize-as-experience** 更新）。

---

## 书写约定

- **AS 优先，C++ 仅必要时**：在 `.as` 中实现；仅当 AS 无法满足（API 未暴露、性能、引擎/插件改动）时再用 C++，并由 AS 调用。
- **保存即生效**：AS 脚本保存后即热重载生效，无需单独「编译」。编辑器中保存 .as 后改动会立即反映（Immediate Hot Reload）；非结构性改动可在运行中热重载。不要建议用户「先编译再运行」；修改 .as 并保存即可验证。仅改 C++ 或引擎/插件时才需编译。
- **Blueprint**：用于资产/数据与父类选择（AS 暴露的类）；核心逻辑不放在 Blueprint 事件图里。需要**读**现有蓝图/图结构时：断言「**当前编辑器内**」状态用技能 **soft-ue-cli-ue-bridge**（`check-setup` 成功后 `query-blueprint` / `query-blueprint-graph`）；桥不可达时先 **ue-editor-launch** 或 **`Start-UnrealEditor.ps1`**。**大范围搜索/复盘**继续使用 `BlueprintSnapshot/`、`.soft-ue-index/`（rule **blueprint-snapshot-search**）。**不要**用**原始 `.uasset` 扫字符串**冒充已确认的编辑器事实。
- **多文件与引用**：**不要使用 `#include`**。UE-AS 会将 `Script/` 下所有 `.as` 一并编译，类型在同一编译单元内自动可见；写 `#include` 会触发 "Unexpected token" 等错误。

更多写法速查与常见坑见本技能目录下的 **reference.md**。

### 调试与屏显打印（`System::PrintString` / `PrintText`）

- **默认用引擎已绑定的 `System::PrintString` 或 `System::PrintText`**（见 Kit `content/reference/AS_API/API_Docs/System.md`），**不要**为「打一行字」去写 C++ 宏、改 Logging 模块或改引擎源码；rule **no-edit-engine-source** 禁止动 `Engine/Engine/`。
- **禁止**在 Tick/高频路径里用**无 Key** 的屏显调用刷屏：未传有效 `Key`（`NAME_None`）时，每次调用都会在屏幕上**叠加**新行，极易淹没视口与日志。
- **每个逻辑条目使用稳定、互不相同的 `FName` Key**（如 `n"MTAnim|Speed"`、`n"BPC|Locomotion"`）：文档说明——若 Key **非空**，同 Key 的屏显消息会被**替换**而非无限堆叠，便于总开关 + 分条目开关的调试 UX。
- 需要时再配合**节流**（如累计 `DeltaTime` 后每 N 秒刷新一次），与 Key 策略一起避免噪声。
- 历史上若文档提到 `PrintToScreenKeyed` 等**插件专用** API，实现屏显时应**优先对齐**上述 `System::PrintString(..., Key)` 语义，避免依赖额外重编 AngelScript 插件的路径，除非需求明确且已纳入构建流程。

### UAnimInstance 与 AnimBP / 组件协作

- 实现 **`UAnimInstance` 子类**（如项目中的 `UMTAnimInstance`）、与 **AnimBP**、**动画组件（BPC）** 分工时：**游戏线程采样 → Cache_ → `BlueprintThreadSafeUpdateAnimation` 只读缓存**，勿在线程安全路径访问 `MovementComp`/未声明 ThreadSafe 的 API；易错表见 **content/knowledge/05-gotchas.md**（ThreadSafe、`GetCurveValue`、主从骨骼网格等）。
- **叙事级索引**（重构顺序、Chooser、BPC 双引用）：**content/knowledge/15-retro-automation-workflow.md** 附录 [UMTAnimInstance + Chooser / MotionMatching](content/knowledge/15-retro-automation-workflow.md#retro-appendix-umt-chooser)。
- **Chooser / PoseSearch 评估**：若在 `Script/` 侧搜不到 `EvaluateChooser` / `ChooserTable` 等绑定，**不要硬撑 AS** — 用 C++（如 `UChooserFunctionLibrary::EvaluateChooserMulti` 包装）再由蓝图或薄层调用；详见上述附录与 gotchas。

---

## 工作流

1. 按上文查阅文档与范例（含 API 未找到时调用 angelscript-api-query）。  
2. 编写或编辑 `.as` 并**保存**。  
3. 在编辑器或 PIE 中验证；仅改 AS 时无需单独编译步骤。  
4. 若用户需要测试或 TDD：按技能 **angelscript-tdd-agent-iteration** 执行（如 RunAngelscriptTests.ps1、退出码、失败迭代）。

---

## 与 angelscript-api-query 的协作

- **本技能**负责：写代码前查 Kit 本地 reference（AS_API、Docs-UE-Angelscript）、书写约定、写法速查、常见坑、输出要求。  
- **angelscript-api-query** 负责：按「先本地后线上（hazelight）」查 API；若从线上查到则写回 `content/reference/AS_API/API_Docs/` 并维护 `API_Index.md`。  
- 写 AS 时若本地无某 API 或需核对签名，即使用技能 **angelscript-api-query**，再将结果用于本技能的编写步骤。

---

## 输出要求

- 生成的 AS 代码应可直接放在项目的 `Script/` 下使用，类型与函数名与 reference/API 一致。  
- 若某 API 在本地 reference 中未找到，先使用技能 **angelscript-api-query** 查本地与线上；若仍无法确认，在代码或回复中注明「需在 reference 或线上 API 确认」，避免臆造签名。  
- 涉及新文件时，给出完整路径（如 `Script/MyActor.as`）。

---

## 清单（供 Agent 自检）

- [ ] 已查阅 `content/reference/AS_API` 与 `content/reference/Docs-UE-Angelscript`（或 rule angelscript-docs-reference）
- [ ] API 未找到或需核对签名时，已使用或提示使用技能 **angelscript-api-query**
- [ ] 已查阅 Script-Examples（如 `Engine/Engine/Script-Examples/`）
- [ ] 已读 write-angelscript/reference.md 或 gotchas.md（若存在）
- [ ] 在 `.as` 中编写/修改，无正当理由不把游戏逻辑放在 C++/Blueprint
- [ ] 已告知用户保存并验证，未要求对仅 AS 改动做「编译」
- [ ] 若需测试，已按技能 angelscript-tdd-agent-iteration 执行
- [ ] 若在 Tick/高频路径做屏显调试：已用 `System::PrintString`/`PrintText` 并为每条逻辑线传入**非空 `Key`**，未用无 Key 调用刷屏
