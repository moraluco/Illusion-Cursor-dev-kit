# 代码与 API 参考

本目录存放**以机器/工具消费为主**的参考内容：示例代码、API 文档、schema、配置片段等，主要供 AI 与自动化工具引用。双影奇境参考代码及项目原 doc 下的 API/文档已迁入此处。

## 目录说明

| 目录/文件 | 用途 |
|----------|------|
| **AS_API/** | Unreal AngelScript 官方 API 文档（爬取/归档）。含 `API_Index.md` 及 `API_Docs/` 下各类、函数、枚举等说明；查 API 定义时优先查阅。 |
| **Docs-UE-Angelscript/** | UE 与 AngelScript 集成说明、脚本用法、绑定与最佳实践。含 `content/scripting/`、`content/getting-started/`、`content/cpp-bindings/` 等；查在 UE 中写 AS 的用法时参考。 |
| **BlueprintSnapshot（蓝图快照）** | 使用 BlueprintSerializer 插件导出；快照目录位于**项目根** `BlueprintSnapshot`（可在插件设置中配置）。导出后生成各蓝图 JSON、带时间戳的 `BP_SLZR_Manifest_<timestamp>.json` 及固定名 `_index.json`（与 Manifest 同结构，便于固定引用）。JSON 结构见 `FBS_BlueprintData`。在 Cursor 中可通过 @ 快照目录或 @`_index.json` 引用。 |
| （双影奇境/AS_Example 等参考代码） | 按需放在本目录下，便于 AI 与工具直接引用。 |

## 使用方式

- 编写或修改 AngelScript、或涉及 AS 与 UE 交互时，优先在 `AS_API/`、`Docs-UE-Angelscript/` 中查找对应文档；具体写法与示例可参考**项目根**下引擎内脚本（见知识库 [03-angelscript-ue.md](../knowledge/03-angelscript-ue.md) 中「引擎内 AngelScript 作为编写参考」）。
- 在 Cursor 中 @ 引用本目录下文件，或 @ 引用项目根下 `Engine/Engine/Script-Examples/`、`Engine/ManteumTower/Script/` 等 `.as` 文件，可减少幻觉并贴合项目实现。
- 本 Kit 的 rule（`ue-dev-kit.mdc`）约定本目录为 AS 文档与 API 的参考位置，编写 AS 时并可引用项目根下引擎内脚本作为代码参考。
- 需要盘点或分析全项目 Blueprint 时，可使用项目根下 `BlueprintSnapshot` 目录及其中的 `_index.json`（Tools → Blueprint Serializer → Export All Blueprints to Snapshot，或控制台 `BP_SLZR.ExportAllBlueprints` 无参）。
