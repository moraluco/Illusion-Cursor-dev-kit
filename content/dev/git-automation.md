# Git 自动化备忘（Agent / 终端）

与 Kit 技能 **git-local-p4-workflow** 配套。提交语言：**中文**（见 rule `git-local-repos-and-p4`）。

## 自动化优先

- 能由**脚本、UnrealEditor-Cmd、单测、CI 工作流**稳定重复完成的验证与交付，应走**自动化**；长期方案不应依赖「只开 UE 人工看 Output Log」。详见 `content/dev/unattended-ue-automation.md` 与技能 **angelscript-tdd-agent-iteration**。

## 提交必须原子化（对自动化流程更友好）

- **原则**：一个 commit 只做**一个可验证点**；commit message 必须能让人不看上下文也知道“为什么/做了什么/如何验证”。\n+- **拆分建议**：\n+  - 规则/技能（`.cursor/`）单独提交\n+  - dev 文档单独提交\n+  - 脚本单独提交（尽量自带 `exit code` 或“如何运行”）\n+  - 项目工程改动（代码/配置）单独提交\n+- **反例**：把“规则改动 + 10 个文档 + 2 个脚本 + 大量格式化”混在一个提交里，会让 Step1 无法用 `git log` 收敛叙事。\n+
## 自动化专仓

本项目的“专仓”不是指某个单一的 GitHub 仓库，而是指**本地优先**的开发方式：以 `D:\GitRepo\...` 下的本地仓库推进自动化开发与验证，规避 GitHub 的网络环境、LFS、runner 等限制。

- 改 **项目** → 在 `D:\GitRepo\ManteumTower`（或其真实目录联接）提交。
- 改 **Kit**（文档、计划、规则、技能、非 UE 工程所需脚本）→ 在 `D:\GitRepo\Illusion-Cursor-dev-kit` 提交。
- GitHub Actions 可作为后续迁移参考，但**不**作为“自动化是否成立”的唯一验收；验收以**本地可重复**为主。

## 仓库根

- **项目**（ManteumTower）：`D:\Workspace\MT\Engine\ManteumTower`（含 `ManteumTower.uproject`）。在此目录执行与游戏工程相关的 `git` / soft-ue-cli。
- **Kit**：含本 `content/` 与 `.cursor/skills` 的仓库（如 `D:\CursorProject\Illusion-Cursor-dev-kit`）。
- **本地优先入口**：推荐直接在 `D:\GitRepo\ManteumTower`、`D:\GitRepo\Illusion-Cursor-dev-kit` 作为日常 `cd` 目标（联接/真实目录等价）。

在终端中先 `cd` 到**当前要操作**的仓库根，再执行 Git。

## P4 边界（仅知晓）

- Cursor/Agent **不操作 P4**；本文件仅关注 Git 与自动化闭环。\n+- 若工程文件因 P4 流程而只读导致无法写入，由人类先在 P4V/命令行完成 checkout，再继续。

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
