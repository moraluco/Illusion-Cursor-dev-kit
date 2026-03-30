# 敌人通用动画系统重构路线（Motion Matching + 分层曲线）

本文用于沉淀敌人动画系统的长期重构方案，目标是把当前敌人动画从“单体蓝图可用”逐步演进为“可复用、可扩展、可调试”的通用框架。

当前主要参考资产：编辑器内 **ABP_Enemy_Shadow** 等（通过 soft-ue-cli 或 Content 路径打开）。参考文档：
  - [08-player-3c-animation-system](08-player-3c-animation-system.md)
  - [09-player-animation-system](09-player-animation-system.md)
  - [11-als-animinstance-framework-and-layering-curves](11-als-animinstance-framework-and-layering-curves.md)

---

## 1. 重构目标与边界

### 1.1 目标

1. **Locomotion 基底统一**：使用 Motion Matching 作为敌人移动基底（已完成第一步）。
2. **分层可控**：引入 ALS 风格的 Layering 思路，用 Pose 资产 + 曲线控制不同骨骼分区混合。
3. **通用化**：形成可被多个敌人复用的动画管线（Shadow 先行，后续复制到其它敌人）。
4. **可观测**：建立曲线、状态、蒙太奇优先级冲突的调试手段。

### 1.2 非目标（短期）

- 不追求一次性统一所有敌人动画资产命名和骨架差异。
- 不在首期引入复杂能力系统改造，只做动画图与数据契约层收敛。

---

## 2. 当前状态（以 ABP_Enemy_Shadow 为起点）

从快照可见，`ABP_Enemy_Shadow` 已具备以下关键结构雏形：

- `MM Locomotion`
- `Locomotion Additive (MS)`
- `Overlay Blending on Poses.`
- `Layering`（Linked Anim Layer）
- 主图含 `Slot 'FullBody'`、`Inertialization`、`ControlRig`

这意味着基础框架方向正确：**MM 负责底层移动连续性，Layering 负责上层姿态覆盖**。后续重点是把“分层权重”从临时逻辑升级为统一曲线契约。

---

## 3. 目标架构（通用敌人版本）

建议标准执行顺序：

1. `MM Base Locomotion`
2. `Locomotion Additive (MS)`
3. `Overlay Pose`（武器/行为姿态）
4. `Layered Blend Per Bone`（分区遮罩）
5. `Slot`（蒙太奇）
6. `Inertialization`
7. `ControlRig / IK`

关键原则：

- **固定遮罩 + 动态曲线** 二层控制：
  - 固定遮罩：骨骼分区（如 Spine/Arms/Head）。
  - 动态曲线：每层 0~1 权重（平滑切换、避免硬切）。
- **同一骨骼链同一时刻尽量单一主驱动**：
  - 防止 Overlay Pose 与 UpperBody Montage 双重叠加导致抽搐。

---

## 4. 曲线契约（建议先统一）

优先复用 ALS 语义，降低团队理解成本：

- `LayerUpperBody`（敌人通用总开关，可选）
- `LayerHead`
- `LayerArmLeft`
- `LayerArmRight`
- `LayerSpine`
- `LayerPelvis`
- `LayerLegs`
- `HandL_Override` / `HandR_Override`（手部 Socket 覆盖强度）

约定：

- 曲线范围统一为 `[0, 1]`。
- 0 表示不参与，1 表示完全参与。
- 所有覆盖类曲线必须支持插值（时间平滑），禁止瞬时硬切。

---

## 5. 分阶段实施计划（长期可迭代）

### Phase A：最小闭环（1 个敌人可上线）

目标：先把 Shadow 跑通稳定版本。

- 保留 MM 基底；
- 仅引入一个 `LayerUpperBody` 曲线；
- 打通 `Base + UpperBodyPose + Montage` 的优先级；
- 加入基础调试输出（当前曲线值、当前上层状态、是否 Montage 覆盖）。

