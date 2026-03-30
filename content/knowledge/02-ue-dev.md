# UE 研发 — 概念与约定

研发过程中与 Unreal Engine 相关的概念、目录约定和常用规范，便于 AI 与团队统一理解。

## 项目结构（与本 Kit 配合）

- **项目根**：仅放代码、资源、配置；不含文档与知识库。
- **文档与知识库**：全部在 Kit 的 `content/` 下（plan、design、dev、knowledge、reference）。
- 工作区 = Kit 根 + 项目根（Cursor 多根工作区）。

## 常用 UE 概念

- **模块 (Module)**：C++ 或插件形式的可复用单元；.Build.cs 定义依赖。
- **蓝图 (Blueprint)**：可视化脚本，可继承 C++ 或 AngelScript 暴露的类/接口。
- **资源管线**：Content 目录下的资产（材质、动画、蓝图等）由 UE 编辑器管理。

## 与本 Kit 的对应

- 设计文档（目标、方案、接口、UE 设计要点）→ `content/design/`。
- 实现说明、关键接口、配置、UE 实现要点 → `content/dev/`。
- API/脚本参考、示例代码 → `content/reference/`（如 AS_API、Docs-UE-Angelscript）。

## 扩展

按项目需要在本文件或新文件下补充：命名规范、分支策略、构建/打包流程、资源命名约定等。