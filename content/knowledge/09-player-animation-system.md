## 玩家动画系统（ALS-Refactored + AB_Als_Lin + LinkedGraphs + Montage/Notify）

本文描述当前项目**玩家角色动画系统**的资产结构、刷新链路、曲线约定、转场/TIP 与蒙太奇、AnimNotify 及与相机的联动。与 3C 的接口边界（动画消费哪些状态、向外暴露哪些曲线与事件）见 [08-player-3c-animation-system](08-player-3c-animation-system.md)。

**数据来源约定**：本项目所有 UE 蓝图已通过蓝图导出插件导出为**项目蓝图快照 JSON**，统一存放在项目根下 `ManteumTower/BlueprintSnapshot/` 目录中（含 `_index.json` 及各蓝图快照）。本文中涉及的「AnimBP/子图/Notify/蒙太奇逻辑」等事实，均以这些 BlueprintSnapshot JSON 为权威来源进行描述和推导，而不是依赖在编辑器中人工浏览蓝图图表。

### 1) 系统概览与职责边界

#### 1.1 动画系统从 3C 消费的状态（只读）

动画实例（`UAlsAnimationInstance` 及其 Linked 子图）每帧从 `AAlsCharacter` 拉取以下状态，**不在 ABP 里二次推导**：

- **离散 Tag**：`ViewMode`、`LocomotionMode`、`RotationMode`、`Stance`、`Gait`、`OverlayMode`、`LocomotionAction`、`GroundedEntryMode`
- **运动学与视角**：MovementBase、ViewState、LocomotionState、InAirState、FeetState 等（由 Character/Movement 与 AnimInstance 的 GameThread 刷新提供）

这些状态的权威来源与复制策略见 3C 文档的 Character 与 Control 章节。

#### 1.2 动画系统向外暴露的“接口”

- **曲线回读（AnimGraph → C++）**：Pose 曲线（`PoseGrounded`/`PoseInAir`/`PoseStanding`/`PoseCrouching`/`PoseMoving`/`PoseGait`）、Layer 曲线（Head/Arms/Spine/Pelvis/Legs 等）、Feet 曲线（IK/Lock/Planted/Crossing）等，被 `RefreshPose()`/`RefreshLayering()` 等读回并写入 `FAlsPoseState`/`FAlsLayeringState`，供 ControlRig、IK、转场判断等使用。
- **事件（AnimNotify）**：用于边沿触发（如落地切 Grounded、触发转场、触发相机震动），不做复杂规则。
- **蒙太奇（Montage）**：转场动画、Turn In Place、Roll 等通过 AnimInstance 的队列在 PostUpdate 中播放；子图通过 `GetParent()` 调用主实例的 `PlayTransitionRightAnimation`、`StopTransitionAndTurnInPlaceAnimations` 等。

#### 1.3 规则中心不在 ABP

复杂规则（动作优先级、打断逻辑、输入缓存、武器/Overlay 切换）应放在 Character/能力系统（C++ 或脚本）；ABP 只做分支、状态机、BlendSpace、曲线权重的选择与混合。与 3C 文档中的原则一致。

### 2) 资产与图谱结构（当前项目事实）

- **主 AnimBP**：`/Game/Art/Character/Lin/ABP/AB_Als_Lin`（`AB_Als_Lin_C`），父类 `UAlsAnimationInstance`。
- **Overlay Layer**：`/ALS/ALS/Character/ALI_Overlay`（Linked Anim Layer），按 `OverlayMode` 选择不同 Overlay 子图。
- **Linked 子图**（父类 `UAlsLinkedAnimationInstance`，通过 `GetParent()` 访问主实例）：
  - `AB_Als_Lin_Locomotion`：按 `LocomotionMode` 分支 Grounded/InAir 等，内部有 Locomotion States 状态机与 Save cached pose 'Grounded'。
  - `AB_Als_Lin_Grounded`：Grounded States 状态机，Standing/Crouching 缓存，转场与 Roll→Grounded。
  - `AB_Als_Lin_Layering`：Layer 混合（Head/Arms/Spine/Pelvis/Legs、Slot、Additive 等），使用 `A_Als_Lin_Stand_Pose`/`A_Als_Lin_Crouch_Pose` 等。
  - `AB_Als_Lin_Head`、`AB_Als_Lin_Ragdolling`、`AB_Als_Lin_Standing`、`AB_Als_Lin_Crouching`、`AB_Als_Lin_Default` 等。