验收：

- 行走/转向/停步无明显抖动；
- 攻击或技能蒙太奇期间无“双重叠加”；
- 手部覆盖切换不跳变。

### Phase B：细分部位（同骨架敌人可复用）

- 将 `LayerUpperBody` 拆分为 Head / Arms / Spine；
- 增加左右手独立覆盖曲线；
- 抽出通用 Layering 子图模板（或 Linked Layer 规范）。

验收：

- 上半身与下半身动作可独立组合；
- 左右手可独立控制，不互相污染。

### Phase C：系统化复用（跨敌人批量接入）

- 形成敌人动画模板文档（接入步骤 + 必备变量 + 必备曲线）；
- 对不同骨架建立映射表（遮罩骨骼起点、IK 骨名）；
- 建立“新增敌人动画接入清单”。

验收：

- 新敌人接入时间显著降低；
- 调试路径标准化（问题可快速定位在曲线/遮罩/蒙太奇/IK 任一层）。

---

## 6. 风险与易错点

1. **双重叠加风险**：Overlay Pose 与 Slot 蒙太奇作用同骨骼链。
2. **曲线命名漂移**：同语义多命名导致调试困难。
3. **遮罩层级错误**：骨骼分区边界设置不一致导致串层。
4. **IK 与分层冲突**：手脚后处理修正放置顺序不当。
5. **无观测手段**：出现抖动时无法判断是 MM、曲线还是蒙太奇问题。

---

## 7. 调试与验收清单（每次改图必过）

- **曲线检查**：关键曲线是否按预期变化，是否存在瞬时跳变。
- **优先级检查**：Montage 播放时是否正确压制对应 Overlay。
- **遮罩检查**：目标骨骼链是否生效，非目标骨骼是否被污染。
- **时序检查**：Inertialization 与 ControlRig 的位置是否稳定。
- **回归检查**：Idle / Walk / Run / Attack / HitReact / Death 的组合回归。

---

## 8. 后续文档拆分建议

当该主题继续扩大时，建议拆出：

- `content/design/enemy-animation-layering-design.md`：方案与权衡（why）
- `content/dev/enemy-animation-layering-implementation.md`：具体接入步骤（how）
- 本文保留为知识总览（概念、约定、路线图、清单）。

---

## 9. 维护原则

- 以可复用约定为核心，不记录一次性临时操作。
- 每次 Phase 完成后补充“结果 + 调整原因 + 新增风险”。
- 若命名或顺序发生变化，优先更新本文的“曲线契约”和“标准执行顺序”。

---

## 10. AS AnimInstance 能力边界评估（用于文本化改造决策）

本节用于回答一个关键问题：在敌人动画系统里，若目标是“逻辑尽量文本化以便 AI 维护”，`AnimInstance` 相关能力哪些可迁到 AngelScript（AS），哪些仍应留在 AnimBP/资产层。

### 10.1 评估问题清单

1. AS 是否可直接实现 `UAnimInstance` 生命周期与每帧状态同步？
2. AS 是否支持线程安全动画更新入口（对应 UE 的并行更新阶段）？
3. AS 是否可完成蒙太奇播放、打断、队列化控制？
4. AS 是否支持 Linked Anim Layer / Linked Anim Graph 的运行时链接与查询？
5. AS 是否能读写动画曲线（尤其是 Layering 曲线）？
6. Motion Matching / PoseSearch 这类核心节点是否可由 AS 直接替代？

### 10.2 依据（本地 API 与项目脚本）

- **`UAnimInstance` 暴露能力**：
  - 已暴露 `BlueprintInitializeAnimation`、`BlueprintUpdateAnimation`、`BlueprintThreadSafeUpdateAnimation`、`BlueprintPostEvaluateAnimation`。
  - 已暴露 `Montage_Play`、`Montage_Stop`、`GetCurrentActiveMontage` 等蒙太奇接口。
  - 已暴露 `GetCurveValue(FName)`（曲线读取）。
