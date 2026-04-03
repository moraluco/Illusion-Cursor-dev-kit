---
name: design-doc-code-parity
description: >-
  Code-equivalent `*.design.md`: **author** from source, **parity** spec vs code, execute end-of-doc
  **plan** sections (with ref gates; **remove completed plans** from doc), split deferred docs, TDD + atomic Chinese commits.
  Use for UMTAnimInstance.design.md-style specs, strict equivalence, `.movement-deferred.design.md`,
  or design-doc-driven iteration with write-angelscript / angelscript-tdd-agent-iteration.
---

# 设计文档与代码严格等效（Design-doc parity）

当仓库里存在与源码**同目录**、可版本管理的 **`.design.md`**（或可执行逻辑规格段落）时，把它当作**改代码的契约**：实现行为、顺序、阈值、分支与文档**严格等效**；文档若滞后，要么更新文档，要么改代码，**二者不得长期矛盾**。

本技能管 **「规格 ↔ 实现」差分、文档撰写/拆分、末尾计划执行、验收与提交节奏**；通用 AS 写法见 **write-angelscript**；跑测与失败迭代见 **angelscript-tdd-agent-iteration**；中文原子提交见 **git-commit-zh**；ManteumTower 等多仓路径与 Git 根见 **git-local-p4-workflow**。蓝图/索引大范围搜索见 **blueprint-snapshot-search**；断言编辑器内蓝图事实见 **soft-ue-cli-ue-bridge**。

---

## 1. 何时启用

- 用户要求：按 `*.design.md` 改代码、与 design **严格等效**、对齐规格、消除 §「规格与实现差异」等。
- **撰写或更新**与代码等效的设计文档、从 `.as` 反写规格、**拆分** `*.movement-deferred.design.md` 类迁出文档。
- 用户要求：按文档末尾 **「计划」** 小节（§8 / §9 / §15 等）**分阶段改代码/测试/正文**。
- 存在**拆分文档**时（例如主文档只写「动画前数据」，导航/MoveTo 在 `*.movement-deferred.design.md`）：先读文首**范围说明**，避免把已迁出规格误当成「当前仍须实现的代码」。

---

## 2. 标准步骤（顺序固定）

### 2.1 读规格、定范围

1. 打开目标 **`*.design.md`**（及链接到的拆分文档、仓库根计划如 `plan-*.md` 若文内引用）。
2. **若将执行文档末尾「计划」小节**：必须先**合并阅读**——主 `.design.md` + 全部 **拆分文档** + 文内链接的 **`plan-*.md`**——再分阶段对照代码；禁止只读主文档就删成员或改 Tick。
3. 标出：**哪些章节对应当前 `.as` 必须满足**；哪些标注为「已迁出 / 待阶段 X / 仅现状描述」——后者**不**作为单独删代码的依据，除非同步执行对应计划（避免双轨行为缺失）。

### 2.2 对照实现

1. 打开对应源码（如 `UMTAnimInstance.as`、`BPC_AnimComponent.as`）。
2. 按文档结构逐项对照：**初始化顺序**、**每帧/ Tick 子序列**、**公开函数公式与常量**、**默认曲线名/属性表**、**调试与节流**。
3. 记录差异表：| 文档条款 | 代码位置 | 一致？ | 处理（改代码 / 改文档 / 收窄注释） |

### 2.3 分类处理

| 类型 | 动作 |
|------|------|
| 行为与文档不一致 | **改代码**（或先改测试再改代码），使与文档一致 |
| 文档落后于已合并实现 | **改 `.design.md`**，使与代码一致（若用户以文档为权威则反过来改代码） |
| 文件头注释与实现不一致，但 design 已写明「当前实现」 | **收窄注释**或改实现；与 **angelscript-tdd-agent-iteration** 跑测后提交 |
| 文档写明「规格与实现差异（二选一）」 | 与用户或 § 说明选定权威侧，**同步**另一侧（代码 + design 同一提交或连续原子提交） |

