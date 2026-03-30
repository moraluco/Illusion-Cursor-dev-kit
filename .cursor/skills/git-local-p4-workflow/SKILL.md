---
name: git-local-p4-workflow
description: 本地双 Git 仓库（ManteumTower + Kit）、目录联接、忽略规则、中文提交、Perforce 同步；Agent 用 log/diff 做长程上下文；嵌套 .git 备份说明。
---

# 本地 Git + Perforce 工作流

在需要**初始化/维护本地 Git**、**从 `D:\GitRepo` 访问工程**，或说明 **Git 与 P4 如何配合** 时使用本技能。

## 仓库与路径

| 角色 | 真实路径（示例） | `D:\GitRepo` 联接（可选） |
|------|------------------|---------------------------|
| 项目 | `D:\Workspace\MT\Engine\ManteumTower` | `D:\GitRepo\ManteumTower` |
| Kit | `D:\CursorProject\Illusion-Cursor-dev-kit` | `D:\GitRepo\Illusion-Cursor-dev-kit` |

联接创建（目标目录须尚不存在；以**管理员**或具备创建联接权限的终端执行）：

```bat
mkdir D:\GitRepo 2>nul
mklink /J "D:\GitRepo\ManteumTower" "D:\Workspace\MT\Engine\ManteumTower"
mklink /J "D:\GitRepo\Illusion-Cursor-dev-kit" "D:\CursorProject\Illusion-Cursor-dev-kit"
```

删除联接：仅删除联接名（`rmdir D:\GitRepo\ManteumTower`），**不要** `rd /s`，以免删真实数据。

## 提交信息

- **全部使用中文**（如：`修复：某某逻辑`、`chore：初始化忽略规则`）。分支名可用英文。

## 与 Perforce

1. 日常在 **Git** 中小步提交。
2. 阶段性向 **P4** 交稿前：`p4 reconcile` / 按团队流程提交 changelist；本地先编译与测试。
3. 在 Git 中可选：`git tag p4-cl-12345` 或在最近一次提交正文中写 `P4: changelist 12345`。

## 忽略规则要点

### 项目（ManteumTower）

- 根 `.gitignore`：UE 生成目录（`Binaries/`、`Intermediate/`、`Saved/` 等）、`Plugins/.git` 与 `Plugins/**/.git` 模式、以及 **`Plugins/_git_nested_backup/`**（见下）。
- **嵌套 Git**：Git 无法仅靠 ignore 在父仓中「保留子目录 `.git` 又完整跟踪其中文件」。若需父仓跟踪插件源码，已将部分插件的 `.git` **迁至** `Plugins/_git_nested_backup/`（如 `YesUeMcp.dotgit`）。恢复：移回对应插件目录并改名为 `.git`。

### Kit（本仓库）

- 根 `.gitignore`：合并原 `content/.gitignore` 规则、`content/reference/Docs-UE-Angelscript/public/` 与 `api/`（站点生成物）、**`_git_nested_backup/`**（原 `content/.git` 备份）。
- 若曾将 `content` 记为 submodule，需 `git rm --cached content` 后重新 `git add content/` 以改为普通目录跟踪。

## 与 TDD

- 编写或运行 AngelScript 测试时，与技能 **angelscript-tdd-agent-iteration** 配合：先跑测试再提交；Git 提交信息用中文说明本次通过/修复的测试点。
- 验证 **UE 编辑器内行为**时，与技能 **soft-ue-cli-ue-bridge** 配合：先 `check-setup` / 跑相关 CLI，再提交。

---

## Cursor / Agent 自动化开发中的 Git

在对应**仓库根**执行（先 `cd` 到项目根或 Kit 根，勿混仓）：

| 场景 | 命令示例 |
|------|----------|
| 近期提交摘要 | `git log -n 15 --oneline` |
| 某路径相关历史 | `git log -n 20 --oneline -- path/to/file` |
| 工作区改动 | `git status` |
| 未暂存差异 | `git diff` |
| 已暂存差异 | `git diff --cached` |
| 某次提交详情 | `git show <commit>` |

**推荐顺序**：改代码/资产 →（AS 测试 **或** soft-ue-cli 验证）→ `git add` / `git commit`（中文说明）。用户未要求提交时，Agent **不要擅自** `git commit`。

---

## 长期上下文：知识库 + 计划 + Git

目标：让任务具备**跨会话**的脉络——**文档**说明「为什么、计划什么」，**Git** 说明「实际改了什么」。

| 信息类型 | 来源 | 用法 |
|----------|------|------|
| 路线图与任务 | `content/plan.md` | 接手阶段前读当前阶段与验证记录 |
| 架构与结论 | `content/knowledge/`、`content/design/` | `@` 或阅读相关 `NN-*.md` |
| 具体变更 | `git log` / `git show` / `git diff` | 与文档不一致时**以仓库为准**，并考虑用 **summarize-to-knowledge** 更新 knowledge |

**推荐顺序**：`plan.md` → 相关 knowledge → 针对涉及路径的 `git log` → 再编辑。**多根工作区**须确认当前终端目录属于**哪一个** Git 仓库。

详见 `content/dev/git-automation.md`（可复制命令片段）。
