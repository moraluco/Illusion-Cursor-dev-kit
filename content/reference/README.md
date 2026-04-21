# 代码与 API 参考

本目录存放**以机器/工具消费为主**的参考内容：示例代码、API 文档、schema、配置片段等，主要供 AI 与自动化工具引用。双影奇境参考代码及项目原 doc 下的 API/文档已迁入此处。

## 目录说明

| 目录/文件 | 用途 |
|----------|------|
| **AS_API/** | **Hazelight 站点离线抓取**，供**无 UE / ASApiQuery 不可用**时检索；**不是**当前工程运行时绑定。**能开 UE 时查「有哪些符号」必须先走技能 as-api-dynamic-query**（见 rule **as-api-dynamic-query-authority**）。含 `API_Index.md`、`API_Docs/`。 |
| **Docs-UE-Angelscript/** | UE 与 AngelScript 集成说明、脚本用法、绑定与最佳实践。含 `content/scripting/`、`content/getting-started/`、`content/cpp-bindings/` 等；查在 UE 中写 AS 的用法时参考。 |
| **（可选）BlueprintSerializer 导出 JSON** | 若启用插件导出，可生成蓝图 JSON 供人工/离线分析；**非** Agent 读图主路径。Agent 读编辑器内蓝图请用 **soft-ue-cli**，见 `content/dev/soft-ue-cli.md` 与 Kit 技能 `soft-ue-cli-ue-bridge`。 |
| （双影奇境/AS_Example 等参考代码） | 按需放在本目录下，便于 AI 与工具直接引用。 |

## 使用方式

- 编写或修改 AngelScript：**核对「API/符号是否存在」**时，**勿**把 `AS_API/` 当作第一依据；见 rule **as-api-dynamic-query-authority** 与技能 **as-api-dynamic-query**。叙事与集成说明查 `Docs-UE-Angelscript/`；离线回退再查 `AS_API/`（并知其为外站快照）。具体写法与示例可参考**项目根**下引擎内脚本（见 [03-angelscript-ue.md](../knowledge/03-angelscript-ue.md)）。
- 在 Cursor 中 @ 引用本目录下文件，或 @ 引用项目根下 `Engine/Engine/Script-Examples/`、`Engine/ManteumTower/Script/` 等 `.as` 文件，可减少幻觉并贴合项目实现。
- 本 Kit 的 rule（`ue-dev-kit.mdc`）约定本目录为 AS 文档与 API 的参考位置，编写 AS 时并可引用项目根下引擎内脚本作为代码参考。
- 需要盘点或分析全项目 Blueprint 时：优先在**运行中的编辑器**侧用 **soft-ue-cli**（如 `query-asset`）；若需离线 JSON，再使用 BlueprintSerializer 导出（Tools → Blueprint Serializer，或控制台 `BP_SLZR.ExportAllBlueprints`）。
