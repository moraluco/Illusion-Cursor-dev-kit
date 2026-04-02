# 易错点与排错备忘

研发中容易踩坑的点、排查思路与常见问题，便于自测与 AI 辅助排错。

格式建议：**现象/错误 → 可能原因 → 处理方式**。

---

## 示例（按项目实际情况增删）


| 现象/错误            | 可能原因                                               | 处理方式                                     |
| ---------------- | -------------------------------------------------- | ---------------------------------------- |
| 找不到 AS API 或用法不对 | 未查阅 content/reference/AS_API 或 Docs-UE-Angelscript | 先查 reference 下对应文档；AI 回答时 @ 引用 reference |
| 文档写在了项目根         | 与 Kit 约定不符                                         | 文档与知识库统一放在 Kit 的 content/                |
| 阶段/任务状态未更新       | 忘记更新 plan.md                                       | 完成小目标或验证后更新 plan 中对应阶段与任务状态              |
| BlueprintSerializer 编译报「VMNode 未声明的标识符」 | 使用 RigVM/ControlRig 的代码未用 `#if UEARATAME_HAS_CONTROL_RIG` 包裹，在未包含对应头时仍参与编译 | 将 `MakeStableRigVMNodeGuid` 等仅 ControlRig 分支下使用的函数整体包在 `#if UEARATAME_HAS_CONTROL_RIG` / `#endif` 中；.uplugin 中声明对 GameplayAbilities、EnhancedInput 等依赖可消除构建警告 |
| 本机默认工程/引擎路径不统一，导致 CLI 脚本难复用 | 每台机器 UnrealEditor(.exe/.Cmd.exe) 与 `.uproject` 路径不同，未形成“默认值 + 可覆盖”的约定 | 默认值（本机）：`.uproject` = `D:\\Workspace\\MT\\Engine\\ManteumTower\\ManteumTower.uproject`；`UnrealEditor.exe` = `D:\\Workspace\\MT\\Engine\\Engine\\Engine\\Binaries\\Win64\\UnrealEditor.exe`；无人值守运行优先用同目录的 `UnrealEditor-Cmd.exe`，并允许用参数或 `UE_EDITOR_CMD` 覆盖 |
| `UnrealEditor-Cmd` 启动即报 PluginManager “Failed to read file / String token expected” | 某些 `.uplugin` 文件内容损坏/格式不合法（常见于手工合并冲突、编码损坏或被工具截断） | 先修复/回滚该 `.uplugin`（或临时禁用该插件）再跑无人值守测试；否则启动阶段就污染日志与行为，容易导致测试跑不完/不退出 |
| UnrealEditor-Cmd 找不到（脚本报错） | 引擎为源码多级目录（如 Engine/Engine/Engine/Binaries）或 Epic 安装在其他路径 | 用 .uproject 的 EngineAssociation 解析引擎根后依次尝试 Engine/Engine/Binaries、Engine/Binaries、Binaries；或建 Scripts/engine_path.txt 写一行 Binaries/Win64 路径；或传 --engine-path / UE_ENGINE_PATH |
| 运行 BlueprintSerializer 测试脚本「没有任何输出」 | 在 UE 控制台里执行了 .ps1/.cmd（控制台只认引擎命令）或 UnrealEditor-Cmd 不向 stdout 打日志 | 在系统 PowerShell/CMD 中于项目根执行脚本；脚本应合并 Saved/Logs 下最新 .log 到输出，便于调试 |
| 自动化历史难复盘、`git log` 看不懂 | commit 不原子化：一个提交混杂多主题改动、备注缺少“为什么/如何验证” | 约定 **一个 commit = 一个可验证点**；AS 改动先跑 `Run-UnattendedTests-Min.ps1 -Mode AS` 再提交；TDD 粒度见 [14-git-atomic-commits-tdd.md](14-git-atomic-commits-tdd.md) 与 `content/dev/git-automation.md`、技能 **git-local-p4-workflow** |
| 在 `D:\\Workspace\\MT` 下运行 `git status` 报 “not a git repository” | 误把工作区根当成 Git root；项目仓库根在 UE 项目目录下 | 项目仓库的 `.git` 在 `D:\\Workspace\\MT\\Engine\\ManteumTower\\.git`（Git root 为 `D:\\Workspace\\MT\\Engine\\ManteumTower`）。项目相关 Git 操作先 `cd D:\\Workspace\\MT\\Engine\\ManteumTower` 再执行；不要用错误目录的报错推断“项目没 Git”。 |
| soft-ue-cli `check-setup` 失败或桥不可达 | 编辑器未启动、端口被占用、或 SOFT_UE_BRIDGE_URL/PORT 与实例不一致 | **先**用 `content/dev/scripts/Start-UnrealEditor.ps1` 或技能 **ue-editor-launch** 启动/复用交互式 UE，再重试；查 `.soft-ue-bridge/instance.json` 或设环境变量；见 content/dev/soft-ue-cli.md |
| Agent 用**原始 `.uasset`** 正则/ASCII 扫字符串推断父类或图结构 | 未解析 UObject，易误判；与编辑器事实不一致 | **禁止**作为「当前编辑器事实」的唯一依据；**正规离线索引/BlueprintSnapshot 仍应使用**（见 `07-blueprint-query-workflow.md` §0） |
| BlueprintSerializer 导出到错误目录（若仍使用该插件做人工导出） | 用单参 `FPaths::ConvertRelativePathToFull(ExportDir)` 对已是绝对路径再解析，会按 CWD 重算；或依赖 `GetProjectFilePath()` 在部分环境下返回「短」路径 | 绝对路径只做 Normalize/Collapse；详见 dev/editor-tools/blueprint-export-serializer.md §8。**注意**：Agent 读蓝图不依赖该导出。 |
| 构建报「未能向 .msCoverageSourceRootsMapping_... 写入，访问被拒绝」 | 引擎 C# 程序（如 EpicGames.Perforce.Fixture）的 bin 目录被占用、只读或杀毒拦截 | 关掉占用进程、以管理员运行、杀毒排除该路径，或只编游戏目标（不编该 Fixture） |
| Agent 修改项目文件时报「Permission denied」或「Write permission denied」 | 项目使用 Perforce 且文件默认只读，未 checkout 时磁盘不可写 | 在修改前对目标文件执行 `p4 edit <路径>`（或 P4V 中右键 Check Out）；修改完成后可正常保存与提交 |
| AngelScript 里需要显示 FGameplayTag 为字符串时编译/运行报错 | FGameplayTag 转字符串的 API 因 UE/AS 版本不同可能为 `ToString()` 或 `GetTagName().ToString()` | 优先用 `Tag.ToString()`；若不存在则用 `Tag.GetTagName().ToString()`。参考 [dev/player-overlay-mode-extension.md](../dev/player-overlay-mode-extension.md) 中的 Debug 写法 |
| AngelScript 中 `Super::Tick(DeltaSeconds)` 等报「Namespace 'Super' doesn't exist」 | 部分 override（如 Tick）在 AS 绑定里可能未暴露 Super 或语法不同 | 该 override 内不写 Super 调用，或改用引擎/父类已有的逻辑；需调用父类时优先在能通过编译的 override（如 SetupPlayerInputComponent）里写 Super:: |
| 在 AS 里用 Tick + IsInputKeyDown 做按键触发 | 每帧轮询、易重复触发或漏触发，且与引擎输入架构不一致 | 改用 SetupPlayerInputComponent + UEnhancedInputComponent::BindDebugKey(FKey, this, n"回调函数名")，在回调里写逻辑；见 [03-angelscript-ue.md](03-angelscript-ue.md) § 输入与调试键 |
| `FCollisionObjectQueryParams::AddObjectTypesToQuery(EObjectTypeQuery)` 报「No matching signatures」 | AS 绑定只暴露了 `AddObjectTypesToQuery(ECollisionChannel)`，未暴露 EObjectTypeQuery / int 重载 | 不用 Add 逐项添加；改用构造函数 `FCollisionObjectQueryParams(TArray<EObjectTypeQuery>)`：先建 `TArray<EObjectTypeQuery>`，Add 三个 ObjectTypeQuery，再 `FCollisionObjectQueryParams ObjectParams(ObjectTypes)` |
| `UEnemyStatComponent::GetResolvedBodyPartForBone(FName)` 报「No matching signatures」 | 骨骼→部位解析在**角色类**上，不在组件上；组件只有 TakeDamage 等 | 对射线命中的根 Actor 做 `Cast<AEnemyCharacterBase>(DamageTarget)`，用 `EnemyChar.GetBoneBodyPart(OutHit.BoneName)` 得到 BodyPartName，再传给 `EnemyStat.TakeDamage(BodyPartName, ...)` |
| PowerShell 里用 `cd /d` 或 `&&` 链式命令 | `cd /d` 为 **cmd** 语法；`&&` 在旧版 Windows PowerShell 中可能解析失败 | 使用 `Set-Location <path>`；多命令用 `;` 分隔或单独一行；需要链式时用 PowerShell 7+ 或脚本块 |
| 跑纯 C++ 单测脚本时报 `cmake/ctest not found` | 本机未安装 CMake，或安装在 VS 内但不在 PATH | 优先用 `content/dev/scripts/Run-CppUnitTests.ps1`：脚本会尝试从常见路径与 Visual Studio 安装中定位 `cmake.exe/ctest.exe`；也可设置 `CMAKE_EXE` 指向 cmake.exe |
| `git commit -F` 用的中文消息在 `git log` 首行出现不可见字符 | 提交信息文件为 **UTF-8 BOM**（如部分 `Set-Content -Encoding utf8`） | 用 `System.Text.UTF8Encoding($false)` + `[System.IO.File]::WriteAllText` 写 message 文件；见 `content/dev/git-automation.md` |
| AngelScript 编译失败但进程 exit code 仍为 0 | 部分环境下 Editor-Cmd 对 AS 错误未正确反映到退出码 | 项目 `Run-UnattendedTests-Min.ps1` 已用 `AlsoFailOnLogPatterns` 扫描 `Angelscript: Error:` 等；**以 stdout/stderr + 模式串为准**；见 [13-ue-automation-test-playbook.md](13-ue-automation-test-playbook.md) |
| 蓝图节点显示 `GetSlotLocalWeight`，AS 报 `UAnimInstance::GetSlotLocalWeight` 无匹配 | UE 蓝图 DisplayName 与 C++/AS **暴露名**不一致（例：实际为 `Blueprint_GetSlotMontageLocalWeight`） | 以编译器报错为准；查 `content/reference/AS_API` 或引擎头 `AnimInstance.h`；勿凭蓝图显示名猜方法名 |
| `soft-ue-cli query-blueprint-graph` 终端输出被截断 | 图 JSON 体积大，滚屏丢节点 | **落地到文件**（`%TEMP%` 或仓库外路径），再 Read；见 [07-blueprint-query-workflow.md](07-blueprint-query-workflow.md) |
| `soft-ue-cli check-setup` / `run-python-script` 在 UE 已开时仍报 **502 Bad Gateway** | `soft-ue-cli`（httpx）默认信任系统代理；全局代理可能把 `127.0.0.1` 的请求转发走，导致 502 | **先确认 UE 已开且插件可用**，然后临时设置 `NO_PROXY=127.0.0.1,localhost` 后重试 `py -3 -m soft_ue_cli check-setup`；再检查系统代理/Clash 全局模式与绕过列表；详见技能 `soft-ue-cli-ue-bridge` §1.1 |
| AnimBP 的 ThreadSafe 里 `Call Parent: BlueprintThreadSafeUpdateAnimation` 后 **UE 卡死** | 父类（AS）ThreadSafe 路径里调用了可能触发跨线程/锁等待的 API（本轮命中：`GetCurveValue()`）；断开 Call Parent 则不卡属于典型对照证据 | 迁移模板：**ThreadSafe 仅做“读 Cache_ + 纯算术/赋值”**；把曲线采样（`GetCurveValue()` / Overlay）挪到 **GameThread**（`BlueprintUpdateAnimation`）。验证：断开/接回 Call Parent 对比，确认不再卡死 |
| 通过 soft-ue-cli / UE Python 改了 `.uasset`，但 UE 闪退后改动消失 | 写资产后未保存；UE 默认随时可能闪退 | **硬门禁**：任何写操作（reparent、删变量、改图/连线、改 defaults 等）后 **立刻 Save**，并在关键里程碑重复 Save（至少 reparent 后、compile 通过后各保存一次）；详见 `ue-automation-testing.mdc` 与技能 `soft-ue-cli-ue-bridge` §3.1 |
| `.soft-ue-index/`、`Script/Binds.Cache*` 被 `git status` 列出 | 本地生成物未忽略或误 `git add` | 确认 `.gitignore`；勿提交生成缓存；复盘时记入 gotchas |
| `Invoke-Pester -CI` 等参数报错 | 本机为 **Pester 3.x**，与 Pester 5 参数不兼容 | 使用 `content/dev/scripts/Invoke-UEAutomationTests.ps1` 的调用方式；或升级到 Pester 5+ 再统一参数 |
| `ConvertTo-Json -Depth` 报「序列化深度最大为 100」 | **Windows PowerShell 5.1** 将深度硬限制为 100 | 导出前将 depth **钳制到 ≤100**（蓝图图 JSON 仍可能截断深层嵌套，需知悉）；见 `Export-BlueprintDeepIndex.ps1` |
| Pester Unit 里把 `py.cmd` 放进 `PATH` 仍调用到真 `py` | Windows 常优先解析 **Python Launcher 的 `py.exe`**，不一定用 PATH 里靠前的 `py.cmd` | 在测试块内 `Set-Alias py <stub.cmd>` 并 finally 恢复；或让 stub 文件名不与 launcher 冲突且脚本显式调用 |
| `soft-ue-cli run-python-script --script "多行..."` 报 unrecognized arguments | 多行/引号经 shell 传参后 **argparse 收到碎参数** | 将脚本写入临时 `.py`，使用 `--script-path` |
| `Export-BlueprintTextIndex-PerAsset` 等脚本报「找不到属性 functions/results」 | `ConvertFrom-Json` 得到的对象**无该属性**，在 `Set-StrictMode` 下点属性即抛错 | 读字段前用 `Has-Prop`/`-contains` 判断；缺省当空列表；列表归一化兼容 `assets` / `results` / 根数组 |
| E2E 期望保存后必有 `.soft-ue-index/changed_assets.ndjson` 失败 | 运行的编辑器**未加载**含保存队列钩子的插件构建；或 save 未触发 `OnObjectSaved`（资产未脏、路径不对） | 插件改动后需 **重编并重启** UE；save 前先 dirty 再 `save_loaded_asset`；套件可对「无队列」做 **skip/早退** 以免误杀整条 E2E（见 `E2E-Snapshot-System.Tests.ps1`） |


---

## 维护

- 遇到新坑或排错经验，在此表或下方分条追加。
- 与「决策」区分：易错点偏操作与排错，决策偏选型与约定。
- 开发过程中的随手记录先写到 `content/dev/pitfalls-inbox.md`，收敛后再迁移到本文件；工作流见 `content/dev/pitfall-capture.md`。
- 结构化「复盘自动化工作流」（取证、门禁、提交粒度）见 [15-retro-automation-workflow.md](15-retro-automation-workflow.md) 与技能 **retro-automation-workflow**。

