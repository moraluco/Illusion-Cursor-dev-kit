# UUserInterfaceSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UUserInterfaceSettings

## Description

User Interface settings that control Slate and UMG.

## Members

### SCALING

```
DPI SCALING
```
### CustomScalingRuleClass

```
FSoftClassPath CustomScalingRuleClass
```

Set DPI Scale Rule to Custom, and this class will be used instead of any of the built-in rules.

### bAllowHighDPIInGameMode

```
bool bAllowHighDPIInGameMode
```

If true, game window on desktop platforms will be created with high-DPI awareness enabled.  Recommended to be enabled only if the game's UI allows users to modify 3D resolution scaling.

### ApplicationScale

```
float32 ApplicationScale
```

An optional application scale to apply on top of the custom scaling rules.  So if you want to expose a property in your game title, you can modify this underlying value to scale the entire UI.

### UIScaleRule

```
EUIScalingRule UIScaleRule
```

The rule used when trying to decide what scale to apply.

### UIScaleCurve

```
FRuntimeFloatCurve UIScaleCurve
```

Controls how the UI is scaled at different resolutions based on the DPI Scale Rule

DPI SCALING|SCALE TO FIT RULE

### DesignScreenSize

```
FIntPoint DesignScreenSize
```

Used only with ScaleToFit scaling rule. Defines native resolution for which were source UI textures created. DPI scaling will be 1.0 at this screen resolution.

---

## FOCUS

### RenderFocusRule

```
ERenderFocusRule RenderFocusRule
```

Rule to determine if we should render the Focus Brush for widgets that have user focus.

### CURSORS

```
HARDWARE CURSORS
```
### HardwareCursors

```
TMap<EMouseCursor,FHardwareCursorReference> HardwareCursors
```
### CURSORS

```
SOFTWARE CURSORS
```
### SoftwareCursors

```
TMap<EMouseCursor,FSoftClassPath> SoftwareCursors
```

---

## WIDGETS

### bLoadWidgetsOnDedicatedServer

```
bool bLoadWidgetsOnDedicatedServer
```

If false, widget references will be stripped during cook for server builds and not loaded at runtime.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UUserInterfaceSettings::StaticClass()
```
