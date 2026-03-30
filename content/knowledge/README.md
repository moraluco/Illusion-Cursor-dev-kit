# 知识库

本目录用于沉淀研发过程中的**概念、决策、易错点与参考资料**，便于后续查阅和给 AI 提供上下文。

- **迭代计划与任务** → [../plan.md](../plan.md)
- **设计文档** → [../design/](../design/)
- **开发文档** → [../dev/](../dev/)
- **代码/API 参考** → [../reference/](../reference/)

---

## 目录说明


| 文件                                           | 内容                                           |
| -------------------------------------------- | -------------------------------------------- |
| [01-project-architecture-overview.md](01-project-architecture-overview.md) | 项目架构总览（目录结构、C++ 插件、AS 模块、蓝图分布、与 knowledge 其他文档的引用） |
| [02-ue-dev.md](02-ue-dev.md)                 | UE 研发相关概念、目录约定、常用管线与资源规范                     |
| [03-angelscript-ue.md](03-angelscript-ue.md) | AngelScript 与 UE 集成要点、脚本规范、与 reference 的对应关系 |
| [04-decisions.md](04-decisions.md)           | 项目/技术决策记录（架构、选型、约定）                          |
| [05-gotchas.md](05-gotchas.md)               | 易错点、排错备忘与常见问题                                |
| [06-lessons-blueprint-serializer.md](06-lessons-blueprint-serializer.md) | 经验总结：BlueprintSerializer 插件、编译修复；可选 JSON 导出管线（非 Agent 读图主路径） |
| [07-blueprint-query-workflow.md](07-blueprint-query-workflow.md) | 蓝图查询工作流：在线权威（soft-ue-cli）与离线快照（BlueprintSnapshot/.soft-ue-index）的入口选择与决策树 |
| [08-player-3c-animation-system.md](08-player-3c-animation-system.md) | 经验总结：玩家 3C 动画系统（ALS/Linked Anim Graph/AS），扩展模式与调试清单 |
| [09-player-animation-system.md](09-player-animation-system.md) | 玩家动画系统（ALS + AB_Als_Lin + LinkedGraphs + Montage/Notify）：资产结构、刷新链路、曲线与蒙太奇 |
| [10-als-data-config.md](10-als-data-config.md) | ALS 数据配置（移动）：加速度、阻尼、制动 — 配置入口、数据流向、速查表（Lin_MovementSettings_Default / 曲线 X/Y/Z） |
| [11-als-animinstance-framework-and-layering-curves.md](11-als-animinstance-framework-and-layering-curves.md) | ALS-Refactored：`UAlsAnimationInstance` 与 AnimBP 职责、三阶段刷新、Layering 曲线 → `FAlsLayeringState` 数据流 |
| [12-enemy-animation-system-refactor-roadmap.md](12-enemy-animation-system-refactor-roadmap.md) | 敌人通用动画系统重构路线：MM 基底 + ALS 风格分层曲线（目标架构、曲线契约、分阶段实施与验收清单） |
| [13-ue-automation-test-playbook.md](13-ue-automation-test-playbook.md) | UE 自动化测试通用 Playbook：Editor+Bridge vs Editor-Cmd、启动与等待、并发/资源治理、证据采集与清理 |
| [14-git-atomic-commits-tdd.md](14-git-atomic-commits-tdd.md) | Git 原子提交与 TDD：单测门禁、一次提交一个可验证点、误合成大提交后的拆分思路 |

---

## 使用方式

1. **日常沉淀**：研发过程中把关键概念、链接、决策与易错点整理到对应文件。
2. **AI 上下文**：在 Cursor 中 `@` 引用本目录或具体文件，让 AI 基于本地知识库回答。
3. **长程任务**：结合 [../plan.md](../plan.md) 与本目录相关主题；**具体文件级变更**对照 **Git** 历史（`git log` / `git diff`，见 Kit 技能 **git-local-p4-workflow**）。文档与提交不一致时以仓库为准，并视情况更新本目录。
4. **团队同步**：本目录约定可同步至飞书知识库，同步方式由项目自定。

## 维护约定

- 新增主题时可新建 `NN-主题名.md`，并在上表补充一行说明。
- 决策类内容写入 `04-decisions.md`；易错与排错写入 `05-gotchas.md`。
- 与 API/示例强相关的内容放在 [content/reference/](../reference/)，本目录以「概念 + 决策 + 易错」为主。

