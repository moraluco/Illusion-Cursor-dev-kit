---
name: retro-automation-workflow
description: >-
  复盘自动化/TDD/UE/soft-ue-cli 相关工作后，把踩坑与改进写回 Kit（knowledge/dev/rules/skills）并产出可复用小结与 Mermaid 数据流图。
  Use when the user says 复盘、总结经验、迭代工作流、工作流进化、沉淀成 skill、promote pitfalls-inbox，或一段自动化任务结束需要结构化沉淀。
---

# Retro：复盘 → 迭代工作流 → 沉淀

**默认范围**：只迭代 **workflow**（`content/`、`.cursor/skills`、`.cursor/rules`、索引），**不**改业务工程代码，除非用户明确要求扩展范围。

**配套文档**：

- `content/knowledge/15-retro-automation-workflow.md`（套路 + **Mermaid 总览图**）
- `content/knowledge/05-gotchas.md`、`content/knowledge/13-ue-automation-test-playbook.md`、`content/knowledge/07-blueprint-query-workflow.md`
- `content/dev/git-automation.md`、`content/dev/pitfalls-inbox.md`
- 与 **summarize-to-knowledge**、**git-local-p4-workflow**、**ue-automation-test-harness** 互补（本技能侧重「自动化闭环 + 取证 + 提交」的复盘）

---

## 触发语

用户说：**复盘、总结经验、迭代工作流、工作流进化、沉淀成 skill、把 pitfalls-inbox 晋升到 knowledge** 等。

---

## 输入（向用户确认或自行从上下文提取）

| 项 | 说明 |
|----|------|
| **范围** | AS/TDD、Editor-Cmd、soft-ue-cli、蓝图快照、Git/提交、Kit 文档… |
| **仓库** | 项目（ManteumTower）与/或 Kit；各自 `git log` 对照 |
| **验收** | 项目门禁命令（如 `Run-UnattendedTests-Min.ps1 -Mode AS`）或 Kit 脚本测试 |

---

## 执行清单

### 1) 只读回顾

1. `METHODOLOGY.md`、`content/knowledge/README.md`
2. `content/dev/pitfalls-inbox.md`（若有未晋升条目）
3. 相关 knowledge：`05-gotchas`、`07`、`13`、`14`、`15-retro`
4. `content/dev/git-automation.md`
5. **仓库事实**：在**对应根目录**执行 `git log -n 20 --oneline`（及涉及路径的 log），避免文档与提交脱节（技能 **git-local-p4-workflow**）

### 2) 提炼模板

**一条「坑」→ gotcha 行**（写入 `05-gotchas.md` 表格）：

- 现象 → 根因 → 解决 → **预防** → **验证**（命令或检查点）

**一条「步骤」→ dev**（如 `git-automation.md`）：

- 可复制命令块、前置条件、反例

**一条「约定/触发」→ rule 或 skill**：

- Rule：短触发 + 指向 Skill/文档
- Skill：可执行步骤 + 交叉引用，避免与现有技能重复（必要时改 **sync-rules-and-skills**）

### 3) 工作流升级动作（最小集）

- 更新 `05-gotchas.md`（新增行）
- 若涉及门禁/证据：更新 `13-ue-automation-test-playbook.md` 或 `15-retro-automation-workflow.md`
- 若涉及 CLI/蓝图取证：更新 `07-blueprint-query-workflow.md`
- 若涉及提交/拆分：更新 `content/dev/git-automation.md`
- 更新 `content/knowledge/README.md`（若新增 knowledge 文件）
- 从 `pitfalls-inbox` **晋升**的条目：在 inbox 条目标注 **Promote to** 指向

### 4) 验证「升级有效」

- 下一次同类任务：Agent 能 **@** 到正确文档；命令片段**无 BOM/cmd 混用**；取证步骤要求**落地文件**
- 项目侧：门禁仍能通过；失败时有**可定位**的 stdout/关键字（见 `13` 第 4 节）

---

## 输出模板（回复用户）

1. **经验小结**（5–10 条，可执行）
2. **踩坑清单**（按：终端/编码、桥与 CLI、AS 编译与门禁、Git、生成物）
3. **本次写回的文件列表**（路径）
4. **Mermaid**：复制 `content/knowledge/15-retro-automation-workflow.md` 中的 flowchart，或按本轮微调一版

---

## 与 summarize-to-knowledge 的分工

| 场景 | 用哪个 |
|------|--------|
| 用户只说「总结经验」、沉淀 knowledge | **summarize-to-knowledge** |
| 用户强调**复盘自动化闭环、取证、门禁、Git 原子提交、工作流进化** | **retro-automation-workflow**（可先跑本技能，再让 summarize 补索引话术） |

两者可同时：先本技能结构化复盘，再 **summarize-to-knowledge** 做 README 与收尾。

---

## 交叉引用

- 入口不变的 subagents 增效：技能 **subagents-workflow-augmentation**
