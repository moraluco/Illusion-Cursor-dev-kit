# 蓝图查询工作流（决策树）

本页回答一个核心问题：**当你想“像读代码一样”读/查蓝图时，应该用哪条链路？**

- **在线（权威，当前编辑器内事实）**：`soft-ue-cli` 通过 SoftUEBridge（`check-setup` 成功）读取。
- **离线（可 Grep/可提交证据，可能滞后）**：`BlueprintSnapshot/`、`.soft-ue-index/`、以及 `.soft-ue-blueprint-index/index.json`（Indexer 快照）。

---

## 0. 先判定：你要的是什么

| 目标 | 默认推荐 | 回落/替代 |
|------|----------|-----------|
| **单个蓝图**：确认父类、变量、defaults、组件、某 callable 的完整图细节 | `query-blueprint` / `query-blueprint-graph` | 若图很大可先 `--search` 或先用 Indexer L2 粗定位，再按需 query |
| **批处理 / 固定 scope**：从大量蓝图读取图结构、追踪调用/数据流、生成/分析结构化数据 | **Indexer L2**：`bp-index-refresh` → `bp-index-l2-list` → `bp-index-chunk-get` | 当 L2 契约不足（Anim 深层属性/字节级对齐等）再 `query-blueprint-graph` |
| **全项目搜索（像 grep 一样搜函数/变量/注释/节点标题）** | 离线 `.soft-ue-index/`（导出后 grep） | 需要“当前编辑器内事实”时回到在线工具 |

---

## 1. 权威事实的前置条件（必须项）

在断言「当前编辑器内」事实前，必须：

```powershell
cd <ProjectRoot>
py -3 -m soft_ue_cli check-setup
```

失败（502/timeout）时：先按技能 `soft-ue-cli-ue-bridge` / `ue-editor-launch` 恢复 Editor+Bridge，再做任何“事实”断言。

---

## 1.1 单资产“读全图”路径（最权威）

适合：排障、最终对齐、需要完整 defaults/pins/连线/可调用项等。

```powershell
# 资产结构（变量/函数/组件/defaults）
py -3 -m soft_ue_cli query-blueprint /Game/Path/BP_Foo --include all

# 图结构（可列出 callables 或取指定 callable）
py -3 -m soft_ue_cli query-blueprint-graph /Game/Path/BP_Foo --list-callables
py -3 -m soft_ue_cli query-blueprint-graph /Game/Path/BP_Foo --callable-name EventGraph
```

**特点**：

- 优点：字段更全、最接近“编辑器所见”。  
- 代价：对大量资产循环调用会很慢，且遇到加载失败会直接失败。

---

## 1.1.2 批处理默认路径：Indexer L2（推荐）

适合：在固定 scope 内反复读图结构/追踪数据流/调用链/做迁移分析。

### Step A：先刷新索引（一次性成本，可复用）

```powershell
py -3 -m soft_ue_cli bp-index-refresh `
  --scope-path /Game `
  --levels L0L1L2 `
  --l2-projection connections `
  --l2-semantic-level minimal
```

### Step B：枚举 chunk 并分页读取

```powershell
# 列出某资产（object_path）或某 scope 下的 chunk_id
py -3 -m soft_ue_cli bp-index-l2-list --scope-path "/Game/Path/BP_Foo.BP_Foo" --limit 500

# 拉一个 chunk（注意 chunk_id 含 | 需要 quoting）
py -3 -m soft_ue_cli bp-index-chunk-get --chunk-id "/Game/Path/BP_Foo.BP_Foo|event|EventGraph" --node-limit 64
```

### 回落条件（何时必须用 query-blueprint-graph）

- 需要与全图工具 **字节级一致** 的序列化选项
- 需要 Anim 节点内嵌属性等 L2 未覆盖字段
- 发现 Indexer 覆盖不足（`bp-index-stats` 显示 staleness/coverage 不满足）且刷新后仍缺

---

## 2. 离线产物怎么用（Search/Grep 与证据）

| 产物 | 生成方式 | 用途 |
|------|----------|------|
| `.soft-ue-index/` | Kit 脚本 `Export-BlueprintTextIndex*.ps1` | 全项目 grep（函数/变量/callables/节点标题等） |
| `BlueprintSnapshot/` | Kit 脚本 `Export-AssetSnapshot.ps1` / `Export-BlueprintDeepIndex.ps1` | 可提交证据、离线复盘、逐 callable 全图 JSON |
| `.soft-ue-blueprint-index/index.json` | Indexer `SaveSnapshot` / 自动保存 | Indexer 只读复盘（注意常为 UTF-16 LE） |

