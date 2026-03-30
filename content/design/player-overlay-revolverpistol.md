## 玩家 Overlay 系统扩展设计：RevolverPistol 模式

本文设计在 ALS-Refactored 基础上，为玩家 Lin 扩展一个新的 OverlayMode：`RevolverPistol`，它在语义与接入方式上**平行于**现有 `PistolOneHanded`，但允许使用一套独立的左轮动画与表现资产。

设计以以下事实为依据：

- ALS 插件 C++ 源码（`Plugins/ALS-Refactored/Source/ALS`）
- AngelScript 武器系统脚本（`Engine/ManteumTower/Script/System/Weapon`）
- 蓝图快照（`Engine/ManteumTower/BlueprintSnapshot`），尤其：
  - `Game_Core_BP_Character_Lin_BP_Character_Lin.json`
  - `Game_Art_Character_Lin_ABP_AB_Als_Lin_PistolOneHanded_A_974fc017.json`
  - `Game_Art_Character_Lin_ABP_AB_Als_Lin_RevolverPistol_AB_91b55641.json`

---

### 1. 目标与边界

#### 1.1 目标

- **新增一个 OverlayMode Tag**：`Als.OverlayMode.RevolverPistol`，并与 ALS 插件的 `AlsOverlayModeTags::RevolverPistol` 对齐。
- **角色蓝图层**（`BP_Character_Lin`）：
  - 在 `OverlayAnimationInstanceClasses` Map 中配置 `RevolverPistol → AB_Als_Lin_RevolverPistol_C`。
  - 在 `OnOverlayModeChanged` / `OnRefreshOverlayObject` 等基于 OverlayMode 的分支中，为 `RevolverPistol` 增加平行分支（Attach/Clear Overlay 对象）。
  - 在“装备左轮/切换武器”链路中，合适时机调用 `SetOverlayMode(Als.OverlayMode.RevolverPistol)`，并在收起/换武器时恢复为 `Default` 或其它模式。
- **动画蓝图层**：
  - 短期：允许 `AB_Als_Lin_RevolverPistol` 直接复用 `PistolOneHanded` 动画资源，保证流程先打通。
  - 长期：在左轮专用动画准备好后，把 `AB_Als_Lin_RevolverPistol` 的序列引用替换为左轮专用资产，实现视觉行为差异化。

#### 1.2 非目标 / 边界

- 不改动 `UAlsAnimationInstance` 的状态同步与曲线回读逻辑；`OverlayMode` 仍只是一枚 Tag，动画只读不写。
- 不改动玩家 3C 状态口径（视角、移动、输入）；扩展保持与 `08-player-3c-animation-system` 的接口契约不变。
- 当前迭代不在 AngelScript 武器基类中嵌入 Overlay 决策（例如 `WeaponBase` 自带 Overlay Tag），由玩家蓝图继续负责“武器 → OverlayMode”的映射。

---

### 2. 现状梳理（基于快照与源码）

#### 2.1 ALS 插件：OverlayMode 定义与使用

- Tag 定义位于：
  - `AlsGameplayTags.h` 中的 `namespace AlsOverlayModeTags`
  - `AlsGameplayTags.cpp` 中的 `UE_DEFINE_GAMEPLAY_TAG(...)`
- 当前内置 OverlayMode 包含：
  - `Default / Masculine / Feminine / Injured / HandsTied / Rifle / PistolOneHanded / PistolTwoHanded / Bow / Torch / Binoculars / Box / Barrel`
- `AAlsCharacter`：
  - 成员：`FGameplayTag OverlayMode{AlsOverlayModeTags::Default};`（复制 + OnRep）
  - 接口：
    - `void SetOverlayMode(const FGameplayTag& NewOverlayMode);`
    - `void OnOverlayModeChanged(const FGameplayTag& PreviousOverlayMode);`（BlueprintNativeEvent）
- `UAlsAnimationInstance`：
  - 只读字段：`FGameplayTag OverlayMode{AlsOverlayModeTags::Default};`
  - 在 `NativeUpdateAnimation` 中从 `AAlsCharacter::GetOverlayMode()` 同步。

**结论**：ALS 插件把 Overlay 视作一枚 GameplayTag，C++ 层并不关心“哪种武器对应哪个 Overlay”，只提供统一的 Set / OnChanged 管线。

#### 2.2 玩家角色 BP_Character_Lin：Overlay 映射与事件

基于 `Game_Core_BP_Character_Lin_BP_Character_Lin.json` 可见：

