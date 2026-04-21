---
name: summarize-as-experience
description: 当用户说「总结 AS 经验」时，根据对话与项目上下文整理并更新 AngelScript 相关 Rule、Skill 与知识库，使 write-angelscript 持续成为 AS 写法的单一权威来源。与 summarize-to-knowledge 配合，作为 AS 专项分支。
---

# 总结 AS 经验（维护 Rule / Skill / 知识库）

当用户说 **「总结AS经验」**、**「把这次 AS 经验沉淀到 write-angelscript」** 或 **「总结 AngelScript 经验」**，或在一段 AS 开发告一段落后，执行本技能。目标：把**可复用的 AS 经验**沉淀到 **write-angelscript** 技能与 Kit 的 content，使 Agent 能基于这些知识与规则高效、准确写 AS。**所有总结出的内容、经验、知识点与 Rule 变更，最终必须汇总并更新到「编写 AngelScript」技能（write-angelscript）**，使该技能成为 AS 写法的单一权威来源。

所有路径均相对于 **Kit 根目录**（含本技能与 `content/` 的仓库）。不向项目代码根目录写入文档。

---

## 触发场景

- 用户说「总结AS经验」「整理 AS 规则」「维护 AS 知识库」或类似表述。
- 用户希望把本次对话中形成的 AS 写法、约定、文档引用等固化为规则或知识。
- 一段 AngelScript 相关开发完成后，需要把经验写回 write-angelscript 或 content。

---

## 工作流（六步）

按以下步骤执行，可复制清单并逐项勾选：

```
任务进度：
- [ ] 1. 收集上下文：当前对话、已有 Rule、Kit 的 content/reference 结构
- [ ] 2. 提取知识点：从对话与文档中归纳 AS 写法、API 反射、调用方式、约定
- [ ] 3. 设计/更新 Rule：决定写进哪个 .mdc、补充或新增哪些条款
- [ ] 4. 写入 Rule：编辑 .cursor/rules/*.mdc，保持 description/globs/alwaysApply 一致
- [ ] 5. 更新「编写 AngelScript」技能（必做）：将本次所有总结与 Rule 变更汇总并写回 write-angelscript
- [ ] 6. 可选：更新 content/knowledge 索引或 Doc 内说明
```

### 1. 收集上下文

- **对话**：本次及近期消息中关于「写 AS 前要查什么」「AS 在 UE 里的写法」「API 反射与调用」的结论。
- **已有 Rule**：读取 `.cursor/rules/` 下 AS 相关规则（如 `angelscript-docs-reference.mdc`、`angelscript-primary-cpp-fallback.mdc`），避免重复或冲突。
- **Kit 文档结构**：
  - `content/reference/AS_API/API_Index.md`、`content/reference/AS_API/API_Docs/<ClassName>.md`
  - `content/reference/Docs-UE-Angelscript/`（入门、脚本写法、绑定与反射等）
  - `content/knowledge/`、`content/dev/`

### 2. 提取知识点

从上下文归纳为可写入 Rule 或 Skill 的要点，例如：

- **必查文档**：Docs-UE-Angelscript、Script-Examples；**核对 AS 符号**时**能开 UE 优先 as-api-dynamic-query**，**不能开 UE** 才依赖 content/reference/AS_API。
- **写前确认**：以 UE 内动态查询（若可用）+ 编译 + 本地叙事文档确认用法后再写或改 AS。
- **与 sync-rules-and-skills 对齐**：具体步骤、长表、示例代码**优先进** **write-angelscript**（及 `reference.md`）与 **`content/knowledge/05-gotchas.md`**；**Rule（`.mdc`）只保留触发语 + 指向**，避免与 Skill 双写。涉及 **Enhanced Input / `FInputActionValue` / IMC 生命周期** 时以 **write-angelscript** § Enhanced Input 为权威。
- **基础写法**：类声明、UPROPERTY/UFUNCTION、BlueprintOverride/BlueprintEvent、实例/静态/全局调用等。
- **API 反射**：哪些 C++ 类型/属性/函数会出现在 AS 中（可引用 cpp-bindings/automatic-bindings 等）。
- **语言选择**：AS 优先、C++ 补充；脚本位置、`.as` 扩展名。

### 3. 设计/更新 Rule

- 若已有「写 AS 前查文档」的 Rule：在其上**增补**本次总结的查阅路径、确认项或写法约定，不推翻既有结构。
- 若本次产生**新的**约定（如新文档路径、新 glob、新 alwaysApply）：决定是合并进现有 `.mdc` 还是新增一个 `.mdc`（命名与 description 保持清晰）。
- 保持 **description** 简短且包含关键词，便于 Agent 匹配。

### 4. 写入 Rule

- 只修改 **Kit** 内 `.cursor/rules/` 下的 `.mdc` 文件。
- 编辑时保留原有 YAML frontmatter（`description`、`globs`、`alwaysApply` 等），只增删或改写正文与列表。
- 变更后用一两句话向用户说明：改了哪个文件、新增/调整了哪几条。

### 5. 更新「编写 AngelScript」技能（必做）

