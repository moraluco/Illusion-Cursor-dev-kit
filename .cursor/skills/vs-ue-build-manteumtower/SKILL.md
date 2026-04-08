---
name: vs-ue-build-manteumtower
description: ManteumTower 专用：在 Windows 上用 moraluco/vs-ue-build（tools/ue-build）调用 UBT Build.bat 只编游戏 Editor（ManteumTowerEditor），stdout 一行 JSON。用户或 Agent 改 C++/项目插件需验证编译时使用；执行 npm run compile:editor（工程根；别名 compile:as-editor）。与 ue-editor-launch 的引擎路径约定一致时设 ENGINE_AS_ROOT。
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
| `package.json` 脚本 | **`compile:editor`**（推荐）→ `cli.mjs --target **ManteumTowerEditor**`；`compile:as-editor` 为历史别名 |
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
   npm run compile:editor
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

## 与 git-commit-zh 联动（小步检查点，防进度丢失）

自动化/长程任务里，**仅存在于对话或未提交的磁盘改动**在会话结束、切分支、清工程时容易丢失；C++ 一旦漏提交，`git log`/`git diff` 无法恢复中间态，排错成本陡增。

**强约定（Agent 执行 C++ / 插件工作时默认遵守）：**

1. **粒度**：一次会话内每完成一个**可叙述的切片**（例如：新增一个 `.h/.cpp`、只改 `Build.cs` 依赖、只修一个编译错误），优先 **先提交再进入下一切片**。
2. **触发顺序**：`改代码` → **能编则编**（本技能 `npm run compile:editor`）→ **编译通过或源码已稳定** → **`git add` 仅与本切片相关的路径** → **`git commit`（中文 subject，见 skill git-commit-zh）** → 再继续下一任务。
3. **编不过也要落盘**：若被 Live Coding mutex、环境等挡住编译，仍应对**当前已稳定的源码**做**小步提交**，subject/body 注明「待本地关闭 Live Coding 后 UBT 验证」等，避免「只改了没提交」。
4. **禁止**：在同一轮自动化里堆大量 C++ 改动却**零提交**；禁止把无关的 `Content/`、脚本与 C++ 混进同一提交（必要时拆成多次 commit）。

**可靠性**：检查点提交让 `git log -p`、`git bisect`、人工接手时都能对齐「哪一步开始坏」，比依赖 Agent 上下文更可靠。
