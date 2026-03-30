# 蓝图查询工作流（在线权威 vs 离线快照）

本文件用于统一“查询蓝图/行为树/StateTree”的入口选择，避免在 **soft-ue-cli（在线）** 与 **BlueprintSnapshot（离线）** 之间口径冲突。

---

## 1. 两类数据源（各自的“擅长场景”）

### 1.1 在线权威：soft-ue-cli + SoftUEBridge（编辑器内事实）

- **适用**：
  - 需要确认**最新状态**（刚改过蓝图/未导出快照）
  - 需要精确结构：**节点、pins、连线、默认值、引用关系**
  - 需要做编辑器内操作（PIE、截图、日志、关卡 Actor 查询等）
- **代价**：必须启动交互式 UE，桥可达。
- **入口**：技能 `soft-ue-cli-ue-bridge`，文档 `content/dev/soft-ue-cli.md`。

### 1.2 离线快照：`BlueprintSnapshot/`、`.soft-ue-index/`（Search/Grep 与复盘）

- **适用**：
  - “全项目搜”“跨资产排查”“谁在用 X”“哪些蓝图包含 Y 文本/节点标题/注释”
  - UE 没开/桥不可达时仍要推进定位
  - 需要**可提交**的“证据/复盘材料”（PR/记录/复现）
- **代价**：可能滞后于编辑器内最新修改（需要按 freshness/force 刷新）。
- **入口**：
  - 简单文本索引：`.soft-ue-index/blueprints.txt|ndjson`
  - 可提交快照（legacy flat）：`BlueprintSnapshot/blueprints_full.txt|ndjson`
  - 可提交快照（层次化 L1/L2/L3）：`BlueprintSnapshot/assets_index.*` + `BlueprintSnapshot/assets/**`

---

## 2. 决策树（先选“最快且足够正确”的路）

### 2.1 只要“找位置/候选集合”（不需要精确图结构）

- **优先**：离线索引/快照（Search/Grep）
  - `.soft-ue-index/blueprints.txt|ndjson`（最快，适合函数/变量名）
  - `BlueprintSnapshot/blueprints_full.txt|ndjson`（更“可提交”，适合跨资产排查）
- **如果离线没有**：再用 soft-ue-cli 在线 `query-asset` / `query-blueprint` 扩大范围

### 2.2 需要“精确图细节”（pins/连线/default_value）

- **优先**：soft-ue-cli 在线 `query-blueprint-graph`
- **若 UE 不可用但已有层次化快照**：从 `BlueprintSnapshot/assets/<asset>/graphs/*.graph.json` 离线读取（注意可能不是最新）

### 2.3 需要“可提交复盘材料 / 可追溯证据”

- **优先**：层次化快照（L1/L2/L3）
  - 运行 `content/dev/scripts/Export-AssetSnapshot.ps1`（`-Level Full` 或按需）
  - 提交 `BlueprintSnapshot/` 的相关产物（由项目约定决定）

---

## 3. 常见任务 → 推荐入口

- **全局搜某个蓝图函数/变量名**：先离线 `.soft-ue-index` / `blueprints_full.*`；必要时再在线确认
- **确认某个函数里到底怎么连线、默认值是什么**：在线 `query-blueprint-graph`；或离线读 `assets/**/graphs/*.graph.json`
- **BT/StateTree 结构离线复盘**：优先 `Export-AssetSnapshot.ps1` 的 L2/L3 产物；在线确认以 soft-ue-cli 为准

---

## 4. 交叉引用

- 技能：`soft-ue-cli-ue-bridge`
- 文档：`content/dev/soft-ue-cli.md`
- 规则：`.cursor/rules/blueprint-snapshot-search.mdc`

