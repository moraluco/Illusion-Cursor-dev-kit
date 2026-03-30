# UViewportWorldInteraction

**Visibility:** public

## Inheritance

UEditorWorldExtension → UViewportWorldInteraction → VIEWPORTWORLDINTERACTION → WorldScaleFactor

## Description

const float32 WorldScaleFactor

Gets the world scale factor, which can be multiplied by a scale vector to convert to room space

RoomSpaceHeadTransform const FTransform RoomSpaceHeadTransform

Gets the transform of the viewport / user's HMD in room space

RoomTransform const FTransform RoomTransform

Gets the world space transform of the calibrated VR room origin.  When using a seated VR device, this will feel like the camera's world transform (before any HMD positional or rotation adjustments are applied.)

HeadTransform FTransform HeadTransform

Gets the transform of the viewport / user's HMD in world space

## VARIABLES

### TransformGizmoActor

```
const ABaseTransformGizmo TransformGizmoActor
```

Transform gizmo actor, for manipulating selected actor(s)

### Interactors

```
const TArray<UViewportInteractor> Interactors
```

All the interactors registered to modify the world

---

## VIEWPORTWORLDINTERACTION

### GetTransformGizmoActor

```
ABaseTransformGizmo GetTransformGizmoActor()
```

Gets the transform gizmo actor, or returns null if we currently don't have one

### AddInteractor

```
void AddInteractor(UViewportInteractor Interactor)
```

Adds interactor to the worldinteraction

### GetHeadTransform

```
FTransform GetHeadTransform()const
```

Gets the transform of the viewport / user's HMD in world space

### GetInteractors

```
const TArray<UViewportInteractor>& GetInteractors()const
```

Gets all the interactors

### GetRoomSpaceHeadTransform

```
FTransform GetRoomSpaceHeadTransform()const
```

Gets the transform of the viewport / user's HMD in room space

### GetRoomTransform

```
FTransform GetRoomTransform()const
```

Gets the world space transform of the calibrated VR room origin.  When using a seated VR device, this will feel like the camera's world transform (before any HMD positional or rotation adjustments are applied.)

### AddActorToExcludeFromHitTests

```
void AddActorToExcludeFromHitTests(AActor ActorToExcludeFromHitTests)
```

Adds an actor to the list of actors to never allow an interactor to hit in the scene.  No selection.  No hover.  There's no need to remove actors from this list.  They'll expire from it automatically when destroyed.

**Parameters**

ActorToExcludeFromHitTests
AActor

The actor that should be forever excluded from hit tests

GetWorldScaleFactor
float32 GetWorldScaleFactor() const

Gets the world scale factor, which can be multiplied by a scale vector to convert to room space

RemoveInteractor
void RemoveInteractor(
UViewportInteractor 	Interactor
	)

Removes interactor from the worldinteraction and removes the interactor from its paired interactor if any

SetHeadTransform
void SetHeadTransform(
FTransform 	NewHeadTransform
	)

Sets a new transform for the room so that the HMD is aligned to the new transform.  The Head is kept level to the ground and only rotated on the yaw

SetRoomTransformForNextFrame
void SetRoomTransformForNextFrame(
FTransform 	NewRoomTransform
	)
SetWorldToMetersScale
void SetWorldToMetersScale(
float32 	NewWorldToMetersScale,
bool 	bCompensateRoomWorldScale	 = 	false
	)

Sets GNewWorldToMetersScale

STATIC FUNCTIONS
StaticClass
static UClass UViewportWorldInteraction::StaticClass()
