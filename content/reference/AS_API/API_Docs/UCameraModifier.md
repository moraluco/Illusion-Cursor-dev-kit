# UCameraModifier

**Visibility:** public

## Inheritance

UObject → UCameraModifier → UCameraAnimationCameraModifier → UCameraModifier_CameraShake

## Description

A CameraModifier is a base class for objects that may adjust the final camera properties after being computed by the APlayerCameraManager (@see ModifyCamera). A CameraModifier can be stateful, and is associated uniquely with a specific APlayerCameraManager.

## CAMERAMODIFIER

### CameraOwner

```
APlayerCameraManager CameraOwner
```

Camera this object is associated with.

### AlphaInTime

```
float32 AlphaInTime
```

When blending in, alpha proceeds from 0 to 1 over this time

### AlphaOutTime

```
float32 AlphaOutTime
```

When blending out, alpha proceeds from 1 to 0 over this time

### Alpha

```
float32 Alpha
```

Current blend alpha.

### ViewTarget

```
const AActor ViewTarget
```
### bExclusive

```
bool bExclusive
```

If true, no other modifiers of same priority allowed.

### Priority

```
uint8 Priority
```

Priority value that determines the order in which modifiers are applied. 0 = highest priority, 255 = lowest.

---

## CAMERAMODIFIER

### IsDisabled

```
bool IsDisabled()const
```

**Returns**

Returns true if modifier is disabled, false otherwise.

DisableModifier
void DisableModifier(
bool 	bImmediate	 = 	false
	)

Disables this modifier.

**Parameters**

bImmediate
bool

true to disable with no blend out, false (default) to allow blend out

EnableModifier
void EnableModifier()

Enables this modifier.

GetViewTarget
AActor GetViewTarget() const

**Returns**

Returns the actor the camera is currently viewing.

---

## FUNCTIONS

BlueprintModifyCamera

### void BlueprintModifyCamera

```
void BlueprintModifyCamera(float32 DeltaTime, FVector ViewLocation, FRotator ViewRotation, float32 FOV, FVector& NewViewLocation, FRotator& NewViewRotation, float32& NewFOV)
```

Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's transform.  Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint.

**Parameters**

DeltaTime
float32

Change in time since last update

ViewLocation
FVector

The current camera location.

ViewRotation
FRotator

The current camera rotation.

---

## FOV

float32

### The current camera fov.

```
The current camera fov.
```

NewViewLocation

### FVector&

```
FVector&
```

(out) The modified camera location.

### NewViewRotation

```
FRotator&
```

(out) The modified camera rotation.

### NewFOV

```
float32&
```

(out) The modified camera FOV.

### BlueprintModifyPostProcess

```
void BlueprintModifyPostProcess(float32 DeltaTime, float32& PostProcessBlendWeight, FPostProcessSettings& PostProcessSettings)
```

Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's postprocess effects.  Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint.

**Parameters**

DeltaTime
float32

Change in time since last update

PostProcessBlendWeight
float32&

(out) Blend weight applied to the entire postprocess structure.

PostProcessSettings
FPostProcessSettings&

(out) Post process structure defining what settings and values to override.

SetbDebug
void SetbDebug(
bool 	Value
	)
GetbExclusive
bool GetbExclusive() const
SetbExclusive
void SetbExclusive(
bool 	Value
	)
STATIC FUNCTIONS
StaticClass
static UClass UCameraModifier::StaticClass()
