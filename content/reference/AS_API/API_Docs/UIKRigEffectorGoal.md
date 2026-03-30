# UIKRigEffectorGoal

**Visibility:** public

## Inheritance

UObject → UIKRigEffectorGoal → EXPOSURE

## Description

bExposeRotation bool bExposeRotation

Should rotation data be exposed in Blueprint

bExposePosition bool bExposePosition

Should position data be exposed in Blueprint

## Members

### SETTINGS

```
GOAL SETTINGS
```
### PreviewMode

```
EIKRigGoalPreviewMode PreviewMode
```

Effects how this Goal transform is previewed in the IK Rig editor.  "Additive" interprets the Goal transform as being relative to the input pose. Useful for previewing animations.  "Absolute" pins the Goal transform to the Gizmo in the viewport.

### CurrentTransform

```
FTransform CurrentTransform
```

The current transform of this Goal, in the Global Space of the character.

### RotationAlpha

```
float32 RotationAlpha
```

Range 0-1, default is 1. Blend between the input bone rotation (0.0) and the current goal rotation (1.0).

### PositionAlpha

```
float32 PositionAlpha
```

Range 0-1, default is 1. Blend between the input bone position (0.0) and the current goal position (1.0).

### SETTINGS

```
VIEWPORT GOAL SETTINGS
```
### ThicknessMultiplier

```
float32 ThicknessMultiplier
```

The thickness of the Goal gizmo drawing in the editor viewport.

### SizeMultiplier

```
float32 SizeMultiplier
```

The size of the Goal gizmo drawing in the editor viewport.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UIKRigEffectorGoal::StaticClass()
```
