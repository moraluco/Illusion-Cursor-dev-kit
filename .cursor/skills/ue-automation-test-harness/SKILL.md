---
name: ue-automation-test-harness
description: >-
  通用“进 UE 做自动化测试”工作流：选择 Editor+Bridge vs Editor-Cmd，启动与等待、并发/资源治理、证据采集与清理；并提供 Pester Unit/E2E 测试入口。
---

# UE 自动化测试 Harness（通用）

本技能用于任何“进 UE 做自动化测试/自动化验证”的任务，目标是：**稳定、可复盘、可并发控制、可清理**。

---

## 0) 先选模式（最重要）

### A. 交互式 Editor + SoftUEBridge（soft-ue-cli）

适合：查询/导出编辑器内资产数据、PIE、截图、关卡 Actor 查询等。\
入口参考：技能 `soft-ue-cli-ue-bridge` 与 `content/dev/soft-ue-cli.md`。

### B. 无人值守 UnrealEditor-Cmd（Commandlet）

适合：CI/夜间构建/无人值守测试，以**退出码 + Saved/Logs**为主。\
入口参考：`content/dev/unattended-ue-automation.md`。

---

## 1) 启动与可达性（Editor 模式）

- 统一用脚本 `content/dev/scripts/Start-UnrealEditor.ps1` 启动与复用编辑器：
  - 同工程复用
  - 门禁（并发上限 + 内存阈值）
  - 强互斥（避免并发双开）
  - 输出 `startedNew/pid/skipped`
- 需要桥时加 `-WaitForBridge` 并设置合理超时。

---

## 2) 并发与资源治理（必须项）

- **不要多开**：互斥拿不到不要继续启动（等待或失败）。
- **输出隔离**：并发任务不要写同一套输出文件；用独立 OutDir/临时目录。
- **生命周期**：只关闭“本次脚本启动”的 UE（基于 `startedNew + pid`）。

---

## 3) 如何写“可复盘”的自动化

建议每个自动化脚本都输出以下信息（stdout 即可）：

- UnrealEditor 路径、UProject 路径
- pid、是否 startedNew、是否 skipped（原因）
- OutDir / 产物路径
- 失败时：最后的错误与重试次数

---

## 4) 自动化测试（Pester）

入口脚本：

- `content/dev/scripts/Invoke-UEAutomationTests.ps1`

默认仅跑 Unit；使用 `-E2E` 跑真实启动/关闭 UE 的用例。\
详见 `content/dev/ue-automation-tests.md`。

