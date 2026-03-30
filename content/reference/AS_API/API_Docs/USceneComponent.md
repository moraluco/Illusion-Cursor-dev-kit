# USceneComponent

**Visibility:** public

## Inheritance

UActorComponent → USceneComponent → UARComponent → UARLifeCycleComponent → UAudioComponent → UCameraComponent

## Description

and 30 other children

A SceneComponent has a transform and supports attachment, but has no rendering or collision capabilities.  Useful as a 'dummy' component in the hierarchy to offset others.  @see [Scene Components](https://​docs​.unrealengine​.com​/latest​/INT​/Programming​/UnrealArchitecture​/Actors​/Components​/index​.html​#scenecomponents)

## COMPONENTS

NumChildrenComponents

### NumChildrenComponents

```
const int NumChildrenComponents
```

Gets the number of attached children components

---

## LOD

### DetailMode

```
EDetailMode DetailMode
```

If detail mode is >= system detail mode, primitive won't be rendered.

---

## MOBILITY

### Mobility

```
EComponentMobility Mobility
```

How often this component is allowed to move, used to make various optimizations. Only safe to set in constructor.

---

## PHYSICS

### bShouldUpdatePhysicsVolume

```
bool bShouldUpdatePhysicsVolume
```

Whether or not the cached PhysicsVolume this component overlaps should be updated when the component is moved.  @see GetPhysicsVolume()

---

## PHYSICSVOLUME

### PhysicsVolumeChangedDelegate

```
FPhysicsVolumeChanged PhysicsVolumeChangedDelegate
```

Delegate that will be called when PhysicsVolume has been changed

---

## RENDERING

### bHiddenInGame

```
bool bHiddenInGame
```

Whether to hide the primitive in game, if the primitive is Visible.

### bUseAttachParentBound

```
bool bUseAttachParentBound
```

If true, this component uses its parents bounds when attached.  This can be a significant optimization with many components attached together.

### bVisible

```
bool bVisible
```

Whether to completely draw the primitive; if false, the primitive is not drawn, does not cast a shadow.

---

## TRANSFORM

### RelativeRotation

```
FRotator RelativeRotation
```

Rotation of the component relative to its parent

### bAbsoluteLocation

```
bool bAbsoluteLocation
```

If RelativeLocation should be considered relative to the world, rather than the parent

### bAbsoluteScale

```
bool bAbsoluteScale
```

If RelativeScale3D should be considered relative to the world, rather than the parent

### bAbsoluteRotation

```
bool bAbsoluteRotation
```

If RelativeRotation should be considered relative to the world, rather than the parent

### RelativeLocation

```
FVector RelativeLocation
```

Location of the component relative to its parent

### RelativeScale3D

```
FVector RelativeScale3D
```

Non-uniform scaling of the component relative to its parent.  Note that scaling is always applied in local space (no shearing etc)

---

## TRANSFORMATION

### ForwardVector

```
const FVector ForwardVector
```

Get the forward (X) unit direction vector from this component, in world space.

### AllSocketNames

```
const TArray<FName> AllSocketNames
```

Gets the names of all the sockets on the component.

### RightVector

```
const FVector RightVector
```

Get the right (Y) unit direction vector from this component, in world space.

### RelativeTransform

```
FTransform RelativeTransform
```

Returns the transform of the component relative to its parent

### UpVector

```
const FVector UpVector
```

Get the up (Z) unit direction vector from this component, in world space.

---

## VARIABLES

### ComponentVelocity

```
const FVector ComponentVelocity
```

Velocity of the component.  @see GetComponentVelocity()

### WorldRotation

```
FRotator WorldRotation
```
### WorldScale

```
const FVector WorldScale
```
### WorldTransform

```
FTransform WorldTransform
```
### ShouldUpdatePhysicsVolume

```
bool ShouldUpdatePhysicsVolume
```

Gets whether or not the cached PhysicsVolume this component overlaps should be updated when the component is moved.

### PhysicsVolume

```
const APhysicsVolume PhysicsVolume
```

Physics Volume in which this SceneComponent is located

### WorldLocation

```
FVector WorldLocation
```
### AttachSocketName

```
const FName AttachSocketName
```

Optional socket name on AttachParent that we are attached to.

### AttachParent

```
const USceneComponent AttachParent
```

What we are currently attached to. If valid, RelativeLocation etc. are used relative to this object

### Bounds

```
const FBoxSphereBounds Bounds
```
### ShapeCenter

```
const FVector ShapeCenter
```
### ComponentQuat

```
const FQuat ComponentQuat COMPONENTS GetChildrenComponents void GetChildrenComponents(bool bIncludeAllDescendants, TArray<USceneComponent>& Children)const
```

Gets all components that are attached to this component, possibly recursively

**Parameters**

bIncludeAllDescendants
bool

Whether to include all descendants in the list of children (i.e. grandchildren, great grandchildren, etc.)

Children
TArray<USceneComponent>&

The list of attached child components

GetParentComponents
void GetParentComponents(
TArray<USceneComponent>& 	Parents
	) const

Gets all attachment parent components up to and including the root component

GetNumChildrenComponents
int GetNumChildrenComponents() const

Gets the number of attached children components

GetChildComponent
USceneComponent GetChildComponent(
int 	ChildIndex
	) const

Gets the attached child component at the specified location

---

## DEVELOPMENT

### SetHiddenInGame

```
void SetHiddenInGame(bool NewHidden, bool bPropagateToChildren = false)
```

Changes the value of bHiddenInGame, if false this will disable Visibility during gameplay

---

## PHYSICS

### IsAnySimulatingPhysics

```
bool IsAnySimulatingPhysics()const
```

Returns whether the specified body is currently using physics simulation

### IsSimulatingPhysics

```
bool IsSimulatingPhysics(FName BoneName = NAME_None)const
```

Returns whether the specified body is currently using physics simulation

---

## PHYSICSVOLUME

### GetPhysicsVolume

```
APhysicsVolume GetPhysicsVolume()const
```

Get the PhysicsVolume overlapping this component.

---

## RENDERING

### IsVisible

```
bool IsVisible()const
```

Returns true if this component is visible in the current context

### SetVisibility

```
void SetVisibility(bool bNewVisibility, bool bPropagateToChildren = false)
```

Set visibility of the component, if during game use this to turn on/off

### ToggleVisibility

```
void ToggleVisibility(bool bPropagateToChildren = false)
```

Toggle visibility of the component

---

## TRANSFORMATION

### AddLocalOffset

```
void AddLocalOffset(FVector DeltaLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)
```

Adds a delta to the location of the component in its local reference frame

**Parameters**

DeltaLocation
FVector

Change in location of the component in its local reference frame.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

AddRelativeLocation
void AddRelativeLocation(
FVector 	DeltaLocation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the translation of the component relative to its parent

**Parameters**

DeltaLocation
FVector

Change in location of the component relative to its parent

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

AddRelativeRotation
void AddRelativeRotation(
FRotator 	DeltaRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta the rotation of the component relative to its parent

**Parameters**

DeltaRotation
FRotator

Change in rotation of the component relative to is parent.

bSweep
bool

Whether we sweep to the destination (currently not supported for rotation).

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts).

GetSocketRotation
FRotator GetSocketRotation(
FName 	InSocketName
	) const

Get world-space socket or bone  FRotator rotation.

**Parameters**

InSocketName
FName

Name of the socket or the bone to get the transform

**Returns**

Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.

SetWorldScale3D
void SetWorldScale3D(
FVector 	NewScale
	)

Set the relative scale of the component to put it at the supplied scale in world space.

**Parameters**

NewScale
FVector

New scale in world space for this component.

GetSocketTransform
FTransform GetSocketTransform(

FName 	InSocketName,
ERelativeTransformSpace 	TransformSpace	 = 	ERelativeTransformSpace :: RTS_World

) const

Get world-space socket transform.

**Parameters**

InSocketName
FName

Name of the socket or the bone to get the transform

**Returns**

Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.

AddWorldTransformKeepScale
void AddWorldTransformKeepScale(
FTransform 	DeltaTransform,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the transform of the component in world space. Scale is unchanged.

**Parameters**

DeltaTransform
FTransform

Change in transform in world space for the component. Scale is ignored since we preserve the original scale.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

SetRelativeLocation
void SetRelativeLocation(
FVector 	NewLocation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Set the location of the component relative to its parent

**Parameters**

NewLocation
FVector

New location of the component relative to its parent.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

DetachFromParent
void DetachFromParent(
bool 	bMaintainWorldPosition	 = 	false,
bool 	bCallModify	 = 	true
	)
AttachTo
bool AttachTo(
USceneComponent 	InParent,
FName 	InSocketName	 = 	NAME_None,
EAttachLocation 	AttachType	 = 	EAttachLocation :: KeepRelativeOffset,
bool 	bWeldSimulatedBodies	 = 	true
	)
SetRelativeLocationAndRotation
void SetRelativeLocationAndRotation(
FVector 	NewLocation,
FRotator 	NewRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Set the location and rotation of the component relative to its parent

**Parameters**

NewLocation
FVector

New location of the component relative to its parent.

NewRotation
FRotator

New rotation of the component relative to its parent.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

SetWorldRotation
void SetWorldRotation(
FRotator 	NewRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Put this component at the specified rotation in world space. Updates relative rotation to achieve the final world rotation.  *

**Parameters**

NewRotation
FRotator

New rotation in world space for the component. *

bSweep
bool

Whether we sweep to the destination (currently not supported for rotation). *

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true. *

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). *  If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). *  If false, physics velocity is updated based on the change in position (affecting ragdoll parts). *  If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

GetWorldLocation
FVector GetWorldLocation() const

Return location of the component, in world space

GetAttachParent
USceneComponent GetAttachParent() const

Get the SceneComponent we are attached to.

AttachToComponent
bool AttachToComponent(
USceneComponent 	Parent,
FName 	SocketName,
EAttachmentRule 	LocationRule,
EAttachmentRule 	RotationRule,
EAttachmentRule 	ScaleRule,
bool 	bWeldSimulatedBodies
	)

Attach this component to another scene component, optionally at a named socket. It is valid to call this on components whether or not they have been Registered.

**Parameters**

Parent
USceneComponent

Parent to attach to.

SocketName
FName

Optional socket to attach to on the parent.

LocationRule
EAttachmentRule

How to handle translation when attaching.

RotationRule
EAttachmentRule

How to handle rotation when attaching.

ScaleRule
EAttachmentRule

How to handle scale when attaching.

bWeldSimulatedBodies
bool

Whether to weld together simulated physics bodies.

**Returns**

True if attachment is successful (or already attached to requested parent/socket), false if attachment is rejected and there is no change in AttachParent.

GetWorldRotation
FRotator GetWorldRotation() const

Returns rotation of the component, in world space.

SetRelativeRotation
void SetRelativeRotation(
FRotator 	NewRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Set the rotation of the component relative to its parent

**Parameters**

NewRotation
FRotator

New rotation of the component relative to its parent

bSweep
bool

Whether we sweep to the destination (currently not supported for rotation).

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts).

SetWorldLocationAndRotation
void SetWorldLocationAndRotation(
FVector 	NewLocation,
FRotator 	NewRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Set the relative location and rotation of the component to put it at the supplied pose in world space.

**Parameters**

NewLocation
FVector

New location in world space for the component.

NewRotation
FRotator

New rotation in world space for the component.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

SetWorldTransform
void SetWorldTransform(
FTransform 	NewTransform,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Set the transform of the component in world space.

**Parameters**

NewTransform
FTransform

New transform in world space for the component.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

SetMobility
void SetMobility(
EComponentMobility 	NewMobility
	)

Set how often this component is allowed to move during runtime. Causes a component re-register if the component is already registered

DoesSocketExist
bool DoesSocketExist(
FName 	InSocketName
	) const

Return true if socket with the given name exists

**Parameters**

InSocketName
FName

Name of the socket or the bone to get the transform

AddLocalTransform
void AddLocalTransform(
FTransform 	DeltaTransform,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the transform of the component in its local reference frame. Scale is unchanged.

**Parameters**

DeltaTransform
FTransform

Change in transform of the component in its local reference frame. Scale is unchanged.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

AddWorldOffset
void AddWorldOffset(
FVector 	DeltaLocation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the location of the component in world space.

**Parameters**

DeltaLocation
FVector

Change in location in world space for the component.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

AddWorldTransform
void AddWorldTransform(
FTransform 	DeltaTransform,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the transform of the component in world space. Ignores scale and sets it to (1,1,1).

**Parameters**

DeltaTransform
FTransform

Change in transform in world space for the component. Scale is ignored.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

DetachFromComponent
void DetachFromComponent(
EDetachmentRule 	LocationRule	 = 	EDetachmentRule :: KeepRelative,
EDetachmentRule 	RotationRule	 = 	EDetachmentRule :: KeepRelative,
EDetachmentRule 	ScaleRule	 = 	EDetachmentRule :: KeepRelative,
bool 	bCallModify	 = 	true
	)

Detach this component from whatever it is attached to. Automatically unwelds components that are welded together (See WeldTo)

**Parameters**

LocationRule
EDetachmentRule

How to handle translations when detaching.

RotationRule
EDetachmentRule

How to handle rotation when detaching.

ScaleRule
EDetachmentRule

How to handle scales when detaching.

bCallModify
bool

If true, call Modify() on the component and the current attach parent component

GetAllSocketNames
TArray<FName> GetAllSocketNames() const

Gets the names of all the sockets on the component.

**Returns**

Get the names of all the sockets on the component.

GetWorldScale
FVector GetWorldScale() const

Returns scale of the component, in world space.

GetAttachSocketName
FName GetAttachSocketName() const

Get the socket we are attached to.

SetRelativeTransform
void SetRelativeTransform(
FTransform 	NewTransform,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Set the transform of the component relative to its parent

**Parameters**

NewTransform
FTransform

New transform of the component relative to its parent.

bSweep
bool

Whether we sweep to the destination (currently not supported for rotation).

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts).

SetWorldLocation
void SetWorldLocation(
FVector 	NewLocation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Put this component at the specified location in world space. Updates relative location to achieve the final world location.

**Parameters**

NewLocation
FVector

New location in world space for the component.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

GetComponentVelocity
FVector GetComponentVelocity() const

Get velocity of the component: either ComponentVelocity, or the velocity of the physics body if simulating physics.

**Returns**

Velocity of the component

GetForwardVector
FVector GetForwardVector() const

Get the forward (X) unit direction vector from this component, in world space.

ResetRelativeTransform
void ResetRelativeTransform()

Reset the transform of the component relative to its parent. Sets relative location to zero, relative rotation to no rotation, and Scale to 1.

SetAbsolute
void SetAbsolute(
bool 	bNewAbsoluteLocation	 = 	false,
bool 	bNewAbsoluteRotation	 = 	false,
bool 	bNewAbsoluteScale	 = 	false
	)

Set which parts of the relative transform should be relative to parent, and which should be relative to world

SetRelativeScale3D
void SetRelativeScale3D(
FVector 	NewScale3D
	)

Set the non-uniform scale of the component relative to its parent

GetRelativeTransform
FTransform GetRelativeTransform() const

Returns the transform of the component relative to its parent

GetRightVector
FVector GetRightVector() const

Get the right (Y) unit direction vector from this component, in world space.

AddLocalRotation
void AddLocalRotation(
FRotator 	DeltaRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the rotation of the component in its local reference frame

**Parameters**

DeltaRotation
FRotator

Change in rotation of the component in its local reference frame.

bSweep
bool

Whether we sweep to the destination (currently not supported for rotation).

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts).

GetSocketLocation
FVector GetSocketLocation(
FName 	InSocketName
	) const

Get world-space socket or bone location.

**Parameters**

InSocketName
FName

Name of the socket or the bone to get the transform

**Returns**

Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.

GetWorldTransform
FTransform GetWorldTransform() const

Get the current component-to-world transform for this component

AddWorldRotation
void AddWorldRotation(
FRotator 	DeltaRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the rotation of the component in world space.

**Parameters**

DeltaRotation
FRotator

Change in rotation in world space for the component.

bSweep
bool

Whether we sweep to the destination (currently not supported for rotation).

SweepHitResult
FHitResult&

Hit result from any impact if sweep is true.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.

GetUpVector
FVector GetUpVector() const

Get the up (Z) unit direction vector from this component, in world space.

---

## FUNCTIONS

### GetShouldUpdatePhysicsVolume

```
bool GetShouldUpdatePhysicsVolume()const
```

Gets whether or not the cached PhysicsVolume this component overlaps should be updated when the component is moved.

### GetShapeCenter

```
FVector GetShapeCenter()const
```

AddLocalRotation

### void AddLocalRotation

```
void AddLocalRotation(FRotator DeltaRotation)
```

GetBounds

### FBoxSphereBounds GetBounds

```
FBoxSphereBounds GetBounds()const AddWorldOffset
```

void AddWorldOffset(

### FVector 	DeltaLocation

```
FVector 	DeltaLocation 	)
```

AddLocalTransform

### void AddLocalTransform

```
void AddLocalTransform(FTransform DeltaTransform)
```

GetChildrenComponentsByClass

### void GetChildrenComponentsByClass

```
void GetChildrenComponentsByClass(UClass ComponentClass, bool bIncludeAllDescendants, ?& OutChildren)
```

GetRelativeLocation

### FVector GetRelativeLocation

```
FVector GetRelativeLocation()const GetComponentQuat
```

FQuat GetComponentQuat() const

### AddWorldRotation

```
void AddWorldRotation(FRotator DeltaRotation)
```

SetWorldRotation

### void SetWorldRotation

```
void SetWorldRotation(FQuat NewRotation)
```

GetSocketQuaternion

### FQuat GetSocketQuaternion

```
FQuat GetSocketQuaternion(FName SocketName)const
```

SetRelativeTransform

### void SetRelativeTransform

```
void SetRelativeTransform(FTransform NewTransform)
```

AddWorldRotation

### void AddWorldRotation

```
void AddWorldRotation(FQuat DeltaRotation)
```

AddRelativeRotation

### void AddRelativeRotation

```
void AddRelativeRotation(FRotator DeltaRotation)
```

AddLocalOffset

### void AddLocalOffset

```
void AddLocalOffset(FVector DeltaLocation)
```

AddWorldTransform

### void AddWorldTransform

```
void AddWorldTransform(FTransform DeltaTransform)
```

SetWorldLocationAndRotation

### void SetWorldLocationAndRotation

```
void SetWorldLocationAndRotation(FVector NewLocation, FRotator Rotation)
```

SetWorldLocation

### void SetWorldLocation

```
void SetWorldLocation(FVector NewLocation)
```

SetRelativeRotation

### void SetRelativeRotation

```
void SetRelativeRotation(FQuat NewRotation)
```

SetRelativeRotation

### void SetRelativeRotation

```
void SetRelativeRotation(FRotator NewRotation)
```

AttachToComponent

### void AttachToComponent

```
void AttachToComponent(USceneComponent Parent, FName SocketName = NAME_None, EAttachmentRule AttachmentRule = EAttachmentRule :: SnapToTarget)
```

SetbVisualizeComponent

### void SetbVisualizeComponent

```
void SetbVisualizeComponent(bool bVisualize)
```

SetWorldLocationAndRotation

### void SetWorldLocationAndRotation

```
void SetWorldLocationAndRotation(FVector NewLocation, FQuat Rotation)
```

SetRelativeLocation

### void SetRelativeLocation

```
void SetRelativeLocation(FVector NewLocation)
```

GetRelativeScale3D

### FVector GetRelativeScale3D

```
FVector GetRelativeScale3D()const IsAttachedTo
```

bool IsAttachedTo(

### USceneComponent 	Other

```
USceneComponent 	Other 	) const
```

AddRelativeLocation

### void AddRelativeLocation

```
void AddRelativeLocation(FVector DeltaLocation)
```

IsAttachedTo

### bool IsAttachedTo

```
bool IsAttachedTo(AActor Actor)const
```

GetRelativeRotation

### FRotator GetRelativeRotation

```
FRotator GetRelativeRotation()const SetWorldTransform
```

void SetWorldTransform(

### FTransform 	NewTransform

```
FTransform 	NewTransform 	)
```

SetWorldRotation

### void SetWorldRotation

```
void SetWorldRotation(FRotator NewRotation)
```

AddLocalRotation

### void AddLocalRotation

```
void AddLocalRotation(FQuat DeltaRotation)
```

SetShouldUpdatePhysicsVolume

### void SetShouldUpdatePhysicsVolume

```
void SetShouldUpdatePhysicsVolume(bool bInShouldUpdatePhysicsVolume)
```

Sets whether or not the cached PhysicsVolume this component overlaps should be updated when the component is moved.

### SetRelativeLocationAndRotation

```
void SetRelativeLocationAndRotation(FVector NewLocation, FQuat Rotation)
```

AddRelativeRotation

### void AddRelativeRotation

```
void AddRelativeRotation(FQuat DeltaRotation)
```

SetRelativeLocationAndRotation

### void SetRelativeLocationAndRotation

```
void SetRelativeLocationAndRotation(FVector NewLocation, FRotator Rotation)
```

GetbAbsoluteLocation

### bool GetbAbsoluteLocation

```
bool GetbAbsoluteLocation()const SetbAbsoluteLocation
```

void SetbAbsoluteLocation(

### bool 	Value

```
bool 	Value 	)
```

GetbAbsoluteRotation

### bool GetbAbsoluteRotation

```
bool GetbAbsoluteRotation()const SetbAbsoluteRotation
```

void SetbAbsoluteRotation(

### bool 	Value

```
bool 	Value 	)
```

GetbAbsoluteScale

### bool GetbAbsoluteScale

```
bool GetbAbsoluteScale()const SetbAbsoluteScale
```

void SetbAbsoluteScale(

### bool 	Value

```
bool 	Value 	)
```

GetbVisible

### bool GetbVisible

```
bool GetbVisible()const SetbVisible
```

void SetbVisible(

### bool 	Value

```
bool 	Value 	)
```

GetbShouldUpdatePhysicsVolume

### bool GetbShouldUpdatePhysicsVolume

```
bool GetbShouldUpdatePhysicsVolume()const SetbShouldUpdatePhysicsVolume
```

void SetbShouldUpdatePhysicsVolume(

### bool 	Value

```
bool 	Value 	)
```

GetbHiddenInGame

### bool GetbHiddenInGame

```
bool GetbHiddenInGame()const SetbHiddenInGame
```

void SetbHiddenInGame(

### bool 	Value

```
bool 	Value 	)
```

GetbUseAttachParentBound

### bool GetbUseAttachParentBound

```
bool GetbUseAttachParentBound()const SetbUseAttachParentBound
```

void SetbUseAttachParentBound(

### bool 	Value

```
bool 	Value 	)
```

GetMobility

### const EComponentMobility& GetMobility

```
const EComponentMobility& GetMobility()const STATIC FUNCTIONS
```

Get

### static USceneComponent USceneComponent::Get

```
static USceneComponent USceneComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USceneComponent USceneComponent::GetOrCreate

```
static USceneComponent USceneComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USceneComponent USceneComponent::Create

```
static USceneComponent USceneComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USceneComponent::StaticClass

```
static UClass USceneComponent::StaticClass()
```
