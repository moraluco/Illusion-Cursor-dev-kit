---
name: sync-rules-and-skills
description: 对 Kit 的 .cursor/rules/*.mdc 与 .cursor/skills/*/SKILL.md 进行检查与整理，压缩重复内容，让 Rule 只做触发与轻量说明，Skill 承载完整流程与知识，保持两者边界清晰、技能独立健壮。
---

# 整理规则与技能（Rule ↔ Skill 去重与压缩）

当需要 **检查所有 Rule 是否有可以压缩进现有 Skill 的内容，避免两者内容和职责重复，使 Skill 保持独立、健壮** 时，使用本技能。

## 使用时机

- 想把 Kit 里的经验/约定集中沉淀到 Skill，而不是分散在多个 Rule 正文里。
- 新增或修改了 `.cursor/rules/*.mdc`，担心与现有 `.cursor/skills/*/SKILL.md` 出现重复、冲突或职责不清。
- 对 Kit 做一次「规则与技能」大扫除：希望 Rule 只做触发与轻量提醒，Skill 承载完整、权威的流程与知识。

本技能主要面向 **Kit 根目录**（含 `.cursor` 的仓库）下的配置：

- 规则：`.cursor/rules/*.mdc`
- 技能：`.cursor/skills/*/SKILL.md`

**收尾**：整理或合并完成后，对 Kit 仓库内变更执行 **`git commit`**（原子化、中文 subject，**git-commit-zh**），使 Rule/Skill 的迭代**可追溯**。

> 若用户的需求是「总结 AS 经验并同步到 AngelScript 写作相关 Skill/Rule」，优先使用技能 `summarize-as-experience`；本技能更偏向通用的 Rule ↔ Skill 结构整理。

## 总体原则

1. **Rule 只做触发与轻量说明**  
   - 负责描述「什么时候应用哪个 Skill」以及极少量的上下文说明（1–3 个要点）。  
   - 避免在 Rule 中堆积长篇教程、完整工作流或大量示例。
2. **Skill 承载完整流程与知识**  
   - 具体步骤、详细约定、完整示例和边界情况，都集中写在对应 `SKILL.md` 中。  
   - 一个领域（例如 AngelScript 编写）尽量有一个「权威 Skill」，其它 Skill 补充专门流程（如 API 查询、经验总结）。
3. **单向收敛、避免双写**  
   - 若某段知识既出现在 Rule，又出现在 Skill，应**以 Skill 为权威**，在 Rule 中删减为一句话的指向或简要提醒。
4. **不改变语义，不丢信息**  
   - 压缩或迁移内容时，确保所有有用的信息都能在某个 Skill 中找到。  
   - 仅删除纯重复、无额外信息价值的冗余段落。

## 工作流

可以按以下步骤执行一次完整整理：

### 1. 收集规则与技能清单

1. 列出所有 Rule 文件：`.cursor/rules/*.mdc`。  
2. 列出所有 Kit 级 Skill：`.cursor/skills/*/SKILL.md`。  
3. 对每个 Rule，尝试判断其「对应或相关的 Skill」：
   - 通过 Rule 的 `description`、标题或正文中的技能名（如 `write-angelscript`、`angelscript-api-query`、`summarize-as-experience`、`summarize-to-knowledge` 等）。
   - 若 Rule 没有显式指向某个 Skill，记录为「待归属」。

> 若需要设计新的 Skill 来承载某类知识，可配合使用 `create-skill` 技能（指导如何创建新的 SKILL.md 及目录结构）。

### 2. 按 Rule 逐个对照 Skill，识别重复

对于每一个 Rule：

1. 打开对应或最相关的 Skill（如 Rule 中点名的技能名，或从内容上最接近的技能）。  
2. 对比以下几点，判断是否有可压缩进 Skill 的内容：
   - Rule 中是否详细列出**文档路径**、**操作步骤**、**使用约定**，而 Skill 中已有同样或更完整内容。
   - Rule 是否在讲一段**方法论 / 教程 / 工作流**，而 Skill 中已经系统总结过类似内容。
   - Rule 是否重复概述某个技能的使用方式（例如 `write-angelscript` 已经全面涵盖 AngelScript 写法，而 Rule 里又写了一整版）。
3. 若 Skill 中已有权威、完整的描述，而 Rule 中只是重复或略有删改，则标记为「**可以压缩到 Skill**」。

### 3. 决定处理方式：删减 Rule 还是扩展 Skill

对每一块重叠内容，按以下优先级决定：

1. **Skill 更完整、Rule 只是部分或重复**  
   - 做法：**删减 Rule 的重复正文**，保留一句简短说明 + 指向 Skill。  
   - 示例模式：
     - 「本 Rule 仅做触发与提醒，完整流程与细节请见技能 `xxx-skill`。」
     - 「文档查阅路径、语言选择与写法约定一律以 `.cursor/skills/xxx-skill/SKILL.md` 为权威来源。」
2. **Rule 中有 Skill 没有的新信息，但仍然属于该 Skill 的领域**  
   - 做法：
     1. **把新增信息合并进对应 Skill 的合适章节**（或新增一个小节）。  
     2. 再将 Rule 中这一段删减为一句总结或直接删除。  
   - 合并时注意：
     - 保持 Skill 的结构清晰，不要机械复制；用更简洁、抽象的方式吸收进入 Skill。
     - 若是特定项目约定或路径，可在 Skill 中增加「项目内参考位置 / 约定」一小节。
