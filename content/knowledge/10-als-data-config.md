# ALS 数据配置（移动：加速度、阻尼、制动）

本文整理 **ALS-Refactored** 中与**角色移动数据**相关的配置入口与数据流向，便于调整玩家角色的加速度、制动（减速度）、地面阻尼等。与 3C/动画的边界见 [08-player-3c-animation-system](08-player-3c-animation-system.md)、[09-player-animation-system](09-player-animation-system.md)。

**约定**：蓝图/DataAsset 以编辑器内资产为准；读图可用 **soft-ue-cli**。ALS 插件代码位于 `ManteumTower/Plugins/ALS-Refactored/Source/ALS/`。

---

## 1) 配置入口：改哪里

### 1.1 主配置：移动设置 DataAsset（推荐）

**资产路径（编辑器内）**：`/Game/Data/3C/Lin_MovementSettings_Default`  
（Content 中对应为项目 Content 目录下的 `Data/3C/Lin_MovementSettings_Default`）

角色使用的移动参数来自 **UAlsMovementSettings** 型 DataAsset。其中与“加速度、制动、阻尼”直接相关的是每个 **FAlsMovementGaitSettings** 里的：

- **AccelerationAndDecelerationAndGroundFrictionCurve**（`UCurveVector`）
  - **X 轴** → 加速度（cm/s²），对应 `MaxAccelerationWalking`
  - **Y 轴** → 制动减速度（cm/s²），对应 `BrakingDecelerationWalking`
  - **Z 轴** → 地面摩擦（阻尼感），对应 `GroundFriction`
- **RotationInterpolationSpeedCurve**（`UCurveFloat`）  
  控制**地面移动时角色朝向的插值半衰期**（秒）：角色从当前朝向平滑转向目标朝向（视角方向或速度方向）的快慢。横轴为 **Gait Amount**（采样时至少为 1，即行走及以上）。**曲线值 = 半衰期**：值越小转向越快（更跟手），值越大转向越慢（更平滑）。代码中还会根据相机偏航角速度再乘一个系数，相机转得快时等效半衰期会缩短，提高跟镜响应。  
  使用处：`AAlsCharacter::CalculateGroundedMovingRotationInterpolationHalfLife()` → `SetRotationExtraSmooth()`（仅在地面、ViewDirection/VelocityDirection 等模式下使用）。
- 上述曲线横轴均为 **Gait Amount**：0 = 静止，1 = 行走，2 = 奔跑，3 = 冲刺（见下数据流）。

同一条目下还有 WalkForwardSpeed、RunForwardSpeed、SprintSpeed 等，用于计算 Gait Amount 和最大速度，间接影响曲线采样。

**在编辑器中**：在 Content Browser 找到该 DataAsset → 打开 → 在对应 **Rotation Mode** 与 **Stance** 下编辑上述曲线与速度即可。

### 1.2 角色蓝图：引用哪套配置

**BP_Character_Lin** 的 Class Defaults 中：

- **MovementSettings** = `Lin_MovementSettings_Default`

若要切换为另一套移动配置（例如疲惫状态），可在此处或运行时改为其他 `UAlsMovementSettings` 资产（如 `Lin_MovementSettings_Exhausted`），或通过蓝图/脚本调用 `AlsCharacterMovement->SetMovementSettings(NewSettings)`。

### 1.3 组件默认值（仅作后备）

`UAlsCharacterMovementComponent` 在 C++ 构造函数中设置的默认值（`AlsCharacterMovementComponent.cpp`）包括：

- `MaxAccelerationWalking = 2000.0f`
- `BrakingDecelerationWalking = 1500.0f`
- `GroundFriction = 4.0f`

地面行走时，这些值会被 **RefreshGroundedMovementSettings()** 根据曲线**每帧覆盖**。因此要改“加速度、阻尼、制动”应优先改 DataAsset 中的曲线，而不是依赖组件默认值。

---

## 2) 数据流向（完整链路）