### 2.4 TDD 与门禁

1. **Git 工作目录**：游戏工程在 **`Engine\ManteumTower`**（或项目约定的 `.uproject` 仓库根），勿在错误层级提交（见 **git-local-p4-workflow**）。
2. **基线**：在含 `ManteumTower.uproject` 的目录执行 `.\Scripts\RunAngelscriptTests.ps1`，确认 **PASS** 后再改行为。
3. **改行为**：先调整/新增 `Script/Test/` 或模块内测试断言（若项目已有约定），再改实现，再跑到 **退出码 0**（细节见 **angelscript-tdd-agent-iteration**）。
4. **仅注释/文档**：仍建议跑一遍 AS 测试作为**回归门禁**（编译与脚本完整性）。

### 2.5 原子化验收提交

1. **一次提交一个可验收点**（例如：仅 UMT 调试路径、仅 BPC 某函数、仅文档对齐）。
2. **Subject 中文 UTF-8**，可检索、避免模糊词（见 **git-commit-zh**）。
3. **Kit 与项目分仓**：改 Kit 文档与改 ManteumTower 脚本**不要**混在同一 commit。

---

## 3. 与拆分文档、主计划配合

- **主 `.design.md` 收窄**后，若代码仍调用已「迁出」章节中的函数（例如 Tick 仍调 `Movement()`），以**主 design 文首说明**为准：可能标注为**现状** + **后续瘦身见 `plan-*.md`**。此时**不**擅自删除调用，除非同时落地替代方案（AI 控制器、虚拟 MoveTo 等）。
- 迁出文档（如 `*.movement-deferred.design.md`）用于**对照与未来重构**，不是「立刻删实现」的单独指令。

---

## 4. 从代码撰写或更新 `.design.md`（Authoring）

1. **通读**目标 `.as`（及相关类），按 **§6 附录** 结构起草或**增量更新**现有 `.design.md`。
2. **不发明**代码中不存在的分支、阈值或 API；若仅存在于注释，在文档中标注 **「规格与实现差异」** 或推动收窄注释（与 §2.3 一致）。
3. **拆分前**：先明确**主文档服务的数据链**（例如「仅 Anim 前数据 / 与 `UMTAnimInstance` 的契约」），再把无关切面迁到 **`<Base>.<concern>-deferred.design.md`**，主文档文首写清范围与链接。
4. 复杂类可保留 **变更记录**表（日期/摘要/可选 commit 指针）；**勿**在正文长期保留已执行完毕的整段「计划」正文（见 §5.3）。

---

## 5. 执行文档末尾「计划」小节

当 `.design.md` 含 **待执行**或**分阶段**计划（如删成员、镜像 BPC 字段、删占位 API）时：

### 5.1 前置：引用门禁

- 在删 `UPROPERTY`、删 `UFUNCTION`、改 Tick 顺序前：对 **AS** `grep` + **`.soft-ue-index`**（或项目 Blueprint 文本索引）检索 **Get/绑定**；需要断言「当前编辑器内」蓝图事实时，在 **soft-ue-cli** `check-setup` 成功后用 **query-blueprint** 等（**soft-ue-cli-ue-bridge**）。
- **无引用或已解除绑定**后再删符号，避免加载断线。

### 5.2 分阶段实现

- 按文档给出的 **阶段顺序**（如先 UMT §8 再 §9.1 再 BPC §15）分别改 **代码、测试、design 正文**；每阶段 **TDD 全绿** 后再下一阶。
- 文档要求 **「非必要不简化」** 的数学（如 Locomotion **滞回、阈值、死区、`UpdateDesiredLocomotionState` 全链路**）：默认**不**合并、不「顺手优化」；仅删除文档明确允许删除的占位 API（如历史上的无状态 `CalculateSpeedRange()`），且**不**连带改掉内部 `GetSpeedRangeBoundsFromLocomotionState` 实现。

