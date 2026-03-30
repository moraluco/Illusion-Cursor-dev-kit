# 三阶段自动化开发流程（知识库 → 纯 Coding+Git → UE+CLI）

与 [content/plan.md](../plan.md) 中 **「三阶段自动化」** 三节配套；规则见 **ue-dev-kit**、**git-local-repos-and-p4**，技能见 **git-local-p4-workflow**、**soft-ue-cli-ue-bridge**、**angelscript-tdd-agent-iteration**。

## Step 1：文件版本控制 + 知识库历史

- **载体**：`content/plan.md`（目标与验证）、`content/knowledge/`（决策与易错）、**中文 Git 提交说明**（与 `git log` 对照）。
- **收敛**：多轮小提交，每轮对应 plan 中一项可验证点；回顾用 **plan + knowledge + `git log -- path`**。
- **收尾**：阶段小结可用技能 **summarize-to-knowledge**。
- **自动化专仓**：若 CI 在独立 Git 仓库，同样用 commit + README 记录目标与历史（见 [git-automation.md](git-automation.md)）。

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
