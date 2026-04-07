---
name: vs-ue-build-manteumtower
description: ManteumTower 专用：在 Windows 上用 moraluco/vs-ue-build（tools/ue-build）调用 UBT Build.bat 只编游戏 Editor（ManteumTowerEditor），stdout 一行 JSON。用户或 Agent 改 C++/项目插件需验证编译时使用；执行 npm run compile:as-editor（工程根）。与 ue-editor-launch 的引擎路径约定一致时设 ENGINE_AS_ROOT。
---

# ManteumTower：VS / UBT 命令行编译

## 权威来源

| 内容 | 位置 |
|------|------|
| 工具与契约 | 游戏仓库 `Engine/ManteumTower/tools/ue-build/`（来自 [vs-ue-build](https://github.com/moraluco/vs-ue-build)） |
| REQUIREMENT / README | `tools/ue-build/REQUIREMENT.md`、`tools/ue-build/README.md` |
| 通用 AS-learn 技能（Observer、边界） | 同目录随工具分发的 **`vs-ue-build-as`**：`Engine/ManteumTower/.cursor/skills/vs-ue-build-as/SKILL.md` |

## 何时使用

- 修改 **`Source/`** 或 **`Plugins/`** 下 C++ 后需要 **UBT 编译验证**。
- 用户说 **编译、VS、UBT、编 Editor、插件 C++** 且目标为 **ManteumTower**。
- **Agent 不得**因「要编译」就停手：应在工程根 **执行下方命令**，根据 **stdout 单行 JSON** 的 `errors` 继续修或汇报。

## 本工程约定（已配置）

| 项 | 值 |
|----|-----|
| 游戏仓库根（含 `ManteumTower.uproject`） | `D:\Workspace\MT\Engine\ManteumTower\` |
| `package.json` 脚本 | `compile:as-editor` → `cli.mjs --target **ManteumTowerEditor**` |
| Editor 目标名 | `ManteumTowerEditor`（与 `Source/ManteumTowerEditor.Target.cs` 一致） |

**引擎根**（含 `Engine\Build\BatchFiles\Build.bat` 与 `Engine\Binaries\Win64\UnrealEditor-Cmd.exe`）：与技能 **ue-editor-launch** 一致，本机常用为 **`D:\Workspace\MT\Engine\Engine`**；以目录真实存在为准。未探测到时设置：

```powershell
$env:ENGINE_AS_ROOT = 'D:\Workspace\MT\Engine\Engine'
# 或
$env:AS_LEARN_UE_ENGINE_ROOT = 'D:\Workspace\MT\Engine\Engine'
```

再执行编译。

## 代理执行清单

1. **工作目录**：`Set-Location` 到 **`D:\Workspace\MT\Engine\ManteumTower`**（与 `.uproject`、`package.json` 同级）。
2. **编译**（推荐）：
   ```powershell
   npm run compile:as-editor
   ```
   或显式：
   ```powershell
   node tools/ue-build/cli.mjs --target ManteumTowerEditor --engine-root "<引擎根>" --uproject "D:\Workspace\MT\Engine\ManteumTower\ManteumTower.uproject"
   ```
3. **解析**：终端 **最后一行** 为 JSON（`success`、`exitCode`、`errors`）；失败时据 `errors` 定位文件与行号。
4. **快环单测**（改了解析器/契约时）：在工程根先 `npm install`，再 `npm run test:ue-build`（Vitest）。
5. **不要**默认全量清编引擎；不要改用无 `.uproject` 的纯引擎目标作为日常入口（见随包 `vs-ue-build-as` §范围）。

## 与 write-angelscript

- 仅 **`.as`** 且无 C++ 变更时，通常**不需要**跑本技能。
- 改了 **C++ / 插件** 后需要编过 Editor 再测 AS 与引擎交互时，用本技能。
