---
name: git-local-p4-workflow
description: 本地双 Git 仓库（ManteumTower + Kit）、目录联接、忽略规则、中文提交，以及与 Perforce 阶段性同步的惯例；嵌套 .git 备份目录说明。
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