主 ABP 的 AnimGraph 将上述 Linked 图与 Overlay Layer 组合后，经惯性化等节点输出最终 Pose。

### 3) 动画实例刷新链路（代码级）

- **GameThread（`NativeUpdateAnimation`）**：从 Character 同步离散 Tag；依次调用 `RefreshMovementBaseOnGameThread()`、`RefreshViewOnGameThread()`、`RefreshLocomotionOnGameThread()`、`RefreshInAirOnGameThread()`、`RefreshFeetOnGameThread()`、`RefreshRagdollingOnGameThread()`。Linked 子图在 BecomeRelevant/Update 中通过 `GetParent()` 调用主实例的 `RefreshGrounded()`、`RefreshInAir()` 等。
- **并行评估（`NativeThreadSafeUpdateAnimation`）**：`RefreshLayering()`、`RefreshPose()`、`RefreshView(DeltaTime)`、`RefreshFeet(DeltaTime)`、`RefreshTransitions()` 等，从 AnimGraph 输出的曲线读回并写入各 State 结构体。
- **PostUpdate（`NativePostUpdateAnimation`）**：`PlayQueuedTransitionAnimation()`、`PlayQueuedTurnInPlaceAnimation()`、`StopQueuedTransitionAndTurnInPlaceAnimations()`。因此转场/TIP 的“播放/停止”会延后一帧生效，属队列式设计。

**专篇**：`UAlsAnimationInstance` 与 AnimBP 的职责划分、三阶段含义，以及 **Layering 曲线 → `FAlsLayeringState`** 的数据流（含示意图），见 [11-als-animinstance-framework-and-layering-curves](11-als-animinstance-framework-and-layering-curves.md)。

### 4) 曲线体系（Animation ↔ C++ 的接口）

曲线名常量定义在 `UAlsConstants`（见 `.../ALS/Public/Utility/AlsConstants.h`），AnimGraph 在对应分支末端通过 Modify Curve 等节点写入，C++ 在 `RefreshPose()`/`RefreshLayering()` 等中读回。

- **Pose 曲线**：`PoseGrounded`、`PoseInAir`、`PoseStanding`、`PoseCrouching`、`PoseMoving`、`PoseGait` 等 → `FAlsPoseState`。用于 ControlRig、IK 权重、转场允许判断等。
- **Layer 曲线**：`LayerHead`、`LayerHeadAdditive`、`LayerHeadSlot`、`LayerArmLeft`/`Right`、`LayerSpine`、`LayerPelvis`、`LayerLegs` 等 → `FAlsLayeringState`。
- **Feet**：`FootLeftIk`、`FootRightIk`、`FootLeftLock`、`FootRightLock`、`FootPlanted`、`FeetCrossing` 等，用于脚锁与 IK 量。

约定：每个 LocomotionMode/Stance 分支在输出到 Root 前应写入对应的 Pose 曲线（例如 Grounded 分支写 `PoseGrounded=1`），否则 C++ 读到的 PoseState 会错误，导致混合、IK 或转场异常。曲线命名需与 `UAlsConstants` 中一致。

### 5) 转场 / TIP 与蒙太奇（Montage）

- **子图对 Parent 的调用**（快照与代码可见）：Linked 子图内通过 `GetParent()` 调用主实例的 `PlayTransitionRightAnimation()`、`PlayTransitionLeftAnimation()`、`PlayRollToGroundedTransitionAnimation()`、`StopTransitionAndTurnInPlaceAnimations()` 等。例如 `AnimNotify_LandToGrounded` 触发时调用 `PlayTransitionRightAnimation()`。
- **“延后一帧”**：上述“播放/停止”请求会入队，在下一帧 `NativePostUpdateAnimation` 中执行，因此表现上可能感觉延迟一帧。
- **TIP 与 RotationYawSpeed**：Locomotion 图中惯性化节点会过滤 `RotationYawSpeed` 曲线，避免 TIP Montage 淡出时该曲线影响角色继续按输入旋转（详见 3C 文档经验要点）。

打断与互斥：在需要立即取消转场/TIP 的时机（例如受击、进入 Ragdoll、切换 LocomotionMode）应调用 `StopTransitionAndTurnInPlaceAnimations()`，避免残留蒙太奇播放。

### 6) AnimNotify（事件驱动）与相机联动

