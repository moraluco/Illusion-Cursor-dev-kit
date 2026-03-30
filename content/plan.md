# 迭代计划（plan）

根据当前上下文与项目状况，对阶段/里程碑与任务做拆解与进度记录，支撑设计→测试→验证→迭代，并便于生成阶段小结与下一步建议。

---

## 使用说明

- **更新频率**：完成一个小目标或一次验证后，更新对应阶段的「状态」与「最近进展」；可同步更新 [design/](design/)、[dev/](dev/) 中相关文档。
- **阶段小结**：在「迭代记录」中记录验证结果、问题与改进；AI 可根据本文件与 design/dev 给出下一步建议。
- **与 Cursor 配合**：可说「根据 plan 生成本阶段小结」或「阶段 x 已完成，请更新迭代计划并给出下一阶段建议」；也可说「根据 plan 给出当前建议推进的任务」。
- **阶段/任务完成时**：当你说「阶段 x 完成」「任务 xx 已验证」或「本迭代收尾」时，AI 会更新本文件中的状态与迭代记录，并将可沉淀的收获写入知识库或 design/dev。
- **三阶段自动化**：知识库与 Git → 纯 Coding+Git（不含 UE/AS）→ UE+CLI 的递进说明与脚本占位见 [dev/automation-three-steps.md](dev/automation-three-steps.md)。

---

## 阶段/里程碑表

（按本项目实际情况填写阶段名称与顺序）

| 阶段 | 名称 | 状态 | 最近更新 |
|------|------|------|----------|
| 自动化-1 | 文档与 Git（plan + knowledge + 中文提交） | 进行中 | 结构已落地 |
| 自动化-2 | 纯工程验证（不含 UE/AS） | 进行中 | 示例脚本已跑通 |
| 自动化-3 | UE + soft-ue-cli 闭环 | 未开始 | - |
| 0 | （示例） | 未开始 | - |
| 1 | （示例） | 未开始 | - |

**状态可选**：`未开始` | `进行中` | `已完成`

---

## 任务拆解表

| 顺序 | 任务名 | 阶段 | 优先级 | 状态 | 说明 |
|------|--------|------|--------|------|------|
| 1 | 收敛演练：plan / knowledge / git log 对齐 | 自动化-1 | 高 | 进行中 | 见下节「自动化-1」迭代记录 |
| 2 | 跑通 Step2 示例脚本并记入验证结果 | 自动化-2 | 高 | 进行中 | `dev/scripts/Invoke-AutomationStep2Sample.ps1` |
| 3 | soft-ue-cli：`check-setup` 与 UE 0→2 | 自动化-3 | 高 | 未开始 | 见下节「自动化-3」与 soft-ue-cli 技能 |

**状态**：`未开始` | `进行中` | `已完成`

---

## 三阶段自动化开发流程（落地占位）

以下为 **自动化-1 / 自动化-2 / 自动化-3** 的**状态、验证结果与迭代记录**占位；与 [dev/automation-three-steps.md](dev/automation-three-steps.md) 一致。

### 自动化-1：文档与 Git

- **状态**：进行中
- **最近进展**：已在 `plan.md` 建立三节结构与任务表；已增加 `dev/automation-three-steps.md`。
- **下一步**：在**对应仓库根**完成 2～3 次小步提交（中文说明），每步对应一项可验证目标，并用 `git log` 与本节「迭代记录」对齐。
- **验证结果**：（进行中）已具备 plan 三节 + `dev/automation-three-steps.md`；后续以 2～3 次中文提交继续对齐「目标 vs 变更」。
- **迭代记录**：
  - 轮次 1：落地 `plan.md` 里程碑/任务/三节占位，新增 `dev/automation-three-steps.md` 与 Step2 示例脚本、`dev/README` 索引。
  - 轮次 2：两次中文提交收敛——（1）`plan.md` 里程碑与三节占位；（2）`dev/automation-three-steps.md`、Step2 示例脚本与 `dev/README` 索引；可用 `git log -2 --oneline` 对照。
  - 轮次 3：（待填）一次与 `git log -- path` 对照的回顾提交或 tag 说明。

### 自动化-2：纯工程验证（不含 UE/AS）

- **状态**：进行中
- **最近进展**：已在 Kit 内执行 `content/dev/scripts/Invoke-AutomationStep2Sample.ps1`，退出码 0（Windows PowerShell）。
- **下一步**：将脚本拷贝到项目或替换为真实 lint/测试入口；每升一级复杂度更新本节「迭代记录」并中文提交。
- **验证结果**：示例脚本退出码 0；真实项目侧检查待替换脚本后重填。
- **迭代记录**：
  - 层级「最小」：（待填）单文件脚本或配置 + 提交。
  - 层级「中等」：（待填）例如 pre-commit 或纯逻辑单测。
  - 层级「较高」：（待填）非 UE 产物的 CI 或文档管线验证。

### 自动化-3：UE + soft-ue-cli

- **状态**：未开始
- **最近进展**：本节与下方 UE 子阶段表已写入 `plan.md`，便于本机验证后**直接回写**勾选与迭代记录；详见 [dev/automation-three-steps.md](dev/automation-three-steps.md)、技能 **soft-ue-cli-ue-bridge**。
- **下一步**：启动交互式 UE → `py -3 -m soft_ue_cli check-setup` → 按 **UE 0→1→2** 表逐级验证（只读 → 观察闭环）。
- **验证结果**：（待填）各子能力勾选如下。

| UE 子阶段 | 内容 | 状态 |
|-----------|------|------|
| 0 基线 | pip、插件、`check-setup` 通过 | 未开始 |
| 1 只读 | `project-info`、`query-asset` 等 | 未开始 |
| 2 观察闭环 | PIE、`capture-screenshot`（按需） | 未开始 |

- **迭代记录**：（待填）每次验证的命令与结论一句。

---

## 阶段 0：（示例）

- **状态**：未开始
- **最近进展**：
- **下一步**：
- **验证结果**：
- **迭代记录**：

---

## 与设计/开发文档的对应

各阶段对应的设计文档见 [design/](design/)，实现说明见 [dev/](dev/)。更新本文件中的阶段状态时，可一并更新或引用相关 design/dev 文档。

---

## Agent 自动化：UE 桥与 Git（参考阶段）

以下为 Kit 方法论中的**能力阶段**，可在上表任务中拆解或单独跟踪；细节见技能 **soft-ue-cli-ue-bridge**、**git-local-p4-workflow** 与 `content/dev/soft-ue-cli.md`、`content/dev/git-automation.md`。

### UE（soft-ue-cli + SoftUEBridge）

| 阶段 | 能力 |
|------|------|
| 0 基线 | pip、插件、`check-setup` 通过 |
| 1 只读 | `project-info`、`query-asset`、`query-blueprint`、`get-logs` 等 |
| 2 观察闭环 | PIE、`capture-screenshot`、`trigger-input`（按需） |
| 3 编辑闭环 | 编译蓝图、存盘、图编辑（需团队规范） |
| 4 与 CI 边界 | 桥不用于 unattended；AS 测试仍走 Commandlet / **angelscript-tdd-agent-iteration** |

### Git（本地自动化）

| 阶段 | 能力 |
|------|------|
| G0 | 在正确仓库根使用 `git status` / `git log` / `git diff` |
| G1 | 验证通过后再提交；中文 message |
| G2 | 常用 log/diff 参数见 `content/dev/git-automation.md` |
| G3 | 长程上下文：`plan.md` + knowledge + 路径级 `git log` |