- **OverlayAnimationInstanceClasses（Map）**：
  - 存在于 `classDefaultValues` / `classDefaultValueDelta`，键为 Tag，值为 AnimBlueprintGeneratedClass。
  - 已有键值包括：
    - `Als.OverlayMode.Default → AB_Als_Lin_Default_C`
    - `Als.OverlayMode.Masculine → AB_Als_Lin_Masculine_C`
    - `Als.OverlayMode.Feminine → AB_Als_Lin_Feminine_C`
    - `Als.OverlayMode.Injured → AB_Als_Lin_Injured_C`
    - `Als.OverlayMode.HandsTied → AB_Als_Lin_HandsTied_C`
    - `Als.OverlayMode.Rifle → AB_Als_Lin_Rifle_C`
    - `Als.OverlayMode.PistolOneHanded → AB_Als_Lin_PistolOneHanded_C`
    - `Als.OverlayMode.PistolTwoHanded → AB_Als_Lin_PistolTwoHanded_C`
    - `Als.OverlayMode.Bow / Torch / Binoculars / Box / Barrel → 对应 AB_Als_Lin_*_C`
- **OverlayMode 分支逻辑**：
  - `OnOverlayModeChanged` 及相关函数中，存在基于 OverlayMode 的 Switch（`GameplayTagsK2Node_SwitchGameplayTag`），PinNames 包含上述所有 Overlay 值。
  - 各分支调用：
    - `ClearOverlayObject()`：切走旧 Overlay 时清理当前武器/道具 Mesh。
    - `AttachOverlayObject()`：按 OverlayMode 附加对应 OverlayObject（如 Pistol 网格）。
- **输入与切换逻辑**（节选）：
  - `IA_Weapon` 事件链路中：
    - 先检查当前 `OverlayMode` 是否为 `Default`。
    - 若为 Default：调用 `SetOverlayMode(Als.OverlayMode.PistolTwoHanded)`（示例逻辑，表示“举枪”）。
    - 若非 Default：调用 `SetOverlayMode(Als.OverlayMode.Default)` 作为“收武器”的统一出口。
  - 此外在其它状态变更（如切换姿态、某些动画完结）处也有单独的 `SetOverlayMode(...)` 调用。

**结论**：BP_Character_Lin 是“武器/输入/状态 → OverlayMode Tag → AnimBP 映射”的唯一规则中心。

#### 2.3 动画蓝图：Lin 的 Overlay 子图

在 `_index.json` 中与 Lin 相关的 Overlay AnimBP 包括（路径前缀 `/Game/Art/Character/Lin/ABP/`）：

- `AB_Als_Lin_PistolOneHanded`
- `AB_Als_Lin_PistolTwoHanded`
- `AB_Als_Lin_Rifle`
- `AB_Als_Lin_Bow`
- `AB_Als_Lin_Torch`
- … 以及非武器 Overlay（Masculine/Feminine 等）

`AB_Als_Lin_PistolOneHanded` 与 `AB_Als_Lin_RevolverPistol` 的快照对比如下（节选自 `dependencyClosure.assetPaths`）：

- `AB_Als_Lin_PistolOneHanded`：
  - `A_Als_Lin_PistolOneHanded_Aim`
  - `A_Als_Lin_PistolOneHanded_Aim_Crouch`
  - `A_Als_Lin_PistolOneHanded_Poses`
- `AB_Als_Lin_RevolverPistol` 当前状态：
  - 仍然指向 **同一套 PistolOneHanded 资产**，未替换为左轮专用序列。

**结论**：结构上 RevolverPistol 子图已存在且与 PistolOneHanded 等价，但其资产引用尚未差异化。

#### 2.4 AngelScript 武器系统

- `WeaponBase.as` / `WeaponComponent.as` 负责：
  - 武器配置（伤害、弹药、衰减曲线、开火间隔等）。
  - 开火 / 换弹等事件的 BlueprintEvent。
  - 与动画的联系主要是：由蓝图或 AS 回调驱动蒙太奇播放；并不直接操作 ALS 的 `OverlayMode`。
- 当前脚本中没有任何 `Overlay`、`OverlayMode`、`SetOverlayMode` 或 `GameplayTag` 相关逻辑。

**结论**：本轮扩展只需要在 C++ + 蓝图层打通 RevolverPistol，AS 层保持只关心武器本身。

---

### 3. 设计方案

#### 3.1 新增 ALS OverlayMode：RevolverPistol

