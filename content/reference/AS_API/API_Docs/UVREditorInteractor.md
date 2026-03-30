# UVREditorInteractor

**Visibility:** public

## Inheritance

UViewportInteractor → UVREditorInteractor → UVRScoutingInteractor

## Description

VREditor default interactor

## UVREDITORINTERACTOR

### LaserStart

```
const FVector LaserStart
```

Getters and setters

### LaserEnd

```
const FVector LaserEnd
```
### ControllerHandSide

```
FName ControllerHandSide
```

Sets the EControllerHand for this motioncontroller

### ControllerSide

```
const EControllerHand ControllerSide
```

Get the side of the controller

### TrackpadPosition

```
const FVector2D TrackpadPosition
```

Get the current position of the trackpad or analog stick

### HMDDeviceType

```
const FName HMDDeviceType
```

SlideDelta const float32 SlideDelta

### Returns the slide delta for pushing and pulling objects. Needs to be implemented by derived classes

```
Returns the slide delta for pushing and pulling objects. Needs to be implemented by derived classes(e.g. touchpad for vive controller or scrollweel for mouse
```

LastTrackpadPosition

### LastTrackpadPosition

```
const FVector2D LastTrackpadPosition
```

Get the last position of the trackpad or analog stick

### TeleportActor

```
const AVREditorTeleporter TeleportActor
```

---

## VREDITORINTERACTOR

### SelectAndMoveTriggerValue

```
const float32 SelectAndMoveTriggerValue
```

Gets the trigger value

### HandMeshComponent

```
UStaticMeshComponent HandMeshComponent
```

Access to the current handmesh. Use ReplaceHandMeshComponent() to update the entire StaticMeshComponent.

### bIsUndoRedoSwipeEnabled

```
bool bIsUndoRedoSwipeEnabled
```

Whether swiping left/right on touchpad/joystick triggers undo/redo

---

## VARIABLES

### ControllerType

```
EControllerType ControllerType
```

For asymmetrical systems

### is

```
what type of controller this is
```
### MotionControllerComponent

```
const UMotionControllerComponent MotionControllerComponent
```

Motion controller component which handles late-frame transform updates of all parented sub-components

---

## UVREDITORINTERACTOR

### Init

```
void Init(UVREditorMode InVRMode)
```

Initialize default values

### GetControllerSide

```
EControllerHand GetControllerSide()const
```

Get the side of the controller

### GetTrackpadPosition

```
FVector2D GetTrackpadPosition()const
```

Get the current position of the trackpad or analog stick

### GetHMDDeviceType

```
FName GetHMDDeviceType()const
```

**Returns**

Returns the type of HMD we're dealing with

GetLaserEnd
const FVector& GetLaserEnd() const
GetLaserStart
const FVector& GetLaserStart() const

Getters and setters

GetLastTrackpadPosition
FVector2D GetLastTrackpadPosition() const

Get the last position of the trackpad or analog stick

GetMotionControllerComponent
UMotionControllerComponent GetMotionControllerComponent() const

Get the motioncontroller component of this interactor

SetControllerHandSide
void SetControllerHandSide(
const 	FName 	InControllerHandSide
	)

Sets the EControllerHand for this motioncontroller

GetTeleportActor
AVREditorTeleporter GetTeleportActor()
GetSlideDelta
float32 GetSlideDelta() const

Returns the slide delta for pushing and pulling objects. Needs to be implemented by derived classes (e.g. touchpad for vive controller or scrollweel for mouse

GetControllerHandSide
FName GetControllerHandSide() const

Sets the EControllerHand for this motioncontroller

SetForceLaserColor
void SetForceLaserColor(
FLinearColor 	InColor
	)

Next frame this will be used as color for the laser

SetForceShowLaser
void SetForceShowLaser(
bool 	bInForceShow
	)

Set if we want to force to show the laser

IsTouchingTrackpad
bool IsTouchingTrackpad() const

Check if the touchpad is currently touched

SetupComponent
void SetupComponent(
AActor 	OwningActor
	)

Sets up all components

---

## VREDITORINTERACTOR

### ReplaceHandMeshComponent

```
void ReplaceHandMeshComponent(UStaticMesh NewMesh)
```

Replace the default VR controller mesh with a custom one.

### GetControllerType

```
EControllerType GetControllerType()const
```

Returns what controller type this is for asymmetric control schemes

### SetControllerType

```
void SetControllerType(EControllerType InControllerType)
```

Set what controller type this is for asymmetric control schemes

### GetSelectAndMoveTriggerValue

```
float32 GetSelectAndMoveTriggerValue()const
```

Gets the trigger value

### IsHoveringOverUI

```
bool IsHoveringOverUI()const
```

Gets if this interactor is hovering over UI

### IsClickingOnUI

```
bool IsClickingOnUI()const
```

Gets if the interactor is clicking on any UI

### TryOverrideControllerType

```
bool TryOverrideControllerType(EControllerType InControllerType)
```

Temporary set what controller type this is for asymmetric control schemes.  You can't override the controller type when there's already an override.  Remove the temporary controller type with EControllerType::Unknown

**Returns**

true if the controller type was changed

STATIC FUNCTIONS
StaticClass
static UClass UVREditorInteractor::StaticClass()
