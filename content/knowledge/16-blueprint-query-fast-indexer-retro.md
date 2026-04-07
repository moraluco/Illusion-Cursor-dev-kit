## Blueprint 在线查询与 Indexer：综合测试/性能评估/复盘（2026-04）

### 范围与结论

- **目标**：把 Blueprint 查询从“离线快照/索引易过期”迁移到“编辑器插件内在线权威”，并提供 fast 工具与可续跑的 index API。
- **结论**：
  - **正确性/可用性**：fast 工具、bp-index APIs、vendored CLI 均可在 Editor+Bridge 模式下跑通。
  - **性能**：
    - Bridge 侧新增 `type=json` 的结构化返回，降低了双重序列化/解析开销。
    - 端到端延迟目前主要由 **“每次调用启动一个 python 进程”** 主导；要逼近毫秒级必须引入**常驻 client/连接复用**或批处理。

### 综合测试（Smoke）

在项目仓库（`D:\Workspace\MT\Engine\ManteumTower`）已固化脚本：

- `Scripts/Test-BridgeJsonContent.ps1`
  - 断言 `result.content[0].type == "json"` 且 `json.object_path` 存在
- `Scripts/Test-FastToolsSuite.ps1`
  - 断言 fast 工具已注册并返回结构化 json
- `Scripts/Test-BpIndexApis.ps1`
  - 断言 `bp-index-refresh/query/get` 已注册、L0 刷新可跑、query 能找到 probe、get 返回一致
- `Scripts/Test-VendoredSoftUeCli.ps1`
  - 断言仓库内 `py -3 -m soft_ue_cli` 能调用新子命令并解析结果

### 性能评估（Benchmark）

基准脚本与报告：

- `Scripts/Bench-BlueprintQueries.ps1`
- `Scripts/Reports/blueprint-query-report.md`

**当前指标含义**：

- fast 工具延迟统计是“端到端（process-per-call）”：python 进程启动 + import + http 请求 + JSON 解析，**不是**纯 Bridge 执行耗时。
- index refresh 吞吐是“端到端”：同样包含 python 启动开销；scope 越大越能反映真实吞吐。

### 复盘（Decision Points → Guardrails）

#### 1) “新工具 CLI 不识别”绕路

- **触发**：soft-ue-cli 命令层无法动态发现新工具
- **应对**：先用 PowerShell JSON-RPC wrapper 直呼 `tools/call`，后再把 CLI vendor 进仓库形成可控版本
- **沉淀**：推荐路径是“仓库内 vendored CLI 优先”，避免依赖 site-packages 版本漂移

#### 2) PowerShell 5.1 兼容性坑

- **触发**：`ConvertFrom-Json -Depth` 不支持、`&&` 在某些调用路径解析失败、脚本混入智能引号导致 ParserError
- **应对**：移除 `ConvertFrom-Json -Depth`、避免 `&&`、脚本只用 ASCII 标点
- **guardrail**：把这些现象写入 `05-gotchas.md`，作为自动化脚本门禁前置检查

#### 3) UBT 与 Live Coding 冲突

- **触发**：编辑器开着 Live Coding 时 UBT 拒绝构建
- **应对**：关闭 UE 或关闭 Live Coding（Ctrl+Alt+F11）再编
- **沉淀**：已写入 `05-gotchas.md`，并建议基准/测试脚本默认以“Editor 关闭时编译”为前置约束

### 下一步优化方向（按收益排序）

1. **常驻 client（必须）**：让 Agent/CLI 在同一进程复用 `httpx.Client` 与连接池；把 process-per-call 的 ~0.6–1.0s 降到“单请求级别”。
2. **批量/投影**：一次请求拉多资产的 L0/L1 投影（减少往返）；或者工具支持 `asset_paths[]`。
3. **Indexer 查询走内存**：当前 `bp-index-query` 已走内存复制 + 排序；后续可加入 projection、过滤与更稳的分页 token。
4. **L2 图分块**：把 graph 导出拆成 callable/graph chunk + projection（nodes-only/pins/connections），以便大图按需拉取并可续跑。

