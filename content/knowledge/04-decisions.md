# 决策记录

项目与技术的重要决策（架构、选型、约定），便于回溯原因与上下文。

格式建议：**日期 | 决策摘要 | 原因/约束**（可再补一条「结果/后续」）。

---

## 示例（按项目实际情况增删）

| 日期 | 决策 | 原因/备注 |
|------|------|-----------|
| （示例） | 文档与知识库放在 Kit 的 content/，项目根仅放代码与资源 | 核心与内容分离；Kit 可复用，content 按项目生成且不纳入 Kit 版本控制 |
| （示例） | 使用 Unreal AngelScript 作为脚本层 | 项目需求；API 与集成文档见 content/reference/ |
| （示例） | 蓝图快照导出用 BlueprintSerializer，快照目录放在项目根 BlueprintSnapshot | 便于 Cursor 读取全项目蓝图 JSON；避免用 Saved 以便纳入版本或独立管理；可 .gitignore BlueprintSnapshot/ |
| （示例） | 蓝图可读化作为「AngelScript 全面重构蓝图」阶段 0 前置：先导出再盘点再迁移 | 蓝图逻辑在 .uasset 内 Cursor 不可读，需先转为文本/JSON 再谈重构与迁移 |
| （示例） | 蓝图快照增加 Agent 友好格式：_index 含 _schema/_agentReadme、每条含 exportFileName/summary；单蓝图含 _agentSummary | 便于 Cursor/Agent 先读索引与摘要再按需打开单文件，理解项目结构；见 knowledge/07-blueprint-snapshot-for-agent.md |

---

## 维护

- 新决策在此表或下方分节追加；重大决策可单独一小节简述背景与结论。
- 与「易错点」区分：决策偏「我们选择怎么做」，易错点偏「做了容易出问题、排查时注意什么」。