**原则**：离线用于搜索/旁证；涉及“当前编辑器内事实”的结论必须在线工具确认或明确标注“可能滞后”。  

---

## 3. 常见坑（必须记住）

- **Windows `chunk_id` 含 `|`**：`bp-index-chunk-get --chunk-id` 必须保证参数作为单一 argv（加引号或变量承载）。详见 `content/dev/soft-ue-cli.md` 与技能 `soft-ue-cli-ue-bridge` §1.2。
- **Index 快照编码**：`.soft-ue-blueprint-index/index.json` 可能是 UTF-16 LE；脚本读取要显式指定编码。

# 蓝图查询工作流（在线权威 vs 离线快照）

本文件用于统一“查询蓝图/行为树/StateTree”的入口选择，避免在 **soft-ue-cli（在线）** 与 **BlueprintSnapshot（离线）** 之间口径冲突。

## 0. Agent 取证原则（事实 vs 搜索）

- **事实（「当前编辑器里」）**：凡向用户**断言**「某蓝图此刻的父类、变量、节点、连线、pins、默认值、引用」等，**必须**来自 **`py -3 -m soft_ue_cli check-setup` 成功**之后的 Bridge 工具，并按场景选择入口（**不是**只有 `query-blueprint-graph` 一条路）：
  - **单资产全图 JSON、与既有导出/工具链字节级对齐、排障**：`query-blueprint` / `query-blueprint-graph` / `find-references` 等（大图**落地文件**，见 §2.2.1）。
  - **固定 scope 内批量读图结构、语义（`semantic` / `pin_type` / `edge_kind`）**：在 **`bp-index-refresh`**（含 `L0L1L2`、按需 `l2_projection` / `l2_semantic_level`）**成功**后，用 **`bp-index-l2-list`** → **`bp-index-chunk-get`**；断言前用 **`bp-index-stats`** 看新鲜度/stale（同一会话内 **refresh → chunk** 可视为编辑器侧事实）。实现与设计见 ManteumTower `Docs/Blueprint-Indexer-L2-Semantic-Code-Equivalence.md` §6；脚本侧审计见 `Docs/Blueprint-Indexer-L2-Semantic-Workflow-Audit.md`。
  - **磁盘上的 `.soft-ue-blueprint-index/index.json`**：常为 **UTF-16 LE**，脚本需按 UTF-16 读取；且仅作**离线复盘/辅助搜索**，**未**与本次 refresh 对齐时**不得**单独终裁「当前编辑器事实」。
- **禁止与离线快照混为一谈**：**禁止**用对**原始 `.uasset` 文件**的二进制/ASCII 启发式扫描、或未解析 UObject 就猜结构，作为上述断言的**唯一依据**。这与 **`BlueprintSnapshot/`、`.soft-ue-index/`、脚本导出的 `graphs/*.json`** 无关——后者是**正规离线工作流，应当使用**。
- **桥不可达**：**先**恢复交互式 UE 与 **SoftUEBridge**（技能 **ue-editor-launch**、Kit **`content/dev/scripts/Start-UnrealEditor.ps1`**，见 `content/dev/soft-ue-cli.md`），再重试 `check-setup`。在等待或无法立即在线时，**仍可使用**已有离线索引/快照推进搜索，并**标注**可能滞后。
- **离线索引/快照**：用于**全项目搜索、候选定位、复盘、PR 旁证**；可能滞后，在需要「**最新**编辑器状态」时不能**单独**终裁，但**不是**禁用项。

### 0.1 离线索引的“应急维护”边界（避免口径漂移）

桥不可达时，有时会出现“为了让 Search/Grep 可用，手工对齐/改写 `.soft-ue-index/blueprints.*` 或 `blueprints.rollup.*` 某一段内容”的应急行为。

- **允许**：把它当作“搜索缓存维护”，用于推进**候选定位**与**离线复盘**（必须标注来源与时间戳）。
- **不允许**：把这种手工对齐当作“已更新的最新快照/编辑器事实”对外断言。
- **正确收敛**：桥恢复后，优先用脚本重建对应索引（per-asset / 按需深索引），替代手工对齐；并在 retro 里记录“手工对齐→重建”的证据链。

---

## 1. 两类数据源（各自的“擅长场景”）

### 1.1 在线权威：soft-ue-cli + SoftUEBridge（编辑器内事实）