在 ALS 插件中增加一个新的 OverlayMode 常量：

- `AlsOverlayModeTags::RevolverPistol`
- 对应 GameplayTag 字符串：`Als.OverlayMode.RevolverPistol`

理由：

- 与 `PistolOneHanded` 平行的命名与语义，符合当前命名体系（`Als.OverlayMode.`*）。
- 允许后续在 ALS Debug HUD、日志与 Blueprint Tag Switch 中直接分辨“手枪一手”与“左轮一手”。

约束：

- 不改变 `OverlayMode` 字段的含义与复制策略，仅增加可选值。
- 不在 ALS 源码中写任何“如果是 RevolverPistol 就如何如何”的分支，仍由上层蓝图决策行为。

#### 3.2 角色蓝图：Overlay 映射与 Attach/Clear 逻辑扩展

在 `BP_Character_Lin` 中按以下方式扩展：

1. **OverlayAnimationInstanceClasses Map**
  - 在现有 Map 中追加：
    - `Als.OverlayMode.RevolverPistol → /Game/Art/Character/Lin/ABP/AB_Als_Lin_RevolverPistol.AB_Als_Lin_RevolverPistol_C`
  - 使主 AnimBP 在 `OverlayMode == RevolverPistol` 时实例化 `AB_Als_Lin_RevolverPistol` 作为 Overlay Linked 子图。
2. **OnOverlayModeChanged / OnRefreshOverlayObject 的 Switch**
  - 在所有基于 OverlayMode 的 `GameplayTagsK2Node_SwitchGameplayTag` 上增加一个 Pin：
    - 名称：`Als.OverlayMode.RevolverPistol`
  - 该 Pin 的执行逻辑：
    - **Attach 分支**：调用 `AttachOverlayObject` 并传入左轮武器 Mesh（短期内可沿用 pistol Mesh，长期替换为左轮网格）。
    - **Clear 分支**：确保从 RevolverPistol 切换至其它 Overlay 时会进入 ClearOverlayObject 逻辑，与其它武器 Overlay 一致。
  - 保持其它 Overlay 分支逻辑不变。
3. **装备/切换武器时的 OverlayMode 决策**
  - 在处理 `IA_Weapon` 或“切换到左轮”相关逻辑的蓝图图表中，增加分支：
    - 当当前武器为左轮时：
      - 调用 `SetOverlayMode(Als.OverlayMode.RevolverPistol)`。
    - 当收起或切换为其它武器时：
      - 调用 `SetOverlayMode(Als.OverlayMode.Default)`（或者按需要切到 Rifle / PistolTwoHanded 等）。
  - 若后续有“多个手枪种类”：
    - 可先通过 **武器类型/数据表** 判定当前武器是否为左轮，再决定是 `PistolOneHanded` 还是 `RevolverPistol`。

#### 3.3 动画蓝图：AB_Als_Lin_RevolverPistol 资产差异化

分两阶段设计：

- **阶段一：流程打通**  
  - 保持 `AB_Als_Lin_RevolverPistol` 当前对 `PistolOneHanded` 动画资源的引用不变。
  - 目标是验证：
    - Tag 定义与复制是否正确。
    - Map / Switch / Attach/Clear 是否在 RevolverPistol 模式下正常工作。
- **阶段二：表现差异化**  
  - 美术制作左轮专用动画资产（建议目录示例）：
    - `/Game/Art/Character/Lin/Animations/Overlays/RevolverPistol/A_Als_Lin_RevolverPistol_Aim`
    - `/Game/Art/Character/Lin/Animations/Overlays/RevolverPistol/A_Als_Lin_RevolverPistol_Aim_Crouch`
    - `/Game/Art/Character/Lin/Animations/Overlays/RevolverPistol/A_Als_Lin_RevolverPistol_Poses`
  - 在 `AB_Als_Lin_RevolverPistol` 的 AnimGraph 中，按 `AB_Als_Lin_PistolOneHanded` 的结构 **一一替换**：
    - 所有指向 `PistolOneHanded_`* 的 Sequence 节点改为对应的 `RevolverPistol_*`。
  - 保持曲线写入规则不变（Pose / Layer 曲线），以不影响 ALS 的 IK / 转场判断。

---

### 4. 与 3C & AS 的接口约定

#### 4.1 与 3C（角色/输入/相机）的关系

