---
name: ue-editor-launch
description: Locate and start UnrealEditor.exe reliably for this project (env override + known fallback path), then verify SoftUEBridge reachability before running soft-ue-cli workflows. Use when the user asks to start UE, when soft-ue-cli returns timeouts/502, or when automation requires an interactive editor.
---

# UE Editor 启动与可达性（本项目）

## 目标

- **永远能找到并启动**交互式 `UnrealEditor.exe`。
- 在执行任何 `soft-ue-cli` 读图/关卡/PIE 操作前，先把 **SoftUEBridge** 恢复为可达状态。
- **Agent 行为**：当 `py -3 -m soft_ue_cli check-setup` **失败**（含 502）且用户需要**蓝图事实**时，**必须**先走本技能恢复连接（或启动新实例），**再**重试 `check-setup`；**不要**改用对 `.uasset` 扫字符串等未验证方法作为结论依据（见技能 **soft-ue-cli-ue-bridge** §5）。

## 1) 定位 UnrealEditor.exe（优先级）

按以下优先级取第一个存在的路径：

1. 环境变量 `UE_EDITOR_EXE`
2. 本项目兜底路径：
   - `D:\Workspace\MT\Engine\Engine\Engine\Binaries\Win64\UnrealEditor.exe`

若都不存在：停止并提示用户修复安装/路径。

## 2) 启动项目

项目 `.uproject`（本项目）：

- `D:\Workspace\MT\Engine\ManteumTower\ManteumTower.uproject`

**优先（推荐）**：在 Kit 仓库中执行 **`content/dev/scripts/Start-UnrealEditor.ps1`**（同工程复用、避免多开、内存门禁，见 `content/dev/soft-ue-cli.md` §自动化）— 将 `ManteumTower.uproject` 传给脚本（按该脚本参数说明）。

**备选**：直接 `Start-Process`：

- `Start-Process -FilePath $UnrealEditorExe -ArgumentList @($UProjectPath)`

## 3) 等待桥可用并自检

启动后按以下顺序检查：

- `py -3 -m soft_ue_cli check-setup`
- `py -3 -m soft_ue_cli status`

若出现 `502 Bad Gateway` / `timed out`：

- 视为 UE/桥处于异常态（未完全启动、端口被占用、桥崩溃等）
- 采取“重启编辑器 → 再 check-setup”的恢复策略

## 4) 与索引/搜索联动

若目标是让 Cursor 能全局搜索蓝图函数/变量/注释：

- 启动 UE 并保证桥可用
- 运行 Kit 的索引脚本：`content/dev/scripts/Export-BlueprintTextIndex.ps1`

