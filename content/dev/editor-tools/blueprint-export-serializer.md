# 蓝图导出 JSON 与 BlueprintSerializer 插件

> 实际开发内容：编辑器工具使用、导出流程、编译与测试。通用决策与易错点见 [content/knowledge/04-decisions.md](../../knowledge/04-decisions.md)、[05-gotchas.md](../../knowledge/05-gotchas.md)。

来源：对话记录 [38c38910-e711-4459-b59f-b5e75177295a]，整理自「蓝图可读化 → 插件集成与编译修复」全流程。

---

## 1. 目标与背景

- **目标**：用 AngelScript 全面重构蓝图逻辑，蓝图只做数据配置；让 Cursor 能「读」到整个项目以便逐步重构。
- **核心难点**：蓝图逻辑在 `.uasset` 中，Cursor 不可读 → 需先把蓝图导出为 **Cursor 可读的文本（如 JSON）**，再谈盘点与迁移。
- **选型**：采用「基于已有项目 BlueprintSerializer」集成，而非从零写插件；在插件上增加快照路径、Tools 菜单一键导出、可选 `_index.json`。

---

## 2. 编译与工程

### 2.1 生成解决方案与 Missing Modules

- **现象**：编辑器提示 "Missing Modules"，无法在引擎运行时编译。
- **做法**：用 **IDE 编译**，不要依赖编辑器内编译。
  - 右键项目 `.uproject` → **Generate Visual Studio project files**。
  - 用生成的 `.sln` 在 VS 中打开，选 **Development Editor** 配置进行 Build。
- **注意**：生成前先关闭 Unreal Editor，否则可能生成不完整。

### 2.2 是否编引擎

- **Epic 安装的引擎**：用「仅项目」的 .sln 生成与编译，只编游戏+插件，不编引擎（动作数在几百级）。
- **引擎源码 + 项目**：第一次或 Rebuild 会编引擎+项目（几千个 action 正常）；**日常开发用 Build，不要随便 Rebuild**，未改动的引擎不会重编。

### 2.3 构建失败与修复（VMNode 未声明）

- **现象**：`缺少类型说明符`、`语法错误: 缺少","`、`"VMNode": 未声明的标识符`，以及插件依赖警告（GameplayAbilities、EnhancedInput 未在 .uplugin 声明）。
- **根因**：
  - 插件用 `#if __has_include("ControlRigBlueprint.h")` 条件包含 RigVM 头；当该 include 失败时 `UEARATAME_HAS_CONTROL_RIG` 为 0。
  - 但 **MakeStableRigVMNodeGuid(const URigVMNode* VMNode)** 未包在 `#if UEARATAME_HAS_CONTROL_RIG` 内，仍被编译 → 使用未定义的 `URigVMNode` 报错。
  - .uplugin 的 `Plugins` 未声明 GameplayAbilities、EnhancedInput，导致构建警告。
- **修复**：
  1. **BlueprintAnalyzer.cpp**：用 `#if UEARATAME_HAS_CONTROL_RIG` / `#endif` 包住整个 `MakeStableRigVMNodeGuid` 函数（其调用点已在 ControlRig 分支内，HAS=0 时不会调用）。
  2. **BlueprintSerializer.uplugin**：在 `Plugins` 中增加 `GameplayAbilities`、`EnhancedInput`，且 `Enabled: true`。
- **不改**：Build.cs、其他已正确包在 `#if UEARATAME_HAS_CONTROL_RIG` 内的代码；「访问被拒绝」的 .msCoverage 问题属环境/权限/杀毒，非代码修改范围。

> 通用易错条目见 knowledge [05-gotchas.md](../../knowledge/05-gotchas.md)。

### 2.4 环境类错误

- **「未能向文件 ... .msCoverageSourceRootsMapping_... 写入 ... 访问被拒绝」**：多为杀毒/权限；可尝试以管理员运行 VS、或将路径加入杀毒排除列表。
- **构建退出码 6**：若伴随上述 `.msCoverageSourceRootsMapping_...` 或 **`CoverletSourceRootsMapping_EpicGames.Perforce.Fixture`** 访问被拒绝，说明在编 Engine 下的 .NET 测试/覆盖率时无法写入映射文件。
  - **已做**：在 `Engine/Engine/Engine/Source/Programs/Shared/` 下已加 `Directory.Build.props`（`DisableMsCoverageReferencedPathMaps=true`）和 `Directory.Build.targets`（覆盖 coverlet 的 `ReferencedPathMaps` 为空）。因 MSBuild 导入顺序，coverlet 的 target 仍可能后执行，导致仍写 `CoverletSourceRootsMapping_*`。
  - **可靠做法**：在 **`EpicGames.Perforce.Fixture.csproj`** 中**删除**对 `coverlet.collector` 的 `PackageReference`（该工程仅用于 Engine 内 Perforce 测试，去掉后不影响编 ManteumTowerEditor，仅该测试工程无覆盖率）。删掉后重新生成解决方案并编译即可避免退出码 6。

