# UVRModeSettings

**Visibility:** public

## Inheritance

UVISettings → UVRModeSettings

## Description

Implements the settings for VR Mode.

## GENERAL

### InteractorHand

```
EInteractorHand InteractorHand
```

Which hand should have the primary interactor laser on it

### CONTROLLERS

```
MOTION CONTROLLERS
```
### InteractorClass

```
TSoftClassPtr<UVREditorInteractor> InteractorClass
```

The controller to use when UnrealEd is in VR mode. Use VREditorInteractor get default editor behavior, or select a custom controller for special behavior

### DoubleClickTime

```
float32 DoubleClickTime
```

The maximum time in seconds between two clicks for a double-click to register

### TriggerPressedThreshold_Vive

```
float32 TriggerPressedThreshold_Vive
```

The amount (between 0-1) you have to depress the Vive controller trigger to register a press

### TriggerPressedThreshold_Rift

```
float32 TriggerPressedThreshold_Rift
```

The amount (between 0-1) you have to depress the Oculus Touch controller trigger to register a press

### TeleporterClass

```
TSoftClassPtr<AVREditorTeleporter> TeleporterClass
```

The teleporter to use when UnrealEd is in VR mode. Use VREditorTeleporter to get default editor behavior, or select a custom teleporter

### CUSTOMIZATION

```
UI CUSTOMIZATION
```
### GizmoScale

```
float32 GizmoScale
```

The size of the transform gizmo

### UIBrightness

```
float32 UIBrightness
```

Adjusts the brightness of the UI panels

---

## FUNCTIONS

### SetbAutokeySequences

```
void SetbAutokeySequences(bool Value)
```

SetbShowWorldMovementGrid

### void SetbShowWorldMovementGrid

```
void SetbShowWorldMovementGrid(bool Value)
```

SetbShowWorldMovementPostProcess

### void SetbShowWorldMovementPostProcess

```
void SetbShowWorldMovementPostProcess(bool Value)
```

SetbShowWorldScaleProgressBar

### void SetbShowWorldScaleProgressBar

```
void SetbShowWorldScaleProgressBar(bool Value)
```

SetbEnableAutoVREditMode

### void SetbEnableAutoVREditMode

```
void SetbEnableAutoVREditMode(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVRModeSettings::StaticClass()
```
