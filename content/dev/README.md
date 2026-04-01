# 开发文档

本目录存放开发与实现说明，与 [../plan.md](../plan.md) 及 [../design/](../design/) 对应。

**Rule / Skill / knowledge 对照表**（自动化与 Git 入口）：[../knowledge/README.md](../knowledge/README.md) §「Cursor 规则与技能（索引）」。

## 目录说明

（按本项目需要增删条目）

| 文件 | 内容 |
|------|------|
| [soft-ue-cli.md](soft-ue-cli.md) | soft-ue-cli / SoftUEBridge：自检、端口、常用命令备忘 |
| [unattended-ue-automation.md](unattended-ue-automation.md) | 无人值守：UnrealEditor-Cmd、Saved/Logs、CI 归档与 tail；与桥式读图分工 |
| [scripts/Run-UnrealEditorCmd-CollectLog.ps1](scripts/Run-UnrealEditorCmd-CollectLog.ps1) | 封装 Editor-Cmd、可选日志关键字检查、失败时 tail |
| [automation-three-steps.md](automation-three-steps.md) | **三阶段自动化**：知识库+Git → 纯 Coding+Git（不含 UE/AS）→ UE+CLI；与 `plan.md` 三节对应 |
| [pitfall-capture.md](pitfall-capture.md) | **踩坑记录工作流**：inbox 快记录 → knowledge 稳沉淀；附一键追加脚本 |
| [pitfalls-inbox.md](pitfalls-inbox.md) | 踩坑随手记录区（进行中/未收敛的问题先记这里） |
| [scripts/Add-Pitfall.ps1](scripts/Add-Pitfall.ps1) | 一键往 pitfalls inbox 追加一段模板 |
| [git-automation.md](git-automation.md) | Git 与长程上下文；**自动化优先**与**自动化专仓**（独立仓库管 CI/工作流）；拆分大提交、UTF-8 无 BOM 提交信息 |
| [../knowledge/15-retro-automation-workflow.md](../knowledge/15-retro-automation-workflow.md) | 复盘自动化工作流：取证→门禁→原子提交（Mermaid）；技能 **retro-automation-workflow** |
| [player-overlay-mode-extension.md](player-overlay-mode-extension.md) | 新增 OverlayMode 的操作步骤、C++ 验证、AS 中调试显示 OverlayMode |
| [editor-tools/blueprint-export-serializer.md](editor-tools/blueprint-export-serializer.md) | 蓝图导出与 BlueprintSerializer 使用与排错（非 Agent 读图主路径） |
| [ue-automation-tests.md](ue-automation-tests.md) | UE 自动化测试：Pester Unit/E2E、并发/输出隔离、如何跑与注意事项 |
| [subagents-workflow-augmentation-runbooks.md](subagents-workflow-augmentation-runbooks.md) | Subagents 旁路增效：入口不变（soft-ue-cli / AS TDD / Retro）的最短 runbook 与统一输出模板 |
| [scripts/Refresh-BlueprintTextIndex.ps1](scripts/Refresh-BlueprintTextIndex.ps1) | 全量“快路径”刷新 `.soft-ue-index/blueprints.*`（函数/变量/callables），默认不导节点标题/注释 |
| [scripts/Export-BlueprintTextIndex-PerAsset.ps1](scripts/Export-BlueprintTextIndex-PerAsset.ps1) | 结构化索引：每资产 `summary.*` + 全局 `blueprints.rollup.*`（增量友好） |
| [scripts/Consume-BlueprintChangeQueue.ps1](scripts/Consume-BlueprintChangeQueue.ps1) | 消费 `.soft-ue-index/changed_assets.ndjson`，只刷新变更蓝图（配合保存事件） |
| [scripts/Export-BlueprintDeepIndex.ps1](scripts/Export-BlueprintDeepIndex.ps1) | 按需导出单资产 `graphs/*.graph.json`（pins/连线/defaults，可离线 grep） |

## 编写建议

- 可含：实现说明、关键接口、配置方式、UE 实现要点等。
- 开发文档约定可同步至飞书；同步方式由项目自定。
