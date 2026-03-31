# Subagents 旁路增效：最短 Runbook（入口不变）

本文件给出 3 个“最短可抄”的例子：你仍然运行原入口命令；Subagents 只把输出整理成统一 6 段（Command/Result/EvidencePaths/PrimaryError/Pointers/NextStep）。

对应权威 skill：`.cursor/skills/subagents-workflow-augmentation/SKILL.md`。

---

## Runbook 1：soft-ue-cli 在线查询（读蓝图变量/函数）

### Command（入口不变）

```powershell
cd D:\Workspace\MT\Engine\ManteumTower
py -3 -m soft_ue_cli check-setup
py -3 -m soft_ue_cli query-blueprint /Game/Blueprints/BP_Character --include functions --include variables --search "*Health*"
```

### Result（你关注什么）

- `check-setup` 通过（桥可达）
- `query-blueprint` 输出中包含匹配的函数/变量条目

### EvidencePaths（你留什么证据）

- 若仅在线查询：保留 stdout 摘要即可
- 若需要离线检索：按 `content/dev/soft-ue-cli.md` 导出 `.soft-ue-index/` 或 `BlueprintSnapshot/`

### PrimaryError（失败时看哪一段）

- `502 Bad Gateway` / `timed out` / `running:false`

### Pointers（旁路定位给你的 3 个入口）

- `content/dev/scripts/Start-UnrealEditor.ps1`（可选 `-WaitForBridge`）
- 技能 `.cursor/skills/ue-editor-launch/SKILL.md`
- 技能 `.cursor/skills/soft-ue-cli-ue-bridge/SKILL.md`

### NextStep（最小动作）

- 桥不可达：按 `Start-UnrealEditor.ps1 -WaitForBridge` 恢复，再复跑同一条 `query-blueprint` 命令

---

## Runbook 2：AngelScript 测试失败定位（TDD）

### Command（入口不变）

```powershell
cd D:\Workspace\MT\Engine\ManteumTower
.\Scripts\RunAngelscriptTests.ps1
```

### Result（你关注什么）

- `ANGELSCRIPT_TEST_RESULT: PASS/FAIL`
- 退出码：0（全过）/1（编译失败）/2（有测试失败）
- 失败用例名：`ANGELSCRIPT_FAILED_TESTS:` 列表

### EvidencePaths（你留什么证据）

- 控制台输出中：失败用例名 + 首要断言/编译错误段（含文件/行号时必须带上）

### PrimaryError（失败时看哪一段）

- 第一个 `[FAILED] ...` 前的错误信息（通常是根因：编译/断言）

### Pointers（旁路定位给你的 3 个入口）

- 技能 `.cursor/skills/angelscript-tdd-agent-iteration/SKILL.md`（退出码/关键字口径）
- `Script/**/*.as` 中的 `Test_<Name>(FUnitTest& t)`（用失败用例 `Test_XXX` 反查）
- 技能 `.cursor/skills/subagents-workflow-augmentation/SKILL.md`（结构化输出模板）

### NextStep（最小动作）

- 只做一个最小修改（修测试或修实现）→ 保存 → 复跑 `.\Scripts\RunAngelscriptTests.ps1`（≤5 轮）

---

## Runbook 3：Retro（复盘沉淀条目模板）

### Command（入口不变）

无固定命令。入口是技能：`.cursor/skills/retro-automation-workflow/SKILL.md`

### Result（你要产出什么）

- 一条可复用“坑”或“步骤”，并写回到正确位置（gotchas/dev/knowledge/skill/rule）

### EvidencePaths（你留什么证据）

- 本次任务的关键命令、产物路径、日志/索引/快照目录（必要时附 `git log/diff` 证据点）

### PrimaryError（如果是失败复盘）

- 失败的首要错误段 + 触发条件（比如桥 502、并发写同一 OutDir、编码问题等）

### Pointers（旁路给你的 3 个入口）

- `.cursor/skills/retro-automation-workflow/SKILL.md`（边界与模板）
- `content/knowledge/05-gotchas.md`（现象→根因→解决→预防→验证）
- `content/knowledge/15-retro-automation-workflow.md`（闭环图与门禁口径）

### NextStep（最小动作）

按固定结构写一条：

- 现象 → 根因 → 解决 → 预防 → 验证（命令/检查点）

