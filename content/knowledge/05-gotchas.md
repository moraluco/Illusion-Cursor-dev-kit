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
| UnrealEditor-Cmd 找不到（脚本报错） | 引擎为源码多级目录（如 Engine/Engine/Engine/Binaries）或 Epic 安装在其他路径 | 用 .uproject 的 EngineAssociation 解析引擎根后依次尝试 Engine/Engine/Binaries、Engine/Binaries、Binaries；或建 Scripts/engine_path.txt 写一行 Binaries/Win64 路径；或传 --engine-path / UE_ENGINE_PATH |
| 运行 BlueprintSerializer 测试脚本「没有任何输出」 | 在 UE 控制台里执行了 .ps1/.cmd（控制台只认引擎命令）或 UnrealEditor-Cmd 不向 stdout 打日志 | 在系统 PowerShell/CMD 中于项目根执行脚本；脚本应合并 Saved/Logs 下最新 .log 到输出，便于调试 |
| 自动化历史难复盘、`git log` 看不懂 | commit 不原子化：一个提交混杂多主题改动、备注缺少“为什么/如何验证” | 约定 **一个 commit = 一个可验证点**；中文备注写清“为什么/做了什么/怎么验证”；按仓库边界拆分（改项目提交项目、改 Kit 提交 Kit）。参见 `content/dev/git-automation.md` 与技能 **git-local-p4-workflow** |
| soft-ue-cli `check-setup` 失败或桥不可达 | 编辑器未启动、端口被占用、或 SOFT_UE_BRIDGE_URL/PORT 与实例不一致 | 启动带 SoftUEBridge 的编辑器；查 `.soft-ue-bridge/instance.json` 或设环境变量；见 content/dev/soft-ue-cli.md |
| BlueprintSerializer 导出到错误目录（若仍使用该插件做人工导出） | 用单参 `FPaths::ConvertRelativePathToFull(ExportDir)` 对已是绝对路径再解析，会按 CWD 重算；或依赖 `GetProjectFilePath()` 在部分环境下返回「短」路径 | 绝对路径只做 Normalize/Collapse；详见 dev/editor-tools/blueprint-export-serializer.md §8。**注意**：Agent 读蓝图不依赖该导出。 |
| 构建报「未能向 .msCoverageSourceRootsMapping_... 写入，访问被拒绝」 | 引擎 C# 程序（如 EpicGames.Perforce.Fixture）的 bin 目录被占用、只读或杀毒拦截 | 关掉占用进程、以管理员运行、杀毒排除该路径，或只编游戏目标（不编该 Fixture） |
| Agent 修改项目文件时报「Permission denied」或「Write permission denied」 | 项目使用 Perforce 且文件默认只读，未 checkout 时磁盘不可写 | 在修改前对目标文件执行 `p4 edit <路径>`（或 P4V 中右键 Check Out）；修改完成后可正常保存与提交 |
| AngelScript 里需要显示 FGameplayTag 为字符串时编译/运行报错 | FGameplayTag 转字符串的 API 因 UE/AS 版本不同可能为 `ToString()` 或 `GetTagName().ToString()` | 优先用 `Tag.ToString()`；若不存在则用 `Tag.GetTagName().ToString()`。参考 [dev/player-overlay-mode-extension.md](../dev/player-overlay-mode-extension.md) 中的 Debug 写法 |
| AngelScript 中 `Super::Tick(DeltaSeconds)` 等报「Namespace 'Super' doesn't exist」 | 部分 override（如 Tick）在 AS 绑定里可能未暴露 Super 或语法不同 | 该 override 内不写 Super 调用，或改用引擎/父类已有的逻辑；需调用父类时优先在能通过编译的 override（如 SetupPlayerInputComponent）里写 Super:: |
| 在 AS 里用 Tick + IsInputKeyDown 做按键触发 | 每帧轮询、易重复触发或漏触发，且与引擎输入架构不一致 | 改用 SetupPlayerInputComponent + UEnhancedInputComponent::BindDebugKey(FKey, this, n"回调函数名")，在回调里写逻辑；见 [03-angelscript-ue.md](03-angelscript-ue.md) § 输入与调试键 |
| `FCollisionObjectQueryParams::AddObjectTypesToQuery(EObjectTypeQuery)` 报「No matching signatures」 | AS 绑定只暴露了 `AddObjectTypesToQuery(ECollisionChannel)`，未暴露 EObjectTypeQuery / int 重载 | 不用 Add 逐项添加；改用构造函数 `FCollisionObjectQueryParams(TArray<EObjectTypeQuery>)`：先建 `TArray<EObjectTypeQuery>`，Add 三个 ObjectTypeQuery，再 `FCollisionObjectQueryParams ObjectParams(ObjectTypes)` |
| `UEnemyStatComponent::GetResolvedBodyPartForBone(FName)` 报「No matching signatures」 | 骨骼→部位解析在**角色类**上，不在组件上；组件只有 TakeDamage 等 | 对射线命中的根 Actor 做 `Cast<AEnemyCharacterBase>(DamageTarget)`，用 `EnemyChar.GetBoneBodyPart(OutHit.BoneName)` 得到 BodyPartName，再传给 `EnemyStat.TakeDamage(BodyPartName, ...)` |


---

## 维护

- 遇到新坑或排错经验，在此表或下方分条追加。
- 与「决策」区分：易错点偏操作与排错，决策偏选型与约定。

