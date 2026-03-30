# Git 自动化备忘（Agent / 终端）

与 Kit 技能 **git-local-p4-workflow** 配套。提交语言：**中文**（见 rule `git-local-repos-and-p4`）。

## 仓库根

- **项目**（ManteumTower）：`D:\Workspace\MT\Engine\ManteumTower`（含 `ManteumTower.uproject`）。在此目录执行与游戏工程相关的 `git` / soft-ue-cli。
- **Kit**：含本 `content/` 与 `.cursor/skills` 的仓库（如 `D:\CursorProject\Illusion-Cursor-dev-kit`）。

在终端中先 `cd` 到**当前要操作**的仓库根，再执行 Git。

## 常用命令（PowerShell）

```powershell
git status
git log -n 20 --oneline
git log -n 15 --oneline -- Plugins/SomePath
git diff
git show HEAD --stat
```

## 与自动化闭环

- **AngelScript 测试**：见 **angelscript-tdd-agent-iteration**；通过后再提交。
- **UE 编辑器验证**：见 **soft-ue-cli-ue-bridge**；通过后再提交。

## 长程上下文

任务前可读 `content/plan.md`、`content/knowledge/`，并对涉及路径执行 `git log`。文档与提交不一致时以**仓库**为准。
