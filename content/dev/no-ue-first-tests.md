# 本机测试入口（能不进 UE 就不进 UE）

本仓库的本机测试按“是否必须进 UE”分层，优先在 Cursor 内完成。

## 一条命令（推荐）

在仓库根执行：

```powershell
# 默认：L0(可选) + L1(Pester Unit) + L2(纯 C++)
powershell -NoProfile -ExecutionPolicy Bypass -File .\content\dev\scripts\Run-LocalTests.ps1

# 只跑 Pester Unit（跳过 Lint 与 C++）
powershell -NoProfile -ExecutionPolicy Bypass -File .\content\dev\scripts\Run-LocalTests.ps1 -SkipLint -SkipCpp

# 包含 E2E（会启动/关闭 UE，需要 SoftUEBridge）
powershell -NoProfile -ExecutionPolicy Bypass -File .\content\dev\scripts\Run-LocalTests.ps1 -IncludeE2E
```

## 分层说明

- **L0 Lint/静态检查（可选）**
  - 当前实现为 best-effort：若本机安装了 `PSScriptAnalyzer` 则执行，否则自动跳过。
- **L1 脚本单测（Pester Unit）**
  - 入口：`content/dev/scripts/Invoke-UEAutomationTests.ps1`
  - 默认不跑 `-Tag E2E` 的用例（不启动 UE）。
- **L2 纯 C++ 单测（不进 UE）**
  - 入口：`content/dev/scripts/Run-CppUnitTests.ps1`
  - 工程：`content/dev/cpp-tests/`（CMake + doctest 单头）
- **L3 E2E（必须进 UE 才跑）**
  - 通过 `Run-LocalTests.ps1 -IncludeE2E` 启用。

## 产物与复盘

`Run-LocalTests.ps1` 默认把产物输出到临时目录（可用 `-OutDir` 指定），结构为：

- `summary.json`: 每个 step 的状态、退出码、stdout 路径
- `steps/<step>/stdout.txt`: 步骤输出
- `steps/L2-cpp/reports/*.xml`: 纯 C++ 的 JUnit 报告（若可生成）

## 什么时候“必须进 UE”

- 读蓝图/关卡/Actor、导出图结构、截图、PIE：走 **Editor + Bridge**（soft-ue-cli）。
- CI/夜间/无人值守跑测试：走 **UnrealEditor-Cmd**（退出码 + `Saved/Logs`）。

