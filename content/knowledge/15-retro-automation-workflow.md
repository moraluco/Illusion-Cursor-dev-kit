# 复盘与自动化工作流进化（Retro）

本文件沉淀「**复盘踩坑 → 迭代自动化工作流 → 写回 Kit**」的**可重复套路**，与技能 **retro-automation-workflow** 配套；易错点摘要仍在 [05-gotchas.md](05-gotchas.md)。

## 文档结构

| 章节 | 说明 |
|------|------|
| [何时做](#何时做) | 何时做 Retro |
| [输出物（最小集）](#输出物最小集) | 复盘交付物模板 |
| [数据流（总览）](#数据流总览) | 取证→实现→门禁→提交的 Mermaid |
| [检查清单（Agent）](#检查清单agent) | Agent 写回前自检 |
| [交叉引用](#交叉引用) | 相关 skill / dev |
| [附录 A：`.soft-ue-index`](#retro-appendix-soft-ue-index) | 蓝图索引快照与 Pester/E2E 提要 |
| [附录 B：UMTAnimInstance + Chooser](#retro-appendix-umt-chooser) | AnimInstance、Chooser/MM、C++ 与线程安全图提要 |

## 何时做

- 一段 **UE 自动化 / soft-ue-cli / 蓝图取证 / AS TDD / runner** 相关任务结束
- 用户说：**总结经验、复盘、迭代工作流、工作流进化、沉淀成 skill**
- `content/dev/pitfalls-inbox.md` 里已有条目待晋升

## 输出物（最小集）

1. **经验小结**（5–10 条可执行要点）
2. **踩坑清单**（按类别：终端/编码、桥与 CLI、AS 编译与门禁、**C++ 编译（VS 单项目 / UBT、勿依赖 Live Coding 为唯一验收）**、Git、生成物）
3. **工作流变更清单**：更新了哪些 `rules` / `skills` / `content/knowledge` / `content/dev`
4. **验证**：指明项目侧门禁（如 `Scripts\Run-UnattendedTests-Min.ps1 -Mode AS`）或 Kit 侧脚本测试（若有）

## 数据流（总览）

见下文 Mermaid；与 [13-ue-automation-test-playbook.md](13-ue-automation-test-playbook.md)、[07-blueprint-query-workflow.md](07-blueprint-query-workflow.md)、[14-git-atomic-commits-tdd.md](14-git-atomic-commits-tdd.md) 交叉引用。

```mermaid
flowchart LR
  subgraph evidence [Evidence]
    BP[Blueprint_or_CLI]
    Bridge[soft_ue_cli]
    Json[EvidenceJson_file]
    BP --> Bridge
    Bridge --> Json
  end
  subgraph impl [Implement]
    AS[AngelScript_or_Scripts]
    Json --> AS
  end
  subgraph gate [Gate]
    Runner[Run_UnattendedTests_Min]
    Collect[CollectLog_stdout_stderr]
    Pass[Pass_or_Fail]
    Runner --> Collect
    Collect --> Pass
  end
  subgraph ship [Ship]
    Commit[Atomic_git_commit]
    Pass --> Commit
  end
  AS --> Runner
```

## 检查清单（Agent）

- [ ] 对照**仓库事实**：相关路径 `git log -n 20 --oneline`，避免文档与提交脱节（技能 **git-local-p4-workflow**）
- [ ] **坑**写入 `05-gotchas.md` 表格或 **本文件**「本轮附录」
- [ ] **操作步骤**写入 `content/dev/`（如 `git-automation.md`）
- [ ] **规则/技能**更新后自检：触发语不重复、与 METHODOLOGY 边界一致
- [ ] 更新 `content/knowledge/README.md`（若新增/重命名本类文档）
- [ ] **写资产必保存（硬门禁）**：凡通过 soft-ue-cli / UE Python 对 `.uasset` 做了写操作（reparent、删变量、改图/连线、改 defaults 等），必须在同一段操作里 Save，并在关键里程碑重复 Save（至少 reparent 后、compile 通过后各保存一次）。默认 UE 随时可能闪退，未保存改动视为不存在。
- [ ] **桥不可达时也要能复盘**：输出必须包含桥状态、已尝试恢复步骤（含 502 代理绕过）、以及离线证据路径与 freshness（生成时间/命令或 unknown）。

## 交叉引用

- 技能：`retro-automation-workflow`（执行套路）、`summarize-to-knowledge`（写回 content/）
- Dev：`content/dev/git-automation.md`、`content/dev/pitfall-capture.md`、`content/dev/pitfalls-inbox.md`

---

<a id="retro-appendix-soft-ue-index"></a>

## 附录：蓝图 `.soft-ue-index` 快照与测试复盘（提要）

本轮（蓝图文本索引 / per-asset / 增量队列 / 深索引 + Pester）可复用的结论：

1. **分层数据源**：快索引（变量/函数/callables）与深图 JSON 分开；默认关图节点以控时延；需要调用点再导出 `graphs/*.graph.json`。
2. **CLI 输出当「不稳定 API」**：同一命令在不同版本下字段名可能不同（如 `assets` vs `results`）；PowerShell 侧必须 **防御式解析**，避免 `Set-StrictMode` 下访问不存在属性直接失败。
3. **PS 5.1 硬限制**：`ConvertTo-Json` 深度上限 **100**；深索引写盘前必须钳制 depth，否则脚本级异常。
4. **测试里 stub 解释器**：不要假设「PATH 里放一个 py.cmd 就能劫持 `py`」；优先 **`Set-Alias py`** 指向 stub。
5. **跨进程 E2E**：保存队列依赖编辑器内插件；**未重编/未重启** 时队列可能不存在——套件应区分「功能未部署」与「逻辑错误」，避免假阴性阻塞。
6. **内联 Python 传参**：`run-python-script` 多行内联易碎；**临时文件 + `--script-path`** 更稳。
7. **统一入口**：`content/dev/scripts/Invoke-UEAutomationTests.ps1`（可选 `-E2E`）；与 [07-blueprint-query-workflow.md](07-blueprint-query-workflow.md)、[13-ue-automation-test-playbook.md](13-ue-automation-test-playbook.md) 交叉引用。

8. **ThreadSafe 的边界（AS vs 蓝图）**：蓝图里某些节点看似“线程安全可用”，在 AngelScript 绑定/调用路径中可能触发跨线程/锁等待（本轮命中：`GetCurveValue()` 导致 ThreadSafe Call Parent 卡死）。复盘时应把这类“ThreadSafe 禁区 API + 迁移模板（曲线采样挪到 GameThread）”沉淀到 `05-gotchas.md`，避免重复踩坑。

```mermaid
flowchart TB
  UE[UnrealEditor + SoftUEBridge]
  CLI[soft_ue_cli]
  Fast[Refresh BlueprintTextIndex]
  Per[Export PerAsset + Rollup]
  Q[changed_assets.ndjson]
  Con[Consume ChangeQueue]
  Deep[Export DeepIndex graphs]

  UE -->|HTTP| CLI
  CLI --> Fast
  CLI --> Per
  CLI --> Deep
  UE -->|OnObjectSaved hook| Q
  Q --> Con
  Con -->|PerAsset refresh| Per
  Deep --> G[graphs/*.graph.json]
  Per --> R[rollup + assets/**/summary.*]
```

<a id="retro-appendix-umt-chooser"></a>

## 附录：UMTAnimInstance + Chooser / MotionMatching（提要）

从「ABP 快照 → AS `UMTAnimInstance` → C++ 包装 Chooser → 线程安全 `OnUpdate_MM`」一类任务可复用的结论：

1. **桥 502**：深索引/在线快照失败时，用专用 **rollup + 日期 meta** 对齐离线条目，并记录「桥恢复后补跑 `Export-BlueprintDeepIndex`」；`NO_PROXY` 见 [05-gotchas.md](05-gotchas.md)。
2. **BPC ↔ AnimInstance**：在 ABP 尚未改为继承 `UMTAnimInstance` 前，**不要**让 BPC 只持强类型引用导致 `AnimInstance` 恒 null；可保留 `UAnimInstance` + 可选 `UMTAnimInstance` 双引用（见 transcript 决策）。
3. **TDD 与「用不到的逻辑」**：计划中的 `UpdateEssentialProperties` / `UpdateStates` 若 Anim 图根本不消费，应**删掉**而非为测而测；单测签名与实现需同步，避免「改了 helper 未改调用」。
4. **变量来源以 AnimGraph 数据流为准**：清理变量时**不要**以 AnimInstance 成员列表为准；以**动画图表里实际连线**为准；找不到原连接可对照**重构前 ABP**。
5. **Chooser 从 AS 暴露**：若脚本侧搜不到 `EvaluateChooser`/`ChooserTable` 绑定，**不要硬撑 AS**；走 **C++ `UChooserFunctionLibrary::EvaluateChooserMulti`** 包装（并处理线程安全图对 **Pure + ThreadSafe** 的要求）。
6. **UE5.7 插件与 API**：`FCoreUObjectDelegates::OnObjectSaved` 变更时改用 **`OnObjectPreSave`**，回调参数需 **`ObjectSaveContext.h`** 完整类型；与 **ue-automation-test-harness §2.2** 一致：**关 UE / 停 Live Coding 后用 VS 只编 `ManteumTower`**，不以 Live Coding 为唯一验收。
7. **写 `.uasset` / 编辑器大改后**：**立即 Save** 并在里程碑重复保存；闪退即丢（用户明确要求时把约定写回 rule/skill）。

