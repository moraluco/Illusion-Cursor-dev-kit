# 项目架构总览（ManteumTower）

本文基于**项目根**下 C++ 插件、`ManteumTower/Script`、`BlueprintSnapshot/_index.json` 归纳，用于快速建立项目骨架。蓝图细节以 BlueprintSnapshot JSON 为权威来源；子系统实现见 08、09 等文档。

**数据来源约定**：与 [09-player-animation-system](09-player-animation-system.md) 一致，本文涉及的事实均以项目根下上述源码与快照为准。

---

## 1. 项目根与 Kit 关系

- **工作区** = Kit 根 + 项目根（双根）。文档与知识库在 **Kit 根下的 content/**；代码与资源在**项目根**。
- **项目根**下主要内容集中在 **ManteumTower**（Plugins、Script、Content、BlueprintSnapshot 等）。本总览描述该范围内的目录、插件、脚本与蓝图分布。

---

## 2. 项目根目录结构（ManteumTower 相关）


| 路径/目录                           | 职责                                                                                                                 |
| ------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| ManteumTower/Plugins/           | 项目自用 C++ 插件：BlueprintSerializer、ALS-Refactored、ReCapability                                                        |
| ManteumTower/Script/            | AngelScript 脚本：Character、System、Utils                                                                              |
| ManteumTower/Content（UE 资产）     | 蓝图、材质、动画等，由 UE 编辑器管理；蓝图已导出至 BlueprintSnapshot                                                                      |
| ManteumTower/BlueprintSnapshot/ | 蓝图导出快照：_index.json、各蓝图 JSON；供 Agent 与工具读取，详见 [07-blueprint-snapshot-for-agent](07-blueprint-snapshot-for-agent.md) |


---

## 3. C++ 插件


| 插件名                     | 模块                                             | 职责                                                  | 参考文档                                                                                                                          |
| ----------------------- | ---------------------------------------------- | --------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| **BlueprintSerializer** | BlueprintSerializer (Editor)                   | 将蓝图序列化为 JSON，供分析、文档与 Agent 阅读；导出至 BlueprintSnapshot | [06-lessons-blueprint-serializer](06-lessons-blueprint-serializer.md)                                                         |
| **ALS-Refactored**      | ALS, ALSCamera, ALSExtras, ALSEditor           | 高级 locomotion 与动画系统（C++ 重写版）；角色移动、姿态、相机与动画实例        | [08-player-3c-animation-system](08-player-3c-animation-system.md)、[09-player-animation-system](09-player-animation-system.md)、[10-als-data-config](10-als-data-config.md) |
| **ReCapability**        | ReCapabilityCore (Runtime), ReCapabilityEditor | ManteumTower 能力系统相关插件（Runtime + Editor）             | —                                                                                                                             |


---

## 4. AngelScript 模块

脚本位于 **ManteumTower/Script/**，与 reference 及 [03-angelscript-ue](03-angelscript-ue.md) 对应。

### 4.1 目录与主要类


| 目录/命名空间           | 主要类                                                                     | 说明                                                      |
| ----------------- | ----------------------------------------------------------------------- | ------------------------------------------------------- |
| Character/        | APlayerCharacterBase (→ AAlsCharacterExample)                           | 玩家角色基类，继承 ALS 示例角色                                      |
| Character/        | AEnemyCharacterBase (→ ACharacter)                                      | 敌人角色基类；含 EnemyStatComp、PatrolPathComp、MotionWarpingComp |
| System/UnitInfo   | UPlayerStatComponent, UEnemyStatComponent                               | 单位数值/状态组件                                               |
| System/Weapon     | AWeaponBase, UWeaponComponent, UBallisticComponent, UCurveDamageFalloff | 武器基类与弹道、伤害衰减                                            |
| System/QTE        | UQTESubsystem, UEnemyQTEComponent                                       | QTE 子系统与敌人 QTE 组件                                       |
| System/Interact   | UInteractSubsystem                                                      | 交互子系统                                                   |
| System/PatrolPath | UPatrolPathComponent, APatrolPoint                                      | 巡逻路径组件与路点                                               |
| Utils/            | FL_SpatialCheck（函数库）                                                    | 空间检测、朝向与向量工具（BlueprintPure 等）                           |


### 4.2 与核心蓝图的对应关系（示例）


| AS 类                    | 对应蓝图/用途                                            |
| ----------------------- | -------------------------------------------------- |
| APlayerCharacterBase    | BP_Character_Lin（/Game/Core）                       |
| AEnemyCharacterBase     | BP_Enemy_Shadow（/Game/Enemy/Shadow）                |
| UPlayerStatComponent    | BPC_PlayerStat（/Game/System/UnitInfo）              |
| UEnemyStatComponent     | BPC_EnemyStat（/Game/System/UnitInfo）               |
| UPatrolPathComponent    | BPC_PatrolPath（/Game/System/PatrolPath）            |
| UEnemyQTEComponent      | BPC_EnemyQTE（/Game/System/QTE）                     |
| UWeaponComponent / 武器相关 | BPC_Weapon、BP_Weapon_Pistol 等（/Game/System/Weapon） |


---

## 5. 蓝图分布

快照索引：**项目根下 ManteumTower/BlueprintSnapshot/_index.json**（当前约 249 张蓝图）。阅读顺序与字段含义见 [07-blueprint-snapshot-for-agent](07-blueprint-snapshot-for-agent.md)：先 _index，再按需单蓝图 JSON。

### 5.1 按路径/模块分类（主要前缀）


| 前缀/模块            | 说明                                                           | 核心资产示例                                                                                    |
| ---------------- | ------------------------------------------------------------ | ----------------------------------------------------------------------------------------- |
| /Game/Core       | 游戏核心：GM、玩家角色、Controller、公共函数库                                | GM_ManteumTower, BP_Character_Lin, PC_Character_Lin, BPFL_Common                          |
| /Game/Enemy      | 敌人与 AI：Shadow 敌人、BT（Task/Service/Decorator）、武器、AnimNotify、调试 | BP_Enemy_Shadow, AIC_Enemy_Shadow, BTT_Shadow_*, BPC_EnemyStat, BP_MeleeWeapon_*          |
| /Game/System     | 系统组件：UnitInfo、Weapon、PatrolPath、QTE、Spread 等                 | BPC_PlayerStat, BPC_EnemyStat, BPC_Weapon, BP_Weapon_Pistol, BPC_PatrolPath, BPC_EnemyQTE |
| /EnemyRefactored | 重构版 AI：BT、EQS、敌人基类、AIC                                       | BTT_*, BTS_*, BP_Enemy_Base_Old, AIC_Enemy_Base_Old, EQS_Context_TargetActor              |
| /ALS             | 动画与相机（ALS-Refactored 插件内容）                                   | AB_Als_*, B_Als_* 等；详见 08、09                                                              |
| /Engine 及其他      | 引擎/插件自带蓝图                                                    | 宏、DamageType、Sky 等；数量较多，按需在 _index 中筛选                                                    |


### 5.2 核心蓝图清单（速查）

- **游戏框架**：GM_ManteumTower, PC_Character_Lin  
- **角色**：BP_Character_Lin（玩家）, BP_Enemy_Shadow（敌人）  
- **AI**：AIC_Enemy_Shadow；BT 任务/服务/装饰器（BTT_*, BTS_*, BTD_*）  
- **系统**：BPC_PlayerStat, BPC_EnemyStat, BPC_Weapon, BP_Weapon_Pistol, BPC_PatrolPath, BPC_EnemyQTE, BPC_Spread  
- **动画**：主 ABP、Linked 子图与 Overlay 见 [08](08-player-3c-animation-system.md)、[09](09-player-animation-system.md)

---

## 6. 核心数据流/调用关系（简要）

- **3C → 动画**：Character/Movement 与 AnimInstance 在 GameThread 同步状态（Tag、LocomotionState 等）；动画通过曲线与事件回写供 ControlRig、IK、相机使用（见 08、09）。
- **AS 角色 ↔ 蓝图组件**：APlayerCharacterBase / AEnemyCharacterBase 由蓝图子类（BP_Character_Lin、BP_Enemy_Shadow）挂载 BPC_* 等组件；逻辑在 AS 与蓝图中分工（如 UnitInfo、Weapon、QTE、PatrolPath）。
- **AI**：AIC 持有行为树；BT 使用 BTS_*/BTT_*/BTD_* 与黑板、EQS 等；敌人 Shadow 使用 Game/Enemy 与 EnemyRefactored 两套 BT 相关资产。

