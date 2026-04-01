# OpenSpec 与 ManteumTower（Kit 内规格 / 游戏仓干净）

## 边界

| 位置 | 内容 |
|------|------|
| **Illusion-Cursor-dev-kit（本 Kit）** | `package.json` 锁定 `@fission-ai/openspec`；`openspec/`（`specs/`、`changes/`、`changes/archive/`）；`.cursor/commands`（`/opsx:*`）与 `.cursor/skills/openspec-*`。 |
| **ManteumTower（游戏工程）** | **不**提交 `openspec/`、不执行 `openspec init`。仅承载实现与资源；规格描述「针对本产品」，物理文件留在 Kit。 |

工作区：**File → Add Folder to Workspace** 同时打开 Kit 根与 `D:\Workspace\MT\Engine\ManteumTower`，在对话中可 `@` `content/knowledge/`、`openspec/changes/…`（有活跃变更时）等。

## 依赖与命令入口

- **Node.js**：≥ 20.19（与 OpenSpec 包要求一致）。PATH 需包含 `node`，否则 `npm` 的 postinstall 可能失败。
- **安装依赖**（Kit 根）：`npm install`
- **可选**：关闭遥测 `set OPENSPEC_TELEMETRY=0`（或 `DO_NOT_TRACK=1`）。

常用 npm 脚本（见 Kit 根 `package.json`）：

- `npm run openspec -- <args>` — 等价 `openspec <args>`
- `npm run openspec:validate` — `openspec validate --all`
- `npm run openspec:validate:strict` — `openspec validate --all --strict`

## 与 TDD / 现有自动化衔接

- **写代码**：技能 **write-angelscript**；**angelscript-api-query** 查 API。
- **跑 AS 测试并迭代**：**angelscript-tdd-agent-iteration**；项目根脚本 `Scripts\Run-UnattendedTests-Min.ps1 -Mode AS`（路径相对于 **ManteumTower**）。
- **Git 原子提交与中文信息**：**git-local-p4-workflow**。

在 OpenSpec 的 `design.md` / `tasks.md` 中写明：验收场景对应哪条测试或哪条脚本，避免规格与门禁脱节。

## 回归验收（A–D，可复现）

在 **Kit 根**执行（PowerShell 建议先：`$env:Path = "$env:ProgramFiles\nodejs;" + $env:Path` 若 `node` 不在 PATH）：

**A. CLI**

1. `npx openspec --version`
2. `npx openspec validate --all` 与 `npx openspec validate --all --strict`
3. `npx openspec validate --changes`（无活跃变更时可能提示 nothing to validate，退出码 0）
4. `npx openspec list`；`npx openspec list --specs`
5. `npx openspec status`：**无活跃变更时可能失败（非零退出）**，属预期；有变更时用 `npx openspec status --change <名称>`
6. 有变更时：`npx openspec show <名称>`、`npx openspec instructions <artifact> --change <名称>`（artifact 为 `proposal` | `specs` | `design` | `tasks`）

**B. Cursor 集成**

7. 存在 `.cursor/commands/opsx-*.md`
8. 存在 `.cursor/skills/openspec-*`，且与既有 `write-angelscript` 等技能**并存**
9. `.cursor/rules/ue-dev-kit.mdc`、`git-local-repos-and-p4.mdc` 等仍存在

**C. 工作流**

10. 新建冒烟：`npx openspec new change <名称>`，按 `openspec instructions … --json` 补齐工件后 `npx openspec validate <名称> --type change --strict`
11. 归档：`npx openspec archive <名称> --yes`（未完成任务时会有警告，测试可用 `--yes`）
12. `npx openspec schema validate`（可为「无项目 schema」提示，退出码 0）；`npx openspec templates`

**D. Kit 回归**

13. 抽样打开 `.cursor/skills/write-angelscript/SKILL.md`、`.cursor/skills/git-local-p4-workflow/SKILL.md` 确认完整
14. `git status`（Kit）无意外的大文件；`node_modules/` 已忽略

**合并后的规格示例**：归档冒烟变更后，`openspec/specs/kit-openspec-smoke/spec.md` 为当前仓库中的示例能力规格。

## 知识沉淀

变更归档后，跨需求仍适用的结论写入 `content/knowledge/`（如 `04-decisions.md`、`05-gotchas.md`），与 **summarize-to-knowledge** 一致。