- **适用**：
  - 需要确认**最新状态**（刚改过蓝图/未导出快照）
  - 需要精确结构：**节点、pins、连线、默认值、引用关系**
  - 需要做编辑器内操作（PIE、截图、日志、关卡 Actor 查询等）
- **代价**：必须启动交互式 UE，桥可达。
- **入口**：技能 `soft-ue-cli-ue-bridge`，文档 `content/dev/soft-ue-cli.md`。

#### 1.1.1 在线工具分层（Fast vs Full vs Index）

- **Fast（元信息/强投影）**：适合 Agent 快速拿“路径/父类/生成类/符号概览/可调用列表”，默认不读图。
  - `query-blueprint-fast`：AssetRegistry tags（不加载包）
  - `query-blueprint-symbols-fast` / `query-blueprint-callables-fast`：轻量投影（可能加载 Blueprint，但不导出 nodes/pins/connections）
- **Full（结构/默认值/图）**：需要 nodes/pins/连线/默认值时用，最权威但更慢。
  - `query-blueprint` / `query-blueprint-graph`
- **Index（全量/增量可续跑 + L2 chunk）**：需要“范围刷新 + 分页查询 + 可解释的新鲜度”，或**批量/重复读图结构**时用（由编辑器插件维护；**勿**对大量资产循环 `query-blueprint-graph` 当默认批处理）。
  - `bp-index-refresh` / `bp-index-stats` / `bp-index-query` / `bp-index-get`
  - L2：`bp-index-l2-list` / `bp-index-chunk-get`（依赖 refresh 将索引写入内存；`l2_semantic_level`：`off` → `minimal` → `standard` → `full`，档位越高 chunk 越大）
  - **门禁/冒烟（ManteumTower）**：Bridge 可达时可选 `Scripts/Test-BpIndexL2.ps1`（含 `connections` + 语义、`stats` staleness 等断言）

#### 1.1.2 何时优先 Index（L2）vs 全图 `query-*`

| 场景 | 优先入口 |
|------|----------|
| 全项目搜名字/候选、离线复盘 | `.soft-ue-index` / `BlueprintSnapshot`（§1.2） |
| **同一 scope 内多次读图结构、语义、自动化批处理** | `bp-index-refresh` → `bp-index-l2-list` → `bp-index-chunk-get` |
| **单蓝图、要完整图 JSON、与既有导出格式一致** | `query-blueprint-graph`（输出落地文件） |
| 对齐/排障、桥侧单次探针 | `query-blueprint` / Fast 工具 |

> 注意：若“毫秒级”目标指端到端交互，需区分 Bridge 处理时间与调用端进程启动时间；常驻 client 能显著降低端到端延迟（见 [05-gotchas.md](05-gotchas.md)）。

### 1.2 离线快照：`BlueprintSnapshot/`、`.soft-ue-index/`（Search/Grep 与复盘）

- **适用**：
  - “全项目搜”“跨资产排查”“谁在用 X”“哪些蓝图包含 Y 文本/节点标题/注释”
  - UE 没开/桥不可达时仍要推进定位
  - 需要**可提交**的“证据/复盘材料”（PR/记录/复现）
- **代价**：可能滞后于编辑器内最新修改（需要按 freshness/force 刷新）。
- **入口**：
  - 简单文本索引（全量快、可频繁刷新）：`.soft-ue-index/blueprints.txt|ndjson`（见 `content/dev/scripts/Refresh-BlueprintTextIndex.ps1`）
  - 结构化文本索引（增量友好）：`.soft-ue-index/assets/**/summary.txt|ndjson` + `.soft-ue-index/blueprints.rollup.txt|ndjson`（见 `content/dev/scripts/Export-BlueprintTextIndex-PerAsset.ps1`）
  - 可提交快照（legacy flat）：`BlueprintSnapshot/blueprints_full.txt|ndjson`
  - 可提交快照（层次化 L1/L2/L3）：`BlueprintSnapshot/assets_index.*` + `BlueprintSnapshot/assets/**`
  - 离线“函数调用点/引用关系”搜索：必须有 `graphs/*.graph.json`（来自 `BlueprintSnapshot/assets/**/graphs/*.graph.json` 或按需导出的 `.soft-ue-index/assets/**/graphs/*.graph.json`）

---

## 2. 决策树（先选“最快且足够正确”的路）

### 2.1 只要“找位置/候选集合”（不需要精确图结构）

- **优先**：离线索引/快照（Search/Grep）
  - `.soft-ue-index/blueprints.rollup.txt`（最快，一把梭搜函数/变量/callables）
  - `.soft-ue-index/assets/**/summary.txt|ndjson`（需要按资产进一步缩小范围时）
  - `BlueprintSnapshot/blueprints_full.txt|ndjson`（更“可提交”，适合跨资产排查）
