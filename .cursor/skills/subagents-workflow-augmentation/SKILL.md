---
name: subagents-workflow-augmentation
description: >-
  入口不变的前提下，用 Subagents 做“旁路增效”：并行取证摘要、代码/文档定位、复盘写回建议。
---

# Subagents 旁路增效（入口不变）

## 目标

- **不改变现有入口**：你仍然按原方式运行 `soft-ue-cli`、AS 测试脚本、以及 retro 复盘流程。
- **只增效不增复杂度**：Subagents 仅做“旁路增强层”，把串行的人肉步骤（看输出→摘取证据→搜代码→整理复盘）并行化与模板化。

---

## 总体原则（稳定优先）

- **主链路只做一次**：所有“权威动作”（跑命令、生成产物）仍由你原来的入口命令完成。
- **旁路默认只启用两类**：
  - `shell`：执行/复跑命令、抓取 stdout/退出码/日志路径、抽取首要错误段
  - `explore`：基于错误关键字/失败用例/资产路径，定位源码与文档入口（不猜测在线事实）
- **桥不可达**（502/timeout）时：
  - **不要**用**原始 `.uasset` 扫字符串**冒充「当前编辑器内」已核实的蓝图事实。
  - **离线索引 / BlueprintSnapshot** 仍可用于搜索与复盘（标注可能滞后）；主链路应 **恢复 SoftUEBridge**：技能 **ue-editor-launch** 或 **`Start-UnrealEditor.ps1`**，然后重试 `check-setup` 与 `query-*`。
  - 旁路产出“阻塞原因 + 已尝试步骤 + 日志路径 + 可用离线产物路径”。

---

## 统一输出模板（所有入口复用）

每次旁路增效输出都固定为以下 6 段（避免刷屏、便于复制到 issue/复盘）：

- **Command**：原始命令（保持不变，可复制）
- **Result**：退出码 / PASS-FAIL 信号（例如 `ANGELSCRIPT_TEST_RESULT`）
- **EvidencePaths**：日志/索引/快照/截图目录（明确到路径）
- **PrimaryError**：首要错误段（1 段，不超过 20 行）
- **Pointers**：3 个最相关入口（源码/脚本/skill/dev/knowledge 路径）
- **NextStep**：最小动作 + 复跑同一入口命令

---

## 场景 A：soft-ue-cli（在线查询 / 取证 / 落盘）

### 主链路（入口不变）

- `py -3 -m soft_ue_cli check-setup`
- 然后执行目标命令：`query-* / find-references / export-*`（参见 `content/dev/soft-ue-cli.md`）

### 旁路（Subagents）

- `shell` 产出：
  - 项目根、桥 URL（或端口）、命令原文、退出码/关键字段、产物路径（例如 `.soft-ue-index/`、`BlueprintSnapshot/`）、首要错误段
- `explore` 产出：
  - 资产路径/类名/函数名所对应的源码/AS/文档入口；并附“在线/离线边界提示”（来自 `soft-ue-cli-ue-bridge`）

### 恢复策略（桥不可达）

- 明确标注“当前尚未通过桥取得编辑器内事实”
- **恢复入口（必须优先）**：
  - `content/dev/scripts/Start-UnrealEditor.ps1`（同工程复用、少多开）
  - 技能 `ue-editor-launch`
- 恢复后重跑 `check-setup` → 成功再执行 `query-*`

---

## 场景 B：AngelScript TDD（RunAngelscriptTests / AngelscriptTest）

### 主链路（入口不变）

- 运行 `Scripts\RunAngelscriptTests.ps1`（或 `AngelscriptTest` commandlet）
- 按退出码与 `ANGELSCRIPT_FAILED_TESTS` 迭代（≤5 轮）

### 旁路（Subagents）

- `shell` 产出：
  - 退出码、`ANGELSCRIPT_TEST_RESULT`、失败用例列表、首要编译/断言错误段（包含文件/行号时一并带出）
- `explore` 产出：
  - 失败用例 `ModuleName.Test_XXX` 对应测试 `.as` 的位置
  - 关联的被测实现入口、可能的最小改动点候选（不直接改）

---

## 场景 C：Retro（复盘沉淀：取证→门禁→提交→写回 Kit）

### 主链路（入口不变）

- 按技能 `retro-automation-workflow`：只迭代 workflow（`content/`、`.cursor/skills`、`.cursor/rules`），默认不动业务工程代码。

### 旁路（Subagents）

- `shell` 产出：
  - 对齐“证据事实”：本次命令、产物路径、必要的 `git log/diff` 证据点（只读）
- `explore` 产出：
  - 去重扫描：现有 knowledge/dev/skills/rules 是否已覆盖同类坑
  - 写回位置建议：`05-gotchas` / `07-blueprint-query-workflow` / `13-ue-automation-test-playbook` / `15-retro-automation-workflow` / 某个 skill

### 复盘条目模板（固定）

- 现象 → 根因 → 解决 → 预防 → 验证（命令/检查点）

---

## 最短示例（runbook）

见：`content/dev/subagents-workflow-augmentation-runbooks.md`

---

## 交叉引用

- soft-ue-cli 在线权威与边界：技能 `soft-ue-cli-ue-bridge`、`content/dev/soft-ue-cli.md`
- AS 测试权威入口：技能 `angelscript-tdd-agent-iteration`
- 复盘沉淀权威入口：技能 `retro-automation-workflow`