---

## 7. 与 knowledge 其他文档的引用


| 文档                                                                    | 职责                             | 何时查阅         |
| --------------------------------------------------------------------- | ------------------------------ | ------------ |
| [02-ue-dev](02-ue-dev.md)                                             | UE 研发概念、目录约定、资源规范              | 概念与约定        |
| [03-angelscript-ue](03-angelscript-ue.md)                             | AS 与 UE 集成、脚本规范、reference 对应关系 | 写/读 AS 脚本    |
| [04-decisions](04-decisions.md)                                       | 项目/技术决策记录                      | 了解选型与约定      |
| [05-gotchas](05-gotchas.md)                                           | 易错点、排错备忘                       | 排错与避坑        |
| [06-lessons-blueprint-serializer](06-lessons-blueprint-serializer.md) | 蓝图快照与 BlueprintSerializer 插件   | 导出与 Agent 优化 |
| [07-blueprint-snapshot-for-agent](07-blueprint-snapshot-for-agent.md) | 蓝图快照阅读顺序与字段                    | 读蓝图 JSON     |
| [08-player-3c-animation-system](08-player-3c-animation-system.md)     | 玩家 3C 与动画系统边界、扩展与调试            | 玩家动画与 3C     |
| [09-player-animation-system](09-player-animation-system.md)           | 玩家动画资产结构、刷新链路、曲线与蒙太奇           | 玩家 ABP 与动画管线 |