- **如果离线没有**：再用 soft-ue-cli 在线 `query-asset` / `query-blueprint` 扩大范围

### 2.2 需要“精确图细节”（pins/连线/default_value）

- **单资产、要整图 JSON**：soft-ue-cli 在线 `query-blueprint-graph`（桥须先可用；不可用则先恢复 UE + Bridge，见 §0）。
- **多资产或脚本内反复读图**：优先 §1.1.2 的 **bp-index 链**（refresh 后再 chunk-get），避免对 `query-blueprint-graph` **逐资产循环**成为默认策略（性能与桥负载）；需要与既有全图导出格式完全一致时再回落 `query-blueprint-graph`。
- **若暂时无法恢复桥且已有层次化快照**：可从 `BlueprintSnapshot/assets/<asset>/graphs/*.graph.json` 离线读取（**必须标注**可能不是最新，且**不是**首选事实源）。

### 2.2.1 取证输出必须落地（避免终端截断）

- `query-blueprint-graph` 返回的 JSON **可能很大**；仅在终端里滚动查看容易**截断**、漏节点或漏连线。
- **推荐**：将输出重定向到**临时文件**（例如 `%TEMP%\bpc_anim_Movement.json`），再用编辑器/Read 工具完整查看。
- **不要**依赖“一次性复制终端输出”作为唯一证据；需要写进 PR/复盘时，保留文件路径或归档到约定目录（由项目约定）。

### 2.2.2 离线证据的最小集合（桥不可达时也要能复盘）

当桥不可达但仍需推进评估/复盘时，输出至少包含：

- **EvidencePaths**：具体到文件路径（例如 `.soft-ue-index/blueprints.rollup.txt`、`BlueprintSnapshot/assets/.../graphs/*.graph.json`）
- **Freshness**：生成时间（meta 或文件 mtime）与生成命令（未知则写 `unknown`）
- **StalenessNote**：明确标注“可能滞后于当前编辑器状态”，以及哪些结论尚未能在线确认

### 2.3 需要“可提交复盘材料 / 可追溯证据”

- **优先**：层次化快照（L1/L2/L3）
  - 运行 `content/dev/scripts/Export-AssetSnapshot.ps1`（`-Level Full` 或按需）
  - 提交 `BlueprintSnapshot/` 的相关产物（由项目约定决定）

---

## 3. 常见任务 → 推荐入口

- **全局搜某个蓝图函数/变量名**：先离线 `.soft-ue-index` / `blueprints_full.*`；必要时再在线确认
- **全局搜“某函数在哪里被调用 / 某对象被引用”**：
  - **在线最准**：soft-ue-cli `find-references`
  - **离线可 grep**：确保有 `graphs/*.graph.json`，再在图 JSON 里搜 `K2Node_CallFunction` / 软对象路径（注意离线文本匹配可能漏掉非字符串化的引用）
- **确认某个函数里到底怎么连线、默认值是什么**：在线 `query-blueprint-graph`；或离线读 `assets/**/graphs/*.graph.json`
- **BT/StateTree 结构离线复盘**：优先 `Export-AssetSnapshot.ps1` 的 L2/L3 产物；在线确认以 soft-ue-cli 为准

---

## 4. 自动化验证（Kit）

- **入口**：`content/dev/scripts/Invoke-UEAutomationTests.ps1`（仅 Unit）或 **`-E2E`**（复用已打开的编辑器 + Bridge，跑快照刷新 / per-asset / 深索引等；全量刷新可能较慢）。
- **易错点**：Pester 版本、`py` 解析顺序、`ConvertTo-Json` 深度、CLI JSON 字段差异、保存队列依赖插件构建——见 [05-gotchas.md](05-gotchas.md)、[13-ue-automation-test-playbook.md](13-ue-automation-test-playbook.md) §5.1、[15-retro-automation-workflow.md](15-retro-automation-workflow.md) 附录。

---

## 5. 交叉引用

- 技能：`soft-ue-cli-ue-bridge`、`ue-editor-automation-workflow`
- 文档：`content/dev/soft-ue-cli.md`
- 规则：`.cursor/rules/blueprint-snapshot-search.mdc`
- 复盘（CLI 输出落地、避免终端截断、L2 索引会话提要）：`content/knowledge/15-retro-automation-workflow.md`
- 易错点（UTF-16 索引、`nodes_only` vs 语义）：`content/knowledge/05-gotchas.md`

