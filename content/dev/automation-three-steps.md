# 三阶段自动化开发流程（知识库 → 纯 Coding+Git → UE+CLI）

与 [content/plan.md](../plan.md) 中 **「三阶段自动化」** 三节配套；规则见 **ue-dev-kit**、**git-local-repos-and-p4**，技能见 **git-local-p4-workflow**、**soft-ue-cli-ue-bridge**、**angelscript-tdd-agent-iteration**。

## 一键本地验证清单（最小闭环）

以 **`D:\GitRepo\...`** 下的本地仓库为主；改项目提交项目、改 Kit 提交 Kit。以下命令均以 **仓库根**为当前目录执行。

### Step 1：知识库 + Git 收敛（不跑 UE）

- **目标**：仅凭 `content/plan.md` + `content/knowledge/` + `git log` 能复盘「目标、历史、下一步」。
- **最小命令**（Kit 仓）：

```powershell
cd D:\GitRepo\Illusion-Cursor-dev-kit
git status
git log -n 5 --oneline
git log -n 10 --oneline -- content/plan.md
git log -n 10 --oneline -- content/dev/automation-three-steps.md
```

- **通过判据**：
  - 你能把上面几条 log 与 `content/plan.md` 中「自动化-1」迭代记录逐条对上（提交说明即为叙事）。
  - 提交说明为中文，且每次提交有明确可验证点（计划/文档更新、脚本能跑通等）。

### Step 2：纯工程验证（不含 UE / AS）

- **目标**：用脚本/检查/非 UE 测试栈验证自动化习惯；**零 UE、零 AS、零 UnrealEditor-Cmd**。
- **最小命令**（Kit 仓示例）：

```powershell
cd D:\GitRepo\Illusion-Cursor-dev-kit
powershell -NoProfile -ExecutionPolicy Bypass -File content\dev\scripts\Invoke-AutomationStep2Sample.ps1
echo "exit=$LASTEXITCODE"
```

- **通过判据**：退出码为 0；并将“跑通结果”回写到 `content/plan.md` 的「自动化-2」验证结果/迭代记录中，再中文提交。

### Step 3：开启 UE + soft-ue-cli（UE 0→2）

- **目标**：在交互式 UE 下完成“自检→只读→观察闭环”，并回写 `content/plan.md` 的「自动化-3」表格。
- **最小命令**（项目根）：

```powershell
cd D:\GitRepo\ManteumTower
py -3 -m soft_ue_cli check-setup
py -3 -m soft_ue_cli project-info
py -3 -m soft_ue_cli get-logs --limit 50
```

- **通过判据**：
  - `check-setup` 通过；
  - `project-info` 能返回工程信息；
  - `get-logs` 能返回日志片段；
  - 将 UE 0/1/2 的状态在 `content/plan.md` 表格中勾选并记录本次命令与结论。

## Step 1：文件版本控制 + 知识库历史

- **载体**：`content/plan.md`（目标与验证）、`content/knowledge/`（决策与易错）、**中文 Git 提交说明**（与 `git log` 对照）。
- **收敛**：多轮小提交，每轮对应 plan 中一项可验证点；回顾用 **plan + knowledge + `git log -- path`**。
- **收尾**：阶段小结可用技能 **summarize-to-knowledge**。
- **本地优先（D:\GitRepo）**：以 `D:\GitRepo\Illusion-Cursor-dev-kit` 与 `D:\GitRepo\ManteumTower` 为主，减少对 GitHub 环境的依赖（见 [git-automation.md](git-automation.md)）。

## Step 2：纯 Coding + 版本控制（不含 UE / AS）

- **边界**：不运行 `UnrealEditor.exe` / `UnrealEditor-Cmd`、不涉及 AngelScript 单测、不走 **unattended-ue-automation** / **angelscript-tdd-agent-iteration**。
- **做法**：脚本、静态检查、非 UE 单元测试、仅针对本步产物的 CI 片段等；复杂度由浅入深。
- **示例脚本**（Kit 内占位，可拷贝到项目）：[scripts/Invoke-AutomationStep2Sample.ps1](scripts/Invoke-AutomationStep2Sample.ps1)（返回 0 表示自检通过）。

## Step 3：开启 UE + soft-ue-cli 闭环

- **前置**：交互式 **UnrealEditor.exe**、SoftUEBridge、**`py -3 -m soft_ue_cli check-setup`** 通过。
- **递进**：与 `plan.md` 中 **UE 0→4** 表一致：0 基线 → 1 只读 → 2 观察闭环（PIE/截图等）→ 3 编辑（需规范）→ 4 与 CI 边界（桥不用于 unattended）。
- **文档**：[soft-ue-cli.md](soft-ue-cli.md)；无人值守 AS/日志见 [unattended-ue-automation.md](unattended-ue-automation.md)。

## 交叉引用

| 主题 | 位置 |
|------|------|
| 总进度与三节占位 | [content/plan.md](../plan.md)「三阶段自动化开发流程」 |
| Git 命令与自动化专仓 | [git-automation.md](git-automation.md) |
| UE CLI 命令 | 技能 **soft-ue-cli-ue-bridge** |