```
┌─────────────────────────────────────────────────────────────────────────────┐
│ 1. 配置来源                                                                  │
│    BP_Character_Lin (Class Defaults)                                       │
│    └── MovementSettings = Lin_MovementSettings_Default (UAlsMovementSettings)│
│    └── CharacterMovement = CharMoveComp (UAlsCharacterMovementComponent)     │
└─────────────────────────────────────────────────────────────────────────────┘
                                        │
                                        ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ 2. 运行时：当前使用的 MovementSettings                                       │
│    • 若调用了 SetMovementSettings(...) → 可切换为其他 DataAsset            │
│    • 否则一直使用 BP 默认的 Lin_MovementSettings_Default                     │
└─────────────────────────────────────────────────────────────────────────────┘
                                        │
                                        ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ 3. RefreshGaitSettings()（在 SetMovementSettings / SetRotationMode /        │
│    SetStance / PrepMoveFor 等时调用）                                        │
│    根据当前 RotationMode + Stance，从 MovementSettings 取：                 │
│    MovementSettings->RotationModes[RotationMode].Stances[Stance]             │
│    → 得到 FAlsMovementGaitSettings（含速度与曲线）→ 写入 GaitSettings        │
└─────────────────────────────────────────────────────────────────────────────┘
                                        │
                                        ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ 4. 每帧地面行走：PhysWalking() → RefreshGroundedMovementSettings()         │
│    • 用当前速度 Velocity 与 GaitSettings 的 Walk/Run/Sprint 速度比较，     │
│      算出 GaitAmount ∈ [0,3]（0=停 1=走 2=跑 3=冲刺）                        │
│    • 用 GaitAmount 采样曲线：                                               │
│      GaitSettings.AccelerationAndDecelerationAndGroundFrictionCurve         │
│      → FloatCurves[0].Eval(GaitAmount) → MaxAccelerationWalking             │
│      → FloatCurves[1].Eval(GaitAmount) → BrakingDecelerationWalking         │
│      → FloatCurves[2].Eval(GaitAmount) → GroundFriction                      │
└─────────────────────────────────────────────────────────────────────────────┘
                                        │
                                        ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ 5. 物理步进使用这些值                                                        │
│    • GetMaxAcceleration()（地面）→ 返回 MaxAccelerationWalking               │
│    • CalcVelocity(DeltaTime, GroundFriction, ..., GetMaxBrakingDeceleration()) │
│      → 引擎用 BrakingDecelerationWalking（制动）、GroundFriction（阻尼）     │
│        参与速度积分与制动                                                    │
└─────────────────────────────────────────────────────────────────────────────┘
```

**要点**：加速度、制动、地面摩擦均由 **Gait Amount** 驱动曲线得到，Gait Amount 又由当前水平速度在 Walk/Run/Sprint 区间内映射得到，因此改曲线时需同时考虑各档速度的数值，以保证 0–3 区间内曲线形状符合预期。

---

## 3) 速查表：改什么去那里

| 目标           | 修改位置 |
|----------------|----------|
| 加速度         | **Lin_MovementSettings_Default** 中对应 Stance/RotationMode 的 **AccelerationAndDecelerationAndGroundFrictionCurve** 的 **X 轴**（按 Gait 0–3 调）。 |
| 制动（减速度） | 同一曲线的 **Y 轴**。 |
| 阻尼（地面摩擦） | 同一曲线的 **Z 轴**。 |
| 走/跑/冲刺速度 | 同一 DataAsset 下该 Stance 的 **WalkForwardSpeed / RunForwardSpeed / SprintSpeed**（影响 GaitAmount 与曲线采样）。 |
| 地面转向跟手/平滑度 | 同一 Stance 下的 **RotationInterpolationSpeedCurve**（Float 曲线）：值 = 半衰期（秒），越小转向越快，越大越平滑；仅在地面移动且非 Aiming 时生效。 |

资产在编辑器中：Content → Data → 3C → **Lin_MovementSettings_Default**。若项目 Content 结构不同，可在 Content Browser 中搜索 `Lin_MovementSettings_Default` 定位。

---

## 4) 相关代码与资产

- **UAlsMovementSettings**：`.../ALS/Public/Settings/AlsMovementSettings.h`（FAlsMovementGaitSettings、曲线与速度字段）。
- **UAlsCharacterMovementComponent**：`.../ALS/Public/AlsCharacterMovementComponent.h`，`.../ALS/Private/AlsCharacterMovementComponent.cpp`（RefreshGaitSettings、RefreshGroundedMovementSettings、SetMovementSettings、GetMaxAcceleration、CalcVelocity 使用处）。
- **BP_Character_Lin**：`/Game/Core/BP_Character_Lin`（或项目内实际路径）；`MovementSettings`、`CharacterMovement` 引用与 08/09 中 3C 描述一致；细节以编辑器或 soft-ue-cli 查询为准。