- **落地与转场**：快照中存在 `AnimNotify_LandToGrounded`，在落地动画中触发后，子图内可调用 `GetParent()->PlayTransitionRightAnimation()` 等，用于从 InAir 平滑过渡到 Grounded。
- **相机震动**：插件提供 `UAlsAnimNotify_CameraShake`（`.../ALSCamera/Public/Notifies/AlsAnimNotify_CameraShake.h`），在动画序列或蒙太奇中放置该 Notify，可配置 `CameraShakeClass` 与 `CameraShakeScale`。快照中有 `B_Als_CameraShake_Sprint`，用于奔跑时的镜头震动，与步态/动作严格对齐。
- **建议**：Notify 只做“事件边沿”（触发一次调用或 RPC），不在 Notify 内做复杂状态机或持久逻辑；优先级与打断规则放在 Character/能力侧。

### 7) 扩展指南（与 3C 文档互补）

- **扩展 Overlay**：在 ALI_Overlay 下增加新的 Overlay 子图，并在 Character 侧维护/复制 `OverlayMode` Tag；动画只读 Tag 做分支。
- **扩展 Locomotion 分支**：在 `AB_Als_Lin_Locomotion` 中按 `LocomotionMode` 增加新分支（如 Swimming），并在 3C 侧将 `OnMovementModeChanged` 映射到对应 `LocomotionMode`（见 3C 文档扩展模板）。
- **扩展新动作（Roll/Ragdoll/Mantle）**：由 Character 设置 `LocomotionAction` 或调用 AnimInstance 的接口（如 `SetGroundedEntryMode`、`PlayTransitionAnimation`）；动画侧只响应状态与接口调用，不自行决定“何时进入 Roll”等规则。

与 3C 的改动对齐：新增 MovementMode/CustomMode 时需在 Character 映射到 `LocomotionMode`；新增 ViewMode/RotationMode/Desired* 时需考虑复制与 Apply 时机（见 3C 文档 Character 章节）。

### 8) 调试与验收（与 3C 双向引用）

- **先查 3C 状态口径**：若动画表现异常，先确认 [08-player-3c-animation-system](08-player-3c-animation-system.md) 中的状态与调试清单——`LocomotionMode`/`RotationMode`/`Stance`/`Gait`/`OverlayMode` 是否按预期、输入是否正确写入 `Desired*`、ViewMode 与相机是否一致。
- **再查动画侧**：
  - 曲线回读：各分支是否正确写入 `PoseGrounded`/`PoseInAir`/`PoseStanding`/`PoseCrouching`/`PoseMoving`/`PoseGait`；Layer/Feet 曲线是否在对应节点有权重。
  - 转场/TIP：是否在需要打断的时机调用了 `StopTransitionAndTurnInPlaceAnimations()`；队列是否造成“延后一帧”的误判。
  - Notify：`AnimNotify_LandToGrounded` 等是否在预期帧触发；相机震动 Notify 的 `CameraShakeClass` 与播放对象是否正确。

若问题定位在曲线、状态机分支或蒙太奇/通知逻辑，以本文与 3C 文档的调试清单为准；若在状态来源或输入/相机，以 3C 文档为准。

---

### 文档编写与维护经验（可复用）

- **职责切分**：3C 文档管「状态从哪来、谁复制、输入/相机/移动怎么联动」；动画文档管「资产结构、曲线约定、转场/Notify、扩展与调试」。避免同一事实在两处展开写，用交叉链接代替复制粘贴。
- **双向呼应**：在 08 的 3C 定义、Camera 曲线、Animation 章节、调试清单四处链到 09；在 09 开头和调试章节链回 08。读者从任一篇切入都能跳到另一篇的对应位置。
- **术语与路径统一**：两篇共用同一套 Tag 名（`ViewMode`/`RotationMode`/`Stance`/`Gait` 等）、资产路径（如 `/Game/Art/Character/Lin/ABP/AB_Als_Lin`）、代码路径约定（插件内用 `.../ALS/...`、`.../ALSCamera/...`）。增改时两篇一起检查，避免口径不一致。
- **调试清单分工**：08 侧重「状态口径、Control→Desired、Camera、复制」；09 侧重「曲线回读、转场/TIP、Notify」。08 清单末尾提示「动画相关问题见 09」，09 提示「先查 3C 状态再查动画」。
- **扩展时同步**：新增 LocomotionMode/Overlay/动作时，两篇都要考虑：08 补状态映射与复制、09 补资产与曲线/转场约定；必要时在 08 的扩展模板里加「参见 09 的扩展指南」。
