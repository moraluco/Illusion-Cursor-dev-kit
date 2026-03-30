---
name: summarize-to-knowledge
description: >-
  Executes the experience-summary loop for Kit-based projects: review methodology
  and existing knowledge, write reusable experience into content/knowledge or
  content/dev, then update README indexes. Use when the user says "总结经验"
  (summarize experience), after a phase or task is done, or when suggesting
  knowledge沉淀 to the knowledge base.
---

# Summarize to Knowledge

When the user requests **总结经验** or at phase/task completion, run the full loop: **回顾 → 沉淀 → 索引更新**. Do not only give an oral summary; perform write-backs to the Kit's `content/` when the user agrees.

All paths below are relative to **Kit root** (the repo containing this skill and `METHODOLOGY.md`). Document read/write happens under Kit's `content/`, not under the project code root.

---

## Step 1: 回顾 (Review)

1. **Read** Kit root's `METHODOLOGY.md` and `content/knowledge/README.md` (if present).
2. **Scan** `content/knowledge/` and `content/dev/` for existing docs on the same topic to avoid duplication or conflicting wording.
3. Optionally read `content/plan.md`, `content/design/` for recent updates relevant to the current phase.
4. From the **current conversation and project context**, identify:
   - What was decided and why (→ knowledge or `04-decisions.md`)
   - What went wrong or is easy to get wrong (→ knowledge or `05-gotchas.md`)
   - What was done step-by-step with tools/editor/export (→ dev)
5. **可选**：若本次涉及大量文件或易与历史混淆，在**对应仓库根**对照 **相关路径的 `git log`** / 最近提交的 `message`，避免知识库叙事与仓库事实脱节（技能 **git-local-p4-workflow**）。

---

## Step 2: 沉淀 (Write-back)

- **knowledge/**  
  Use for: concepts, rationale, project-level decisions, gotchas, cross-module conventions.  
  - New files: `content/knowledge/NN-主题.md` with **incrementing number** `NN`.  
  - Content focus: reusable experience + conventions + checklists + extension templates; avoid one-off process logs.  
  - If the project uses `04-decisions.md` or `05-gotchas.md`, add or append there when appropriate.

- **dev/**  
  Use for: tool usage, export flows, editor/plugin steps, build/script steps.  
  - Place under `content/dev/` (or subdirs per project layout).  
  - If the same topic has both “why” and “how”, put the “how” in dev and add a short pointer from knowledge.

- **Scope**: Write only under **Kit root's content/** (`content/knowledge/`, `content/dev/`). Do not create doc folders under the project code root.

---

## Step 3: 索引更新 (Index update)

1. **Update** `content/knowledge/README.md` to include any new files (and optionally `content/dev/README.md` if dev docs were added).
2. In your reply, **cite the new doc paths** so the user can @-reference them later.

---

## Output to the user

1. A short **经验小结** (experience summary) of what was captured.
2. **1–3 concrete suggestions** for what to write to knowledge vs dev (and to which file). If the user has already agreed, perform the writes and index update; otherwise propose and wait for confirmation before writing.

---

## Checklist (for the agent)

- [ ] Read `METHODOLOGY.md` and `content/knowledge/README.md`
- [ ] Checked `content/knowledge/` and `content/dev/` for existing same-topic docs
- [ ] Wrote or updated only under Kit's `content/` (knowledge or dev)
- [ ] Used `NN-主题.md` naming for new knowledge files; content is reusable (conventions/checklists/templates)
- [ ] Updated `content/knowledge/README.md` (and dev README if needed)
- [ ] Quoted new doc paths in the reply for @ reference