- `OverlayMode` 仍由角色蓝图通过 `SetOverlayMode` 统一写入，3C 侧不额外增加“DesiredOverlayMode”一类状态。
- 输入侧（Enhanced Input）继续使用现有 `IA_Weapon` 等操作，只在对应图中新增 RevolverPistol 分支；不改 InputMappingContext。
- 相机、移动、IK 逻辑完全沿用当前 ALS + Lin 配置，RevolverPistol 不引入特殊规则。

#### 4.2 与 AngelScript 武器系统的关系

- WeaponBase / WeaponComponent 不直接持有 Overlay Tag，仅通过：
  - 提供武器类型、弹药、开火/换弹事件；
  - 由 BP_Character_Lin 在响应事件时根据“当前武器类型”调用 `SetOverlayMode`。
- 若未来希望把“武器 → OverlayMode”配置下沉到 AS 层，建议方式：
  - 在 `FWeaponInfo` 中增加一个 GameplayTag 字段（例如 `OverlayModeTag`）；
  - 在 `BP_Character_Lin` 通过 `WeaponComp` 读取当前武器配置并转发给 `SetOverlayMode`。
  - 本设计不先引入，以免在没有需求前增加 AS/BP 交互复杂度。

---

### 5. 实施步骤与验收

#### 5.1 实施顺序（推荐）

1. **ALS 插件层**
  - 在 `AlsGameplayTags.h/.cpp` 中增加 `RevolverPistol` 声明与定义，并编译工程。
2. **BP_Character_Lin**
  - 更新 `OverlayAnimationInstanceClasses` Map，加入 `Als.OverlayMode.RevolverPistol → AB_Als_Lin_RevolverPistol_C`。
  - 在所有 OverlayMode Switch 节点中增加 RevolverPistol 分支，与 PistolOneHanded 的 Attach/Clear 行为保持一致（可先复用相同 Mesh）。  
  - 在 IA_Weapon 或“装备左轮”输入链路中，插入/修改 `SetOverlayMode` 调用逻辑。
3. **验证阶段一**
  - 在游戏中切到左轮，确认：
    - `OverlayMode` Tag 变为 `Als.OverlayMode.RevolverPistol`。
    - AnimBP 确认 Overlay 子图实例为 `AB_Als_Lin_RevolverPistol`。
    - 挂载/卸载武器 Mesh 正常，无残留。
4. **阶段二：动画资产替换**
  - 准备好左轮专用 Overlay 动画后，更新 `AB_Als_Lin_RevolverPistol` 的序列引用。

#### 5.2 验收清单

- **Tag 级**：
  - GameplayTag 列表中存在 `Als.OverlayMode.RevolverPistol`（可选在 `DefaultGameplayTags.ini` 中显式声明）。
  - ALS Debug 显示中，OverlayMode 能显示到 RevolverPistol 文本。
- **蓝图级**：
  - `BP_Character_Lin` 的 Class Defaults 中，OverlayAnimationInstanceClasses 含正确映射至 `AB_Als_Lin_RevolverPistol_C`。
  - 装备左轮时，`SetOverlayMode` 被调用一次且切到 RevolverPistol；收起或换武器时回到 Default。
  - 所有依赖 OverlayMode 的 Attach/Clear 分支在 RevolverPistol 下逻辑正常。
- **动画级**：
  - 阶段一：RevolverPistol 表现与 PistolOneHanded 基本一致，无异常姿势或 IK 抖动。
  - 阶段二：替换为左轮专用动画后，与 PistolOneHanded 在站姿、瞄准、开火 pose 上有可见差异，且不影响 IK / 转场曲线。

---

### 6. 后续扩展方向（可选）

- 在 `WeaponBase` / `FWeaponInfo` 中加入 `OverlayModeTag` 字段，使新武器类型（如 Shotgun、SMG）也能统一走“武器配置 → OverlayMode”的流程。
- 在 `BP_Character_Lin` 中抽取独立的 Blueprint 函数（例如 `RefreshOverlayByCurrentWeapon`），集中管理“当前武器 → OverlayMode、OverlayObject”的所有映射，降低日后扩展其它武器 Overlay 的心智负担。

---

### 7. 实施与调试参考

- **操作步骤与验证**：见 [content/dev/player-overlay-mode-extension.md](../dev/player-overlay-mode-extension.md)（C++/蓝图步骤、Perforce checkout、C++ 验证、AngelScript 中调试显示 OverlayMode）。
- **易错点**：Perforce 只读导致 Agent 无法写入、FGameplayTag 转字符串用法见 [content/knowledge/05-gotchas.md](../knowledge/05-gotchas.md)。