3. **Rule 与任何现有 Skill 都不太匹配，且内容不短**  
   - 做法：
     - 考虑新建一个 Skill，将这部分内容迁移过去，再让 Rule 只做「触发 + 指向」。  
     - 新 Skill 的创建可使用 `create-skill` 技能指导结构与命名。

### 4. 修改 Rule：保留 frontmatter，正文尽量短

修改 `.cursor/rules/*.mdc` 时：

1. **不随意改 frontmatter**：  
   - `description`：短、包含触发关键词。  
   - `globs`：若有，继续准确描述适用文件范围。  
   - `alwaysApply`：是否全局适用，不因内容压缩而随意改变。
2. **压缩正文**：
   - 让标题和 1–3 段简短说明清楚表达：
     - Rule 的作用（提醒什么、在什么场景触发）。  
     - 它指向的 Skill 名称或路径。  
     - Skill 是该领域的唯一权威来源。
   - 避免在 Rule 中保留大段教程、长表格或完整示例代码。

推荐的 Rule 正文模板：

```markdown
# <Rule 标题>（指向技能）

本 Rule 只负责在 <触发场景> 中提醒 <1–2 句要点>，并指向对应技能：

- 在 <场景> 下，按技能 `<skill-name>` 执行。
- 具体文档路径、详细流程、示例代码等，以该技能为唯一权威来源。
```

### 5. 修改/扩展 Skill：集中沉淀知识

当需要把 Rule 中的有用信息迁移到 Skill 时：

1. 找到对应 Skill 的合适位置：
   - 若已存在相近章节（如「写代码前必做」「书写约定」「工作流」），优先将信息并入对应章节。  
   - 若是新的主题，可以新建一个小节，但避免让 SKILL.md 过长或结构混乱。
2. 合并内容时按 Skill 的风格改写：
   - 用 Kit 习惯的术语、表格或列表表达。  
   - 尽量从「具体实例」抽象到「清晰规则」，避免重复列举低价值细节。
3. 保持 Skill 的**描述与 Rule 中的指向一致**：
   - 若 Rule 声明「文档路径以某技能为准」，那技能中要真写清楚这些路径与使用方式。  
   - 若 Rule 提到某技能负责某职责（例如 API 查询、经验总结），确保技能中明确这部分职责。

若 Skill 过长或结构开始显得臃肿：

- 优先使用「章节拆分」与「参考文档」的方式（例如把长表格或大量示例拆到 `reference.md` / `examples.md`，在 `SKILL.md` 中只做链接）。
- 避免新增第二个覆盖相同职责的 Skill，而是让现有 Skill 演进。

### 6. 校验职责边界

整理完一轮后，检查以下问题：

1. **是否存在两个 Skill 做同一件事？**
   - 若有，考虑合并或重命名，保留一个主技能，另一个变为补充或完全移除。
2. **是否存在某 Skill 与某 Rule 内容大段重合？**
   - 若仍有重合，优先删减 Rule 正文，让其改为「指向 + 一句话总结」。
3. **是否所有 Rule 都能对应到至少一个 Skill？**
   - 若有 Rule 无法对应任何 Skill，评估：
     - 它是否应当被转换成一个新 Skill？  
     - 还是简化为几条轻量约定，关联到已有的通用 Skill（例如代码风格、测试流程等）。

## 知识库索引（整理完成后）

在 `content/knowledge/README.md` 中维护 **「Cursor 规则与技能（索引）」** 表，便于人类与 Agent 对照 **Rule → Skill → knowledge/dev**，避免只在 `.cursor` 里找入口。整理 Rule/Skill 后应同步检查该表是否需增删一行。

## 与现有相关技能的关系

- **`write-angelscript`**：AngelScript 编写的权威 Skill。  
  - 本技能在整理 AngelScript 相关 Rule 时，应确保：  
    - Rule 只负责提醒「写 AS 前查文档、AS 优先 C++ 补充」等要点。  
    - 所有细节都沉淀在 `write-angelscript` 及其相关技能中。
- **`angelscript-api-query`**：AngelScript API 查询与写回 Kit 的 content/reference/AS_API。  
  - 若某 Rule 详细描述了 API 查询顺序、如何访问 hazelight 文档等，这些应收敛到 `angelscript-api-query`，Rule 中只保留一句指向。
- **`angelscript-tdd-agent-iteration`**：运行 AngelScript 测试、解析结果、失败时自动迭代。  
  - 若某 Rule 详细描述 RunAngelscriptTests.ps1、退出码、失败迭代流程，应收敛到本技能，Rule 只做触发与指向。
- **`summarize-as-experience`**：当用户说「总结AS经验」时，用于专门维护 AngelScript 相关 Rule/Skill。  
  - 若本次整理行为主要针对 AS 领域，且用户显式使用该触发语，可以优先使用 `summarize-as-experience`；  
  - 本技能则作为更通用的「Rule/Skill 结构整理」工具，可同时应用于其它领域。
- **`summarize-to-knowledge`**：通用「总结经验」→ 写回 content/knowledge、content/dev 并更新索引。  
  - 与本技能互补：本技能侧重 Rule 与 Skill 的边界与去重；summarize-to-knowledge 侧重知识库 content/ 的沉淀。

## 输出要求

完成一次整理后，对用户的说明应简短但具体，建议包含：

- **修改了哪些 Rule**：名称或文件名、主要变化（如「正文压缩为指向某 Skill」）。  
- **更新了哪些 Skill**：名称和增加/调整的要点。  
- **职责边界变化**：例如「现在 Rule 只做触发，Skill X 是该领域的唯一权威来源」。  
- 若有仍待人工决策的部分（例如是否拆分或合并某 Skill），用 1–2 条 TODO 的形式标出。
