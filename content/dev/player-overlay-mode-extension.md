# 玩家 OverlayMode 扩展：操作步骤与调试

本文记录在 ALS-Refactored 上**新增 OverlayMode**（以 RevolverPistol 为例）的**操作步骤**、**验证方式**以及 **AngelScript 中调试显示 OverlayMode** 的写法。设计依据见 [content/design/player-overlay-revolverpistol.md](../design/player-overlay-revolverpistol.md)；概念与数据流见 [knowledge/09-player-animation-system.md](../knowledge/09-player-animation-system.md)。

---

## 1. 新增 OverlayMode 的操作步骤（概要）

### 1.1 修改前：Perforce 受控文件需先 Check Out

项目若使用 Perforce 且文件默认只读，**Agent 或本地编辑前**需对将要修改的文件执行 checkout，否则会报 `Permission denied` / `Write permission denied`。

- **命令行**（在项目根或工作区根执行）：
  ```text
  p4 edit Engine/ManteumTower/Plugins/ALS-Refactored/Source/ALS/Public/Utility/AlsGameplayTags.h
  p4 edit Engine/ManteumTower/Plugins/ALS-Refactored/Source/ALS/Private/Utility/AlsGameplayTags.cpp
  p4 edit Engine/ManteumTower/Config/DefaultGameplayTags.ini
  p4 edit Engine/ManteumTower/Script/System/UnitInfo/PlayerStatComponent.as
  ```
- **P4V**：在对应文件上右键 → Check Out。

详见 [knowledge/05-gotchas.md](../knowledge/05-gotchas.md)。

### 1.2 C++：ALS 插件中增加 GameplayTag

- **头文件** `Plugins/ALS-Refactored/Source/ALS/Public/Utility/AlsGameplayTags.h`  
  - 在 `namespace AlsOverlayModeTags` 中、与现有 Overlay 同级（如 `PistolTwoHanded` 之后）增加：
  - `ALS_API UE_DECLARE_GAMEPLAY_TAG_EXTERN(RevolverPistol)`
- **源文件** `Plugins/ALS-Refactored/Source/ALS/Private/Utility/AlsGameplayTags.cpp`  
  - 在 `namespace AlsOverlayModeTags` 中、同一位置增加：
  - `UE_DEFINE_GAMEPLAY_TAG(RevolverPistol, FName{TEXTVIEW("Als.OverlayMode.RevolverPistol")})`

无需改 `AlsCharacter.h` / `AlsAnimationInstance.h`；OverlayMode 为通用 `FGameplayTag`，新 Tag 仅作新枚举值使用。

### 1.3 可选：在 DefaultGameplayTags.ini 中注册 Tag

- **文件**：`Engine/ManteumTower/Config/DefaultGameplayTags.ini`
- 在 `[/Script/GameplayTags.GameplayTagsSettings]` 段内、现有 `+GameplayTagList=` 后追加：
  ```ini
  +GameplayTagList=(Tag="Als.OverlayMode.RevolverPistol",DevComment="")
  ```
- 作用：在编辑器 Gameplay Tag 列表中可见，便于在蓝图中选择。

### 1.4 蓝图：BP_Character_Lin 三处扩展

在编辑器中打开 **BP_Character_Lin**，对照现有 `PistolOneHanded` / `PistolTwoHanded`：

1. **OverlayAnimationInstanceClasses（Map）**  
   - Class Defaults → OverlayAnimationInstanceClasses：新增 Key `Als.OverlayMode.RevolverPistol`，Value `AB_Als_Lin_RevolverPistol_C`。
2. **OnOverlayModeChanged / OnRefreshOverlayObject 中的 Switch Gameplay Tag**  
   - 为所有按 OverlayMode 分发的 Switch 增加引脚 `Als.OverlayMode.RevolverPistol`；该分支接 `AttachOverlayObject`（可先复用 Pistol Mesh），并确保切走时走 `ClearOverlayObject`。
3. **装备/切换武器时的 SetOverlayMode**  
   - 在装备左轮时调用 `SetOverlayMode(Als.OverlayMode.RevolverPistol)`；收起或切换为非左轮时恢复 `SetOverlayMode(Default)` 或对应 Overlay。

### 1.5 动画蓝图：AB_Als_Lin_RevolverPistol

- **阶段一**：不改 AnimBP 资产引用，复用现有 PistolOneHanded 动画，先跑通 Tag + Map + Switch + SetOverlayMode 流程。
- **阶段二**：在 Content 中制作左轮专用 Overlay 动画序列，并在 `AB_Als_Lin_RevolverPistol` 中将序列引用从 PistolOneHanded 改为新资产。

---

## 2. 验证 C++ 部分

- **编译**：修改 ALS 后重新编译工程/插件，无报错。
- **蓝图中 Tag 可用**：在 SetOverlayMode、Switch on Gameplay Tag 等节点中，能选择到 `Als.OverlayMode.RevolverPistol`。
- **可选**：在 Gameplay Tags 设置或列表中确认该 Tag 存在（若已写 INI）。

---

## 3. AngelScript 中调试显示 OverlayMode

在需要**在屏幕上看到当前 OverlayMode** 时，可在玩家角色的组件里读取 `AAlsCharacter::OverlayMode` 并用 `Print` 输出。

### 3.1 推荐位置：UPlayerStatComponent

玩家角色（如 Lin）已挂载 `UPlayerStatComponent`，且其 `Tick` 中已有 `CompOwner = Cast<AAlsCharacter>(this.Owner)`，在此处加一行 Debug 即可。

### 3.2 代码示例

在 `PlayerStatComponent.as` 的 `Tick` 中，在取得 `CompOwner` 之后增加：

```angelscript
// Debug: show current OverlayMode on screen
Print(f"OverlayMode: {CompOwner.OverlayMode.ToString()}", 0.5f, FLinearColor::Green);
```

- **含义**：每帧在屏幕上显示当前角色的 OverlayMode 字符串（如 `Als.OverlayMode.Default`、`Als.OverlayMode.RevolverPistol`）。
- **参数**：`Print(文本, 持续时间, 颜色)`；0.5f 约半秒刷新，便于观察又不过于刷屏；调试结束后可删除或注释。

### 3.3 若 ToString() 不可用

若当前 AngelScript 绑定中 `FGameplayTag` 没有 `ToString()`，可改为：

```angelscript
Print(f"OverlayMode: {CompOwner.OverlayMode.GetTagName().ToString()}", 0.5f, FLinearColor::Green);
```

---

## 4. 相关文档

| 文档 | 用途 |
|------|------|
| [content/design/player-overlay-revolverpistol.md](../design/player-overlay-revolverpistol.md) | RevolverPistol 设计目标、边界、与 3C/AS 约定 |
| [knowledge/09-player-animation-system.md](../knowledge/09-player-animation-system.md) | 玩家动画系统、Overlay 子图与 OverlayMode 数据流 |
| [knowledge/05-gotchas.md](../knowledge/05-gotchas.md) | Perforce 只读、FGameplayTag 转字符串等易错点 |
