# UE 自动化测试 Playbook（通用）

本文件沉淀一套**通用**的 UE 自动化测试方法论：如何选择运行模式、如何启动与等待、如何做并发/资源治理、如何采集证据与清理现场。\
具体项目脚本与命令示例见 `content/dev/` 下对应文档。

---

## 1) 先决策：你要跑哪种“进 UE”测试？

把所有“进 UE 自动化”分成两条主线，先选对路，后面步骤才稳定。

### 0. 能不进 UE 就不进 UE（本机默认）

很多验证与门禁并不需要 UE（例如脚本落盘逻辑、原子写入、纯 C++ 工具库）。本机开发优先走统一入口：

- `content/dev/scripts/Run-LocalTests.ps1`（L0/L1/L2/L3 分层）
  - L0：Lint/静态检查（best-effort，工具缺失可跳过）
  - L1：Pester Unit（默认不启动 UE）
  - L2：纯 C++ Unit（CMake + doctest，不进 UE）
  - L3：可选 E2E（需要 UE 时才启用）

只有 L3 才进入下述 “进 UE” 两条主线。

### 0.1 Kit 门禁建议：入口引用断链检测（Unit）

为避免 Skill/Rule/文档入口引用到不存在的 `content/knowledge/*.md`（曾出现“关键决策树文档缺失但被多处引用”的断链），Kit 增加一个 **Pester Unit 门禁**：

- `content/dev/scripts/tests/KnowledgeReferences.Tests.ps1`
  - 扫描 `.cursor/rules`、`.cursor/skills`、`content/dev`、`content/knowledge` 中对 `content/knowledge/*.md` 的引用
  - 断言目标文件存在；缺失时直接失败并列出文件名

本机运行入口不变：`content/dev/scripts/Invoke-UEAutomationTests.ps1`（默认只跑 Unit）。

### A. 交互式 Editor + Bridge（soft-ue-cli / SoftUEBridge）

- **适用**：读编辑器内资产/关卡/Actor、截图、PIE、在线查询 Blueprint 图等。
- **蓝图图结构自动化**：区分「单资产整图 JSON」与「批量/重复读图」——优先按 **`content/knowledge/07-blueprint-query-workflow.md`**（`bp-index` / L2 chunk vs `query-blueprint-graph`），减轻桥负载与脚本耗时。
- **前置**：必须启动 `UnrealEditor.exe`（交互式），并且桥可达。
- **典型风险**：并发请求导致桥端 502/timeout；编辑器状态可能被多个任务互相影响。

### B. 无人值守 Editor-Cmd（UnrealEditor-Cmd / Commandlet）

- **适用**：CI / 夜间构建 / 无人值守跑测试（以退出码 + `Saved/Logs` 为主）。
- **前置**：不依赖桥（桥在 commandlet/unattended 不起服务）。
- **典型风险**：启动慢、卡住不退出、日志定位不清。

参考：`content/dev/unattended-ue-automation.md`（Editor-Cmd）、`content/dev/soft-ue-cli.md`（Bridge）。

---

## 2) 通用骨架：一次自动化测试的生命周期

不论 A/B 走哪条路，都建议把测试流程写成同一套“可复盘”骨架：

1. **选择模式**：A（Editor+Bridge）或 B（Editor-Cmd）
2. **定位路径**：`UnrealEditor(.exe/.Cmd.exe)`、`.uproject`
3. **并发与资源治理**：
   - 单实例/门禁/互斥（避免多开）
   - 输出隔离（避免并发抢写）
4. **等待就绪**：
   - A：桥可达（status/check-setup）
   - B：进程进入可用阶段（通常以退出码与日志为准）
5. **执行测试/导出**：最小闭环、可重试
6. **证据采集**：stdout、日志、导出文件路径
7. **收尾清理**：只关“我启动的”实例；临时目录可清理

---

## 3) 并发与资源治理（最容易踩坑）

### 3.1 单实例：互斥拿不到就不要继续启动

并发启动时若“互斥拿不到仍继续”，会直接出现**同工程双开**。正确策略：

- **同工程复用**（已存在则复用）
- **强互斥**：拿不到锁就等待或失败（不要继续启动）
- **二次复用检查**：在门禁等待后、真正 Start-Process 前，再检查一次是否已有人启动完成

对应实现参考：`content/dev/scripts/Start-UnrealEditor.ps1`。

### 3.2 门禁：内存阈值 + 并发上限