- **`USkeletalMeshComponent` 暴露能力**：
  - 已暴露 `SetAnimClass`、`GetAnimInstance`。
  - 已暴露 `LinkAnimClassLayers`、`LinkAnimGraphByTag`、`GetLinkedAnimLayerInstanceByGroup`。
- **项目/示例脚本证据**：
  - 项目内 `RevolverPistolAnimInstance.as` 直接继承 `UAnimInstance` 并在 `BlueprintUpdateAnimation` 中同步状态。
  - 示例 `FeatureAnimInstanceJump.as` 使用 `BlueprintThreadSafeUpdateAnimation`（并标注线程安全注意事项）。
  - 项目内 `WeaponComponent.as` 已通过 `UAnimInstance` 调用 `Montage_Stop`。
- **未命中证据**：
  - 在当前本地 AS API 索引中，未找到 `UAnimInstance` 级别的通用 `SetCurveValue`（可读曲线，写曲线未确认有统一接口）。
  - 未检索到可直接替代 Motion Matching / PoseSearch 图节点的 AS 侧接口文档。

### 10.3 结论（支持 / 不支持 / 待确认）

- **支持（可迁到 AS 文本层）**
  - 状态同步与离散状态仲裁（Tag/模式/覆盖优先级）。
  - 线程安全更新中的只读计算与缓存变量更新。
  - 蒙太奇播放、停止、段跳转、状态查询等控制逻辑。
  - Linked Layer/Graph 的运行时装配与查询（在组件/实例层）。
- **不建议迁移（保留在 AnimGraph/资产层）**
  - `Layered Blend Per Bone`、`Modify Curve`、`Slot`、`Inertialization`、ControlRig/IK 节点拼接本身。
  - Motion Matching / PoseSearch 的图配置与资产求解链路。
- **待确认（落地前必须二次验证）**
  - 是否存在项目自定义封装的“写动画曲线”接口可供 AS 直接调用；若无，采用“AS 写变量 + AnimGraph 写曲线”。

### 10.4 架构决策（敌人系统建议口径）

采用“**薄 AnimBP + 厚 AS 逻辑层**”：

- **AnimBP 负责**：姿态求解与图节点编排（MM、Blend、Slot、IK、Modify Curve）。
- **AS AnimInstance 负责**：状态机、优先级仲裁、曲线目标值计算、蒙太奇策略、调试输出。

该口径与本文第 3 节目标架构兼容，可在不破坏资产生产流程的前提下，把可文本化部分最大化。

### 10.5 实施约束（避免返工）

1. **单一权威**：离散状态仅在角色/能力或 AS 动画逻辑层维护，AnimGraph 只消费。
2. **线程边界**：`BlueprintThreadSafeUpdateAnimation` 中不访问非线程安全组件状态，遵循“只读缓存/参数”的并行约束。
3. **曲线约束**：若缺少 AS 写曲线能力，统一走“AS 产出 alpha 变量 -> AnimGraph `Modify Curve` 落曲线”。
4. **同骨链单驱动**：同一时刻同骨骼链避免 Overlay 与 Montage 双重主驱动。
5. **可观测性**：为 AS 层增加调试字段（当前状态、目标曲线值、蒙太奇仲裁结果），用于定位抖动与冲突。

### 10.6 复核清单（每次能力升级或引擎升级后执行）

- [ ] 本地 `content/reference/AS_API/API_Docs/UAnimInstance.md` 是否新增/变更曲线写入相关接口。
- [ ] 本地 `content/reference/AS_API/API_Docs/USkeletalMeshComponent.md` 的 Linking API 是否有签名变化。
- [ ] 项目脚本是否已有新的 AnimInstance 基类封装可复用（避免重复造轮子）。
- [ ] 若接入新 MM/动画插件，是否新增 AS 可调用接口并回写到 API 文档索引。