---

## 3. 插件使用与测试

- **控制台命令**（Output 或 Ctrl+`）：
  - `BP_SLZR.CountBlueprints` — 统计蓝图数量，先确认插件已加载。
  - `BP_SLZR.ExportSingleBlueprint <路径>` — 导出单个蓝图。
  - `BP_SLZR.ExportAllBlueprints [目录]` — 全量导出；**不写目录时**使用项目设置中的「Snapshot Export Path」；若未配置则为项目根目录下的 `BlueprintSnapshot`。
- **菜单**：Tools → Blueprint Serializer → Serialize Selected Blueprint / Open Export Folder / Settings。
- **建议顺序**：先 CountBlueprints → 再单蓝图导出确认 JSON 正常 → 再全量导出（耗时会随蓝图数增加）。

---

## 4. Agent 友好 JSON 结构（便于 Cursor/Agent 读取整个项目）

当设置 **Optimize for Agent Readability** 开启时（默认开启），导出的 JSON 会针对 AI/Agent 消费做优化：

- **`_index.json`（项目索引）**  
  - 先读此文件可快速了解全项目蓝图列表，无需逐个打开 JSON。  
  - 字段说明：  
    - `_schema`：格式版本与说明。  
    - `_agentReadme`：给 Agent 的简短说明（如何用本索引、如何定位单个蓝图 JSON）。  
    - `exportDirectory`：快照根目录。  
    - `blueprints`：数组，每项含 `blueprintPath`、`assetName`、`success`、`exportFileName`（该蓝图对应的 JSON 文件名）、以及可选的 `summary`（name、type、parentClass、nodeCount、variableCount、functionCount 等），便于 Agent 按类型/规模筛选后再打开具体文件。  

- **单蓝图 JSON**  
  - 根对象开头包含 **`_agentSummary`**：name、path、type、parentClass、nodeCount、variableCount、functionCount、graphCount、description 等，便于 Agent 只读前几行即可判断是否继续解析全文。  

- **设置位置**：Editor → Project Settings → Plugins → Blueprint Serializer → **Optimize for Agent Readability**；**Pretty Print JSON** 建议保持开启，便于人工与 Agent 阅读。

---

## 5. 与 Kit 的衔接

- **快照输出**：可固定到 Kit 的 `content/reference/blueprint-exports/` 或 `blueprint-dumps/`，在 reference/README 中说明目录与 JSON 结构（可引用 FBS_BlueprintData / Manifest）。
- **设计文档**：`blueprint-to-as-refactor.md` 应包含「蓝图可读化方案与输出目录约定」；阶段 0 前置为：先建「蓝图→文本导出」管线并导出至少一批蓝图到 content，再盘点与分层。

---

## 6. 需求澄清

- **「批量测试脚本」**：若指「导出后验证」（统计文件、检查 Manifest、校验 JSON），可做 PowerShell 等后处理脚本。
- **若指「编辑器内自动测试与导出 log 便于调试」**：需在编辑器内跑（如 Python/Editor Utility 或控制台命令批量执行），并把结果写到 log 或文件，与「导出后验证」区分开，避免实现错位。

---

## 7. 可复用的要点（写 dev 时的参考）

| 类别       | 要点 |
|------------|------|
| 第三方插件 | 优先参考已有实现（如 BlueprintSerializer），在其上扩展路径/菜单/索引，减少从零开发成本。 |
| 条件编译   | 依赖可选模块（如 ControlRig/RigVM）时，**头文件与使用该类型的函数**都要用同一宏（如 `UEARATAME_HAS_CONTROL_RIG`）包裹，避免「include 失败但函数仍被编译」。 |
| 插件依赖   | Build.cs 里依赖的模块若来自其他插件，应在 .uplugin 的 `Plugins` 中声明，避免构建警告与潜在加载顺序问题。 |
| 引擎源码编 | 日常用 Build；仅当必要再做 Rebuild；想完全不编引擎则用 Epic 安装版引擎 + 仅项目 .sln。 |
| 需求表述   | 「批量测试」需明确是「导出后校验」还是「编辑器内自动化测试+log」，以便给出正确方案。 |

通用易错与决策请写入 [knowledge/04-decisions.md](../../knowledge/04-decisions.md)、[05-gotchas.md](../../knowledge/05-gotchas.md)；本文件以操作与流程为主。

---

---

## 8. 经验总结（修订与导出路径）

来源：对话 16106b9c、蓝图快照导出插件修订计划落地与多次导出路径错误排查。

### 8.1 导出路径错到「非项目目录」的根因与最终方案

- **现象**：菜单或控制台无参执行「导出全部作为快照」后，文件落在 `D:\ManteumTower\BlueprintSnapshot`，而项目实际在 `D:\Workspace\MT\Engine\ManteumTower\`。
- **根因（两处）**：
  1. **不要对绝对路径用单参 `FPaths::ConvertRelativePathToFull(ExportDir)`**：单参版本会按**当前进程工作目录**重新解析，会把已正确的绝对路径「折」错（例如折成以项目名为根的盘符路径）。
  2. **`FPaths::GetProjectFilePath()` 不可靠**：在部分启动方式、快捷方式或引擎内部归一化下，可能返回「短」路径（如仅 `D:\ManteumTower\...`），不能依赖它得到真实项目根。
- **最终方案**：**从本插件的物理路径反推项目根**。
  - 使用 `IPluginManager::Get().FindPlugin("BlueprintSerializer")->GetBaseDir()` 得到插件目录（如 `.../ManteumTower/Plugins/BlueprintSerializer`）。
  - 对该路径做两次 `FPaths::GetPath` 得到项目根（`.../ManteumTower`），再拼 `BlueprintSnapshot`。
  - 无参导出与菜单均采用该逻辑；若取不到插件再回退到 `GetPath(GetProjectFilePath())`。
- **实施位置**：`BlueprintExtractorCommands::ExportAllBlueprints`（无参分支）、`UBlueprintSerializerSettings::GetSnapshotExportDirectory()`（默认快照路径）；菜单改为无参调用，与无参逻辑共用同一套计算。

### 8.2 导出文件命名：源路径 → 固定文件名

- **需求**：导出文件以「源」命名；重名时自洽处理。
- **做法（尽可能与源文件一致）**：默认文件名为 `BlueprintName.json`（与 `.uasset` 同名）。
- **重名规避（仅在同一次导出中发生冲突时启用）**：
  1. 优先追加父文件夹名（可读、能看出目录关系）：`BlueprintName_ParentFolder.json`
  2. 若仍冲突或无法得到父文件夹名，则追加 4 位短哈希：`BlueprintName_Hash4.json`
- **落地说明**：导出目录会自动生成 `README_naming.md`（若不存在才写入），记录上述规则，便于团队/Agent 直接在目录内查到约定。

### 8.3 与插件无关的日志/构建问题

- **导出过程大量「寻找对象失败」「Hierarchy discrepancy」「Missing RowStruct」等**：属资产/数据问题或引擎加载行为，与 BlueprintSerializer 导出逻辑无关；插件仍可完成 249/249 导出，可忽略这些日志做验收。
- **构建报「未能向 .msCoverageSourceRootsMapping_... 写入，访问被拒绝」**：属环境/权限或杀毒对引擎 C# 程序目录的写入限制，非插件代码问题；可尝试以管理员运行、杀毒排除、或仅编游戏目标绕过该路径。

### 8.4 可复用要点

| 类别 | 要点 |
|------|------|
| UE 路径解析 | 不信任单参 `ConvertRelativePathToFull` 对「已是绝对路径」的再解析；绝对路径只做 Normalize/Collapse，不再 Convert。 |
| 项目根定位 | 在插件内需要「真实项目根」时，优先用 **插件 BaseDir 反推**（两次 GetPath 到 Plugins 的父目录），再回退 GetProjectFilePath。 |
| 导出命名 | 尽量与源文件一致（`BlueprintName.json`）；仅在同名冲突时追加最小化可读后缀（父文件夹名优先，短 hash 兜底），并在导出目录写 `README_naming.md` 固化约定。 |
| 菜单与无参一致 | 菜单「一键导出」传空参，由命令内部统一计算路径，避免设置或回调里再算一遍导致不一致。 |

---

*文档维护：新的蓝图可读化/插件集成/编译修复的**操作步骤与流程**追加到本文件；**通用易错点**追加到 knowledge/05-gotchas.md。*