- 并发上限（例如最多 2 个 UE）+ 可用内存阈值（例如 <3GB 就等待）
- 等待超时后要明确行为：失败 vs skip（退出码 0）——两者适用场景不同

### 3.3 输出隔离：并发测试不要写同一套输出文件

并发跑导出/索引时，最常见的“假干扰”其实是**文件锁**（抢写 `.ndjson/.txt`）。建议：

- 并发任务使用**独立 OutDir**（临时目录或带唯一后缀的目录）
- 只有在“最终归档/产物阶段”再做合并或覆盖写入

---

## 4) Editor-Cmd + AngelScript：门禁与证据（项目实践）

### 4.1 不要只信 exit code

- 无人值守跑 `UnrealEditor-Cmd` 时，**AngelScript 编译失败**在部分环境下**不一定**让进程返回非 0。
- **项目侧**（ManteumTower）`Scripts/Run-UnattendedTests-Min.ps1` 通过 `-AlsoFailOnLogPatterns` 额外失败于日志关键字，例如：
  - `Angelscript: Error:`
  - `Hot reload failed due to script compile errors`
  - `Cannot run when angelscript has failed to compile`
- **Runner** 优先合并 **stdout/stderr**（见 `Run-UnrealEditorCmd-CollectLog.ps1`），避免仅看 `Saved/Logs` 旧文件导致误报/漏报。

### 4.2 验收时保留什么证据

- 失败时：stdout/stderr 路径、Latest log 路径、以及触发失败的关键字行（便于复盘）。
- 成功时：至少保留「最后一条 OK 输出」或 CI 归档策略（由流水线约定）。

---

## 5) 解析与兼容：对 Bridge/CLI 输出做防御式处理

现实中 `soft-ue-cli` 输出结构可能随版本/命令变化、字段缺失或类型变化。通用写法：

- 读属性前先判断是否存在（例如 `Has-Prop`）
- 解析列表时做归一化（`items/assets/results` 兼容）
- 把 502/timeout/503 视为 transient，按指数退避重试

对应实现参考：`content/dev/scripts/Export-BlueprintTextIndex.ps1`、`Export-BlueprintTextIndex-PerAsset.ps1`、`Export-BlueprintDeepIndex.ps1`。

---

## 5.1) Kit 侧：蓝图文本索引 / 深索引的 E2E 与 Unit 分层

- **Unit（不启 UE）**：用 **stub `py`**（`Set-Alias` 指向 `.cmd` 假实现）模拟 `soft_ue_cli` 的 JSON  stdout，验证落盘路径、rollup 与 per-asset 一致性、无残留 `*.partial`。
- **E2E（复用 Editor + Bridge）**：`Invoke-UEAutomationTests.ps1 -E2E` 会跑 `Refresh-BlueprintTextIndex`、`Export-BlueprintTextIndex-PerAsset`、`Export-BlueprintDeepIndex` 等；全量刷新可能 **极慢**（资产数量 × HTTP），适合夜间或按需执行。
- **保存队列**：`changed_assets.ndjson` 依赖 **项目内 SoftUEBridgeEditor 已编译并加载**；未部署该钩子时，应对「队列文件不存在」做 **非致命** 处理，避免整条套件红灯。
- **证据**：成功/失败都保留 stdout 与 `.soft-ue-index/` 下关键文件路径，便于与 `05-gotchas.md` 对照。

---

## 6) PowerShell 约定（避免测试环境专有坑）

### 6.1 不要使用 `$pid/$Pid` 变量名

PowerShell 的 `$PID` 是只读自动变量，且大小写不敏感；在 job/Pester 环境下尤其容易报 “只读变量不可写”。建议统一使用：

- `processId`
- `editorProcessId`

---

## 7) 验收清单（可复制）

- **并发启动**：并发触发 2 次启动，最终只启动 1 个 UE（同 pid 复用）
- **门禁 skip**：触发门禁时返回 0 且不启动 UE；上游保持旧产物不动
- **生命周期**：只关闭“本脚本启动”的 UE，不误关用户手动打开的
- **并发导出**：并发跑导出时不发生文件锁（OutDir 隔离）
- **失败可复盘**：输出中能定位到使用的 `.uproject`、pid、OutDir、以及最后的错误原因

---

## 8) 交叉引用

- `content/dev/soft-ue-cli.md`
- `content/dev/unattended-ue-automation.md`
- `content/dev/scripts/Invoke-UEAutomationTests.ps1`
- `content/knowledge/05-gotchas.md`
- `content/knowledge/15-retro-automation-workflow.md`

