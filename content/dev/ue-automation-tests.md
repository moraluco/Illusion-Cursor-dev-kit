# UE 自动化测试（Pester + E2E）

本文件记录“怎么跑”的操作级流程（**dev**）。通用原则与决策树见 `content/knowledge/13-ue-automation-test-playbook.md`。

---

## 1) 目标

- 提供一套可重复的本地测试入口，验证：**不多开 UE、门禁 skip、只关自己启动的 UE、并发时输出隔离**。
- 将 E2E 变成“可选”，避免日常开发中误伤用户会话。

---

## 2) 入口脚本

位于：

- `content/dev/scripts/Invoke-UEAutomationTests.ps1`

测试用例位于：

- `content/dev/scripts/tests/*.Tests.ps1`

---

## 3) 怎么跑

在 Kit 的 `content/dev/scripts/` 目录执行：

```powershell
# Unit only（默认：不启动 UE）
powershell -NoProfile -ExecutionPolicy Bypass -File .\Invoke-UEAutomationTests.ps1

# Unit + E2E（会真实启动/关闭 UE）
powershell -NoProfile -ExecutionPolicy Bypass -File .\Invoke-UEAutomationTests.ps1 -E2E
```

---

## 4) 约定与注意事项

- **E2E 会启动/关闭 UE**：请在空闲环境执行；如机器上已有 UE 正在跑，E2E 用例会尽量避免打断（用例自身也做了保护）。
- **并发场景要隔离输出目录**：E2E 中并发跑导出时使用临时 `SnapshotDir`，避免文件锁污染结果。
- **常见失败**：
  - 502/timeout：桥端 transient，脚本通常会重试；若仍失败，优先检查 UE/桥健康与端口。
  - 文件锁：说明多个任务写同一 OutDir，需要改成独立目录或串行化写入阶段。

