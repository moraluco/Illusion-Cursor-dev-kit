# UViewportInteractor

**Visibility:** public

## Inheritance

UObject → UViewportInteractor → UMouseCursorInteractor → UVREditorInteractor

## Description

Represents the interactor in the world

## INTERACTOR

### LastTransform

```
const FTransform LastTransform
```

Gets the last world transform of this interactor

### HitResultGizmoFilterMode

```
EHitResultGizmoFilterMode HitResultGizmoFilterMode
```

Gets current gizmo filter mode used for Interaction

### HoverLocation

```
const FVector HoverLocation
```

Gets the interactor laser hover location

### LastRoomSpaceTransform

```
const FTransform LastRoomSpaceTransform
```

Gets the last hand transform of the interactor, in the local tracking space

### DraggingMode

```
EViewportInteractionDraggingMode DraggingMode
```

Gets the current interactor data dragging mode

### RoomSpaceTransform

```
const FTransform RoomSpaceTransform
```

Gets the hand transform of the interactor, in the local tracking space

### Transform

```
const FTransform Transform
```

Gets the world transform of this interactor

---

## VARIABLES

### WorldInteraction

```
const UViewportWorldInteraction WorldInteraction
```

The owning world interaction

### OtherInteractor

```
const UViewportInteractor OtherInteractor
```

The paired interactor by the world interaction

---

## INTERACTOR

### GetTransformAndForwardVector

```
bool GetTransformAndForwardVector(FTransform& OutHandTransform, FVector& OutForwardVector)const
```

Creates a hand transform and forward vector for a laser pointer for a given hand

**Parameters**

OutHandTransform
FTransform&

The created hand transform

OutForwardVector
FVector&

The forward vector of the hand

**Returns**

True if we have motion controller data for this hand and could return a valid result

GetDraggingMode
EViewportInteractionDraggingMode GetDraggingMode() const

Gets the current interactor data dragging mode

GetHitResultGizmoFilterMode
EHitResultGizmoFilterMode GetHitResultGizmoFilterMode() const

Gets current gizmo filter mode used for Interaction

GetHoverLocation
FVector GetHoverLocation()

Gets the interactor laser hover location

GetLaserPointer
bool GetLaserPointer(
FVector& 	LaserPointerStart,
FVector& 	LaserPointerEnd,
bool 	bEvenIfBlocked	 = 	false,
float32 	LaserLengthOverride	 = 	0.000000
	)

Gets the start and end point of the laser pointer for the specified hand

**Parameters**

bEvenIfBlocked
bool

If true, returns a laser pointer even if the hand has UI in front of it (defaults to false)

LaserLengthOverride
float32

If zero the default laser length (VREdMode::GetLaserLength) is used

**Returns**

True if we have motion controller data for this hand and could return a valid result

GetLastRoomSpaceTransform
FTransform GetLastRoomSpaceTransform() const

Gets the last hand transform of the interactor, in the local tracking space

GetLastTransform
FTransform GetLastTransform() const

Gets the last world transform of this interactor

GetOtherInteractor
UViewportInteractor GetOtherInteractor() const

Gets the paired interactor assigned by the world interaction, can return null when there is no other interactor

GetRoomSpaceTransform
FTransform GetRoomSpaceTransform() const

Gets the hand transform of the interactor, in the local tracking space

GetTransform
FTransform GetTransform() const

Gets the world transform of this interactor

CanCarry
bool CanCarry() const

Gets if the interactor can carry an object

GetWorldInteraction
UViewportWorldInteraction GetWorldInteraction() const

Gets the world interaction

HandleInputAxis_BP
void HandleInputAxis_BP(
	FViewportActionKeyInput 	Action,
const 	FKey 	Key,
	float32 	Delta,
	float32 	DeltaTime,
	bool& 	bOutWasHandled
	)

To be overridden. Called by HandleInputAxis before delegates and default input implementation

HandleInputKey_BP
void HandleInputKey_BP(
	FViewportActionKeyInput 	Action,
const 	FKey 	Key,
	EInputEvent 	Event,
	bool& 	bOutWasHandled
	)

To be overridden. Called by HandleInputKey before delegates and default input implementation

IsHoveringOverGizmo
bool IsHoveringOverGizmo() const

If the interactor laser is currently hovering over a gizmo handle

SetCanCarry
void SetCanCarry(
bool 	bInCanCarry
	)

Sets if the interactor can carry an object

SetDraggingMode
void SetDraggingMode(
EViewportInteractionDraggingMode 	NewDraggingMode
	)

Sets the current dragging mode for this interactor

SetHitResultGizmoFilterMode
void SetHitResultGizmoFilterMode(
EHitResultGizmoFilterMode 	newFilter
	)

Sets the current gizmo filter mode used for Interaction

Shutdown
void Shutdown()

Whenever the ViewportWorldInteraction is shut down, the interacts will shut down as well

Tick
void Tick(
float32 	DeltaTime
	)

Update for this interactor called by the ViewportWorldInteraction

STATIC FUNCTIONS
StaticClass
static UClass UViewportInteractor::StaticClass()
