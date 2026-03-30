# 决策记录

项目与技术的重要决策（架构、选型、约定），便于回溯原因与上下文。

格式建议：**日期 | 决策摘要 | 原因/约束**（可再补一条「结果/后续」）。

---

## 示例（按项目实际情况增删）

| 日期 | 决策 | 原因/备注 |
|------|------|-----------|
| （示例） | 文档与知识库放在 Kit 的 content/，项目根仅放代码与资源 | 核心与内容分离；Kit 可复用，content 按项目生成且不纳入 Kit 版本控制 |
| （示例） | 使用 Unreal AngelScript 作为脚本层 | 项目需求；API 与集成文档见 content/reference/ |
| （示例） | Agent 读编辑器内蓝图、行为树、关卡等：使用 **soft-ue-cli + SoftUEBridge**，不依赖 BlueprintSnapshot 导出 JSON | 与运行中编辑器一致；详见技能 soft-ue-cli-ue-bridge 与 content/dev/soft-ue-cli.md |
| （示例） | 本地 Git 用于个人高频提交、TDD 与 Cursor 自动化；**Perforce 仍为团队主源** | 与 rule git-local-repos-and-p4、技能 git-local-p4-workflow 一致；不向 P4 交稿前须本地编译与测试 |
| （示例） | 长程任务结合 **content/plan.md**、**content/knowledge/** 与 **Git 历史**（log/diff）对齐「计划 vs 实际」 | 文档可能滞后于提交；以仓库为准并视情况更新 knowledge（见 summarize-to-knowledge） |

---

## 维护

- 新决策在此表或下方分节追加；重大决策可单独一小节简述背景与结论。
- 与「易错点」区分：决策偏「我们选择怎么做」，易错点偏「做了容易出问题、排查时注意什么」。
