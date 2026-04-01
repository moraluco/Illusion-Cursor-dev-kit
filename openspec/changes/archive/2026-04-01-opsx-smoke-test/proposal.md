## Why

验证 Kit 内 OpenSpec CLI、变更目录与 Cursor `/opsx:*` 工作流可正常运行；不涉及 ManteumTower 仓库内文件变更。

## What Changes

- 在 Kit 的 `openspec/changes/` 下保留本占位变更，用于 `validate` / `archive` 冒烟。
- 无对游戏工程代码或资源的修改。

## Capabilities

### New Capabilities

- `kit-openspec-smoke`：占位能力，仅用于校验规格增量与归档流程。

### Modified Capabilities

（无）

## Impact

- **实现位置**：若未来有真实需求，实现与测试在 `D:\Workspace\MT\Engine\ManteumTower`（双根工作区第二根），本 Kit 仓仅保留规格与知识库。