**目标**：Kit 内的 `.cursor/skills/write-angelscript/SKILL.md` 与 `.cursor/skills/write-angelscript/reference.md`（或 `gotchas.md`）。

将本次总结的**全部内容**写回 write-angelscript，使该技能成为 AS 写法与约定的单一沉淀处：

- **必做**：把本次提取的「必查文档」「写前确认」「基础写法」「API 反射」「语言选择」等知识点，合并进 write-angelscript 的「写代码前必做」「书写约定」「工作流」等章节，或写入 `reference.md`/`gotchas.md`；若有新增文档路径或约定，在技能中增补对应表格或列表。
- **与 Rule 一致**：若本次改动了 `.cursor/rules/*.mdc`，确保 write-angelscript 中的描述与 Rule 一致（例如文档路径、触发条件）。
- **不删除已有有效内容**：以增补、细化为主；仅当某条已过时或被明确替代时才改写或移除。
- 编辑后简要列出：本次向 write-angelscript 新增或修改了哪些小节/列表。

### 6. 可选：知识库与其它

- 若涉及新文档路径、新 API 索引或新用法约定，可在 `content/knowledge/` 增加或更新文档，并更新 `content/knowledge/README.md`。
- 若用户明确要求「做成新 Skill」（非 write-angelscript），再在 `.cursor/skills/` 下新增或更新对应 SKILL.md。

---

## 沉淀目标选择（Step 2 细化）

- **content/knowledge/**  
  - 新增或更新 `content/knowledge/NN-主题.md`（如 `NN-AngelScript-约定.md`、`NN-AS-易错点.md`），使用递增编号 `NN`。  
  - 或追加到 `04-decisions.md` / `05-gotchas.md`（若项目使用）。  
  - 在文档中标注 **供 write-angelscript 使用**。

- **content/dev/**  
  - AS 相关操作说明：编辑器步骤、脚本/测试命令、导出流程等。  
  - 若同一主题既有「为什么」又有「怎么做」，可在 knowledge 中简短说明并指向 dev。

- **write-angelscript**  
  - 更新 `.cursor/skills/write-angelscript/reference.md` 或新增 `gotchas.md`，写入简洁、可复用的要点（约定、API 注意点、常见坑）。  
  - 该文件在 write-angelscript 的「写代码前」步骤中被读取，需保持可扫读。

---

## 项目内 AS 相关路径（Kit）

| 用途         | 路径 |
|--------------|------|
| **AS 符号（首选）** | 技能 **as-api-dynamic-query**（UE 内 ASApiQuery） |
| API 索引（离线） | `content/reference/AS_API/API_Index.md` |
| 单类 API 文档（离线） | `content/reference/AS_API/API_Docs/<ClassName>.md` |
| AS 与 UE 文档 | `content/reference/Docs-UE-Angelscript/`（入门、脚本、cpp-bindings） |
| 现有规则示例 | `.cursor/rules/angelscript-docs-reference.mdc`、`angelscript-primary-cpp-fallback.mdc` |
| **总结沉淀目标** | `.cursor/skills/write-angelscript/SKILL.md`、`reference.md`（所有总结内容最终更新到此技能） |
| 知识库       | `content/knowledge/`、`content/dev/` |

---

## 与 summarize-to-knowledge 的关系

- **summarize-to-knowledge**：通用「总结经验」→ 回顾 → 写回 content/knowledge、content/dev → 索引更新。  
- **summarize-as-experience**：**AS 专项**分支。沿用同一套回顾纪律（METHODOLOGY、README、扫描已有文档）；当主题为 AS 时，**额外**写回 AS 知识文档和/或 write-angelscript，并标注供 write-angelscript 使用。  
- 不替代 summarize-to-knowledge；仅在用户明确要求「总结 AS 经验」或「沉淀到 write-angelscript」时使用本技能。

---

## 输出要求

- 执行完后，用简短列表向用户汇报：更新了哪些 Rule、新增了哪些条款、**对 write-angelscript 技能做了哪些增补/修改**、是否涉及 content 知识库或其它 Skill。
- 不编造未在上下文或文档中出现的内容；若某条无法从当前上下文推断，可标注「建议后续在文档中确认后补充」。

---

## 清单（供 Agent 自检）

- [ ] 已读 `METHODOLOGY.md` 与 `content/knowledge/README.md`
- [ ] 已检查 content/knowledge、content/dev 中是否已有同主题 AS 文档
- [ ] 仅写入 Kit 的 content/ 或 .cursor/skills/write-angelscript/
- [ ] 新 knowledge 文件使用 NN-主题.md；内容为可复用经验
- [ ] 已更新 content/knowledge/README.md（以及 dev README 如需要）
- [ ] 已**必做**更新 write-angelscript（SKILL.md 或 reference.md/gotchas.md）
- [ ] 若改动了 `.cursor/rules/*.mdc`：正文保持**短触发 + 指向 Skill**，长文只在 **write-angelscript** / knowledge；与 **sync-rules-and-skills** 一致
- [ ] 回复中引用了新增/修改的文档路径，并注明「供 write-angelscript 使用」处