### 5.3 执行后：从文档中移除已完成计划

- **默认**：某一阶段或整份「计划」已落地（代码/测试/正文已对齐）后，从 `.design.md`（及涉及的拆分文档）中 **删除** 对应 **「计划」小节全文**（含 §8 / §9 / §15 等**待执行**清单），**不要**长期保留可勾选的旧任务列表——避免读者误以为仍待做、与当前规格双轨。
- **合并真值**：计划里承诺的行为须已写回 **前面各节正文**（§0–§7、数据契约表、线程与 Tick 顺序等）；移除计划前确认这些段落**已**反映最新实现。
- **审计**：历史以 **Git 提交说明与 diff** 为准；若团队需要一行追溯，可在文首 **变更记录** 表增一行（日期 + 一句摘要 + 可选 commit），**不**恢复整段计划正文。
- 需在 **AnimBP** 绑定的步骤（如 MM 选择器绑到新 Tag/枚举）：若仍属未完成的**人工验收**，可保留 **单独一句**「待编辑器：…」或迁入 issue/任务单；**不要**用整节「计划」占位。

---

## 6. 附录：`*.design.md` 模板与维护规则

1. **命名与位置**：与源码同目录，`<ClassOrModule>.design.md`；跨切面迁出：`<Base>.<concern>-deferred.design.md`（例：`*.movement-deferred.design.md`）。文首写明 **范围、与主文档关系、当前 `.as` 是否仍包含迁出逻辑**。
2. **文首元信息**：一两句说明「可据此改代码」、权威侧（改代码后是否必须同步本文档）。
3. **正文编号**：`§0` 约束；`§1` 初始化；`§2` 每帧或 Tick **子序列（顺序固定）**；公式节写清 **常量、分支、早退**；调试或屏显单独成章，或用 **「规格与实现差异」**。
4. **数据契约表**（跨类时）：列 **写入方 / 只读方**（如 BPC → `LocomotionState` → UMT 仅镜像），避免 AnimInstance **重复** BPC 速度带数学。
5. **「计划」小节**：每条写清 **对前文哪一节、哪张表的修改动作**；含 **前置引用检索**；**全部执行完毕后从文档删除该小节**（见 §5.3），正文只保留当前规格。
6. **硬约束短节**（按需）：如滞回/死区非必要不简化；§x.x 仅只读镜像、不重复某函数——便于在执行阶段拒绝跑题「优化」。

---

## 7. Agent 检查清单

- [ ] 已读全部相关 `.design.md` 与范围边界（含拆分/计划链接）；若执行末尾计划，已合并阅读主文档 + 拆分 + `plan-*.md`
- [ ] 已逐项对照源码，差异有明确归类（代码 / 文档 / 注释）
- [ ] 行为变更走 TDD 基线与 `RunAngelscriptTests.ps1` 全绿
- [ ] 提交原子、中文 subject、仓库根正确
- [ ] 回复中说明**改了哪些文件**、与 design **哪一节**对齐；若已执行计划，**已删除**文档中对应已完成「计划」小节，且前面正文/契约表已合并为唯一真值

---

## 8. 交叉引用

- **write-angelscript**：编写/编辑 `.as` 的单一入口与参考路径。
- **angelscript-tdd-agent-iteration**：`RunAngelscriptTests.ps1`、退出码、失败迭代。
- **git-commit-zh** / **git-local-p4-workflow**：提交语言、原子化、双仓与 `Engine\ManteumTower` 根。
- **blueprint-snapshot-search** / **soft-ue-cli-ue-bridge**：删成员/API 前的引用检索与在线蓝图事实。
- **retro-automation-workflow**：若本次是自动化/TDD/规格对齐的阶段性复盘，可沉淀到 Kit knowledge（如 `content/knowledge/16-design-doc-equivalent-workflow.md`）。
