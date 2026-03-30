# Git 原子提交与 TDD（AngelScript / 项目侧）

沉淀「**过一个验证点、提一次交**」的约定，便于 `git bisect`、代码评审与长程复盘。

## 原则

| 项 | 约定 |
|----|------|
| 可验证点 | 每个 commit 对应**一个**可独立说明的改动（一个函数迁移、一条 Tick 链、一条纯逻辑修复等） |
| 验证先于提交 | 改代码后**先**跑约定门禁，**再** `git commit` |
| ManteumTower AS | 默认门禁：`Scripts\Run-UnattendedTests-Min.ps1 -Mode AS`（在 `D:\Workspace\MT\Engine\ManteumTower` 执行） |
| 单测位置 | 与组件同主题的测试放在 `Script/Test/`（如 `BPCAnimComponentTests.as`） |
| 提交说明 | 中文；正文含「如何验证」；末尾可附一行验证命令（与 `content/dev/git-automation.md` 一致） |

## 反例

- 把「OnStopMove + Movement + 寻路 + 步态 + GameplayAnim」一次提交：难以 bisect，回滚时损失面过大。
- 未跑 `-Mode AS` 就提交：可能把编译错误推进主分支历史。

## 误合成大提交后的修复思路

1. `git branch backup/旧单提交 <旧 SHA>` 保留引用。
2. `git reset --hard <合并前的基线>`。
3. 按依赖顺序**逐段**恢复实现，每段后跑门禁并单独 `git commit`。
4. 确认新历史与备份分支行为一致后，可删除临时分支（或保留作对照）。

## 交叉引用

- 操作命令与 UTF-8 无 BOM：`content/dev/git-automation.md`
- 技能：**git-local-p4-workflow**、**angelscript-tdd-agent-iteration**
- Rule：`git-local-repos-and-p4.mdc`
