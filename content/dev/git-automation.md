# Git 自动化备忘（Agent / 终端）

与 Kit 技能 **git-local-p4-workflow** 配套。提交语言：**中文**（见 rule `git-local-repos-and-p4`）。

## 自动化优先

- 能由**脚本、UnrealEditor-Cmd、单测、CI 工作流**稳定重复完成的验证与交付，应走**自动化**；长期方案不应依赖「只开 UE 人工看 Output Log」。详见 `content/dev/unattended-ue-automation.md` 与技能 **angelscript-tdd-agent-iteration**。

## 提交必须原子化（对自动化流程更友好）

- **原则**：一个 commit 只做**一个可验证点**；commit message 必须能让人不看上下文也知道「为什么 / 做了什么 / 如何验证」。
- **拆分建议**：
  - 规则/技能（`.cursor/`）单独提交
  - dev 文档单独提交
  - 脚本单独提交（尽量自带 `exit code` 或「如何运行」）
  - 项目工程改动（代码/配置）单独提交
- **反例**：把「规则改动 + 多个文档 + 脚本 + 大段无关格式化」混在一个提交里，会让 `git log` / `git bisect` 难以收敛。

### TDD 与 AngelScript：过一个验证点、提一次交（推荐）

- **顺序**：为当前最小行为写/改单测（Red）→ 实现到绿 → 跑门禁 → **再** `git commit`。
- **门禁（项目约定）**：`Scripts\Run-UnattendedTests-Min.ps1 -Mode AS`（在项目仓库根 `D:\Workspace\MT\Engine\ManteumTower` 执行）。
- **粒度**：一次提交对应「一个函数/一条行为链 + 其单测」或「纯重构 + 仍通过同一门禁」；不要把一整块蓝图迁移的多个独立函数塞进同一次提交。
- **若历史已合并成大提交**：可用 `git reset` 回到合并前基线后按上述顺序重建（先备份分支或 `reflog`），避免强推前丢失引用。

### 拆分大提交、重建原子提交（可复制）

**前提**：在**当前分支**操作；若已推送远端，拆分后需 `git push --force-with-lease`（与团队对齐）。

1. **备份指针**（可选但推荐）：

```powershell
git branch backup/pre-split-$(Get-Date -Format yyyyMMdd-HHmm)
```

2. **软回退到合并前的基线**（保留工作区与暂存区改动；`N` = 要撤销的提交数，或改用 `abc1234^` 指向合并前的父提交）：

```powershell
# 例：把最近 1 个大提交拆开
git reset --soft HEAD~1
# 此时所有变更仍在 index，可分批 git add
```

3. **按主题分批暂存并提交**（每批一个可验证点）：

```powershell
git add -p                    # 交互式挑选 hunk
# 或
git add path/to/one/file.as
git commit -F path/to/msg-utf8-no-bom.txt
```

4. **验证**：每批提交后跑对应门禁（如 `Run-UnattendedTests-Min.ps1 -Mode AS`）。

5. **若已搞乱**：`git reflog` 找回 `backup/pre-split-*` 或 `HEAD@{1}`。

**不要用**：在 PowerShell 里混用 `cd /d`（那是 cmd）；见 `content/knowledge/05-gotchas.md`。

### 提交信息 UTF-8（避免 BOM 与乱码）

- **禁止**用 `cmd.exe` 的 `echo ... > commit-msg.txt` 写中文提交（易成系统代码页）。
- **推荐**：PowerShell 用 **UTF-8 无 BOM** 写文件，再 `git commit -F`：

```powershell
$msgPath = Join-Path $env:TEMP "commit-msg.txt"
$utf8 = New-Object System.Text.UTF8Encoding $false
$body = "feat(AS)：标题`n`n正文`n`n验证: Scripts\Run-UnattendedTests-Min.ps1 -Mode AS"
[System.IO.File]::WriteAllText($msgPath, $body, $utf8)
git commit -F $msgPath
Remove-Item -LiteralPath $msgPath -Force
```

- `Set-Content -Encoding utf8` 在部分 PowerShell 版本会为文件加 BOM，可能导致 `git log` 首行出现不可见字符；优先用上面 `UTF8Encoding($false)` 方式。

## 自动化专仓

本项目的「专仓」不是指某个单一的 GitHub 仓库，而是指**本地优先**的开发方式：以 `D:\GitRepo\...` 下的本地仓库推进自动化开发与验证，规避 GitHub 的网络环境、LFS、runner 等限制。

- 改 **项目** → 在 `D:\GitRepo\ManteumTower`（或其真实目录联接）提交。
- 改 **Kit**（文档、计划、规则、技能、非 UE 工程所需脚本）→ 在 `D:\GitRepo\Illusion-Cursor-dev-kit` 提交。
- GitHub Actions 可作为后续迁移参考，但**不**作为「自动化是否成立」的唯一验收；验收以**本地可重复**为主。

## 仓库根

- **项目**（ManteumTower）：`D:\Workspace\MT\Engine\ManteumTower`（含 `ManteumTower.uproject`；`.git` 位于 `D:\Workspace\MT\Engine\ManteumTower\.git`）。在此目录执行与游戏工程相关的 `git` / soft-ue-cli。
- **Kit**：含本 `content/` 与 `.cursor/skills` 的仓库（如 `D:\CursorProject\Illusion-Cursor-dev-kit`）。
- **本地优先入口**：推荐直接在 `D:\GitRepo\ManteumTower`、`D:\GitRepo\Illusion-Cursor-dev-kit` 作为日常 `cd` 目标（联接/真实目录等价）。

在终端中先 `cd` 到**当前要操作**的仓库根，再执行 Git。

## P4 边界（仅知晓）

- Cursor/Agent **不操作 P4**；本文件仅关注 Git 与自动化闭环。
- 若工程文件因 P4 流程而只读导致无法写入，由人类先在 P4V/命令行完成 checkout，再继续。

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
