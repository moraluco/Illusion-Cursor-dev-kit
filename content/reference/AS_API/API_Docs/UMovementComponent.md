# UMovementComponent

**Visibility:** public

## Inheritance

UActorComponent → UMovementComponent → UInterpToMovementComponent → UNavMovementComponent → UProjectileMovementComponent → URotatingMovementComponent

## Description

MovementComponent is an abstract component class that defines functionality for moving a PrimitiveComponent (our UpdatedComponent) each tick.  Base functionality includes: - Restricting movement to a plane or axis.  - Utility functions for special handling of collision results (SlideAlongSurface(), ComputeSlideVector(), TwoWallAdjust()).  - Utility functions for moving when there may be initial penetration (SafeMoveUpdatedComponent(), ResolvePenetration()).  - Automatically registering the component tick and finding a component to move on the owning Actor.  Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()).  During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.

## COMPONENTS \| MOVEMENT

### PhysicsVolume

```
const APhysicsVolume PhysicsVolume
```

Returns the PhysicsVolume this MovementComponent is using, or the world's default physics volume if none.

GravityZ

### GravityZ

```
const float32 GravityZ
```

Returns gravity that affects this component

MaxSpeed

### const float32 MaxSpeed

```
const float32 MaxSpeed
```

Returns maximum speed of component in current movement mode.

---

## MOVEMENTCOMPONENT

### UpdatedComponent

```
USceneComponent UpdatedComponent
```

The component we move and update.  If this is null at startup and bAutoRegisterUpdatedComponent is true, the owning Actor's root component will automatically be set as our UpdatedComponent at startup.  @see bAutoRegisterUpdatedComponent, SetUpdatedComponent(), UpdatedPrimitive

### bAutoUpdateTickRegistration

```
bool bAutoUpdateTickRegistration
```

If true, whenever the updated component is changed, this component will enable or disable its tick dependent on whether it has something to update.  This will NOT enable tick at startup if bAutoActivate is false, because presumably you have a good reason for not wanting it to start ticking initially.

### bTickBeforeOwner

```
bool bTickBeforeOwner
```

If true, after registration we will add a tick dependency to tick before our owner (if we can both tick).  This is important when our tick causes an update in the owner's position, so that when the owner ticks it uses the most recent position without lag.  Disabling this can improve performance if both objects tick but the order of ticks doesn't matter.

### bComponentShouldUpdatePhysicsVolume

```
bool bComponentShouldUpdatePhysicsVolume
```

If true, enables bShouldUpdatePhysicsVolume on the UpdatedComponent during initialization from SetUpdatedComponent(), otherwise disables such updates.  Only enabled if bAutoRegisterPhysicsVolumeUpdates is true.  WARNING: UpdatePhysicsVolume is potentially expensive if overlap events are also disabled because it requires a separate query against all physics volumes in the world.

### bAutoRegisterUpdatedComponent

```
bool bAutoRegisterUpdatedComponent
```

If true, registers the owner's Root component as the UpdatedComponent if there is not one currently assigned.

### bAutoRegisterPhysicsVolumeUpdates

```
bool bAutoRegisterPhysicsVolumeUpdates
```

If true, then applies the value of bComponentShouldUpdatePhysicsVolume to the UpdatedComponent. If false, will not change bShouldUpdatePhysicsVolume on the UpdatedComponent at all.  @see bComponentShouldUpdatePhysicsVolume

### bUpdateOnlyIfRendered

```
bool bUpdateOnlyIfRendered
```

If true, skips TickComponent() if UpdatedComponent was not recently rendered.

### UpdatedPrimitive

```
UPrimitiveComponent UpdatedPrimitive
```

UpdatedComponent, cast as a UPrimitiveComponent. May be invalid if UpdatedComponent was null or not a UPrimitiveComponent.

---

## PLANARMOVEMENT

### bSnapToPlaneAtStart

```
bool bSnapToPlaneAtStart
```

If true and plane constraints are enabled, then the updated component will be snapped to the plane when first attached.

### PlaneConstraintNormal

```
FVector PlaneConstraintNormal
```

The normal or axis of the plane that constrains movement, if bConstrainToPlane is enabled.  If for example you wanted to constrain movement to the X-Z plane (so that Y cannot change), the normal would be set to X=0 Y=1 Z=0.  This is recalculated whenever PlaneConstraintAxisSetting changes. It is normalized once the component is registered with the game world.  @see bConstrainToPlane, SetPlaneConstraintNormal(), SetPlaneConstraintFromVectors()

### bConstrainToPlane

```
bool bConstrainToPlane
```

If true, movement will be constrained to a plane.  @see PlaneConstraintNormal, PlaneConstraintOrigin, PlaneConstraintAxisSetting

### PlaneConstraintOrigin

```
FVector PlaneConstraintOrigin
```

The origin of the plane that constrains movement, if plane constraint is enabled.  This defines the behavior of snapping a position to the plane, such as by SnapUpdatedComponentToPlane().  @see bConstrainToPlane, SetPlaneConstraintOrigin().

### PlaneConstraintAxisSetting

```
EPlaneConstraintAxisSetting PlaneConstraintAxisSetting
```

Setting that controls behavior when movement is restricted to a 2D plane defined by a specific axis/normal, so that movement along the locked axis is not be possible.  @see SetPlaneConstraintAxisSetting

---

## VELOCITY

### Velocity

```
FVector Velocity
```

Current velocity of updated component.

---

## COMPONENTS \| MOVEMENT

### MoveUpdatedComponent

```
bool MoveUpdatedComponent(FVector Delta, FRotator NewRotation, FHitResult& OutHit, bool bSweep = true, bool bTeleport = false)
```

Moves our UpdatedComponent by the given Delta, and sets rotation to NewRotation.  Respects the plane constraint, if enabled.

**Returns**

True if some movement occurred, false if no movement occurred. Result of any impact will be stored in OutHit.

IsExceedingMaxSpeed
bool IsExceedingMaxSpeed(
float32 	MaxSpeed
	) const

Returns true if the current velocity is exceeding the given max speed (usually the result of GetMaxSpeed()), within a small error tolerance.  Note that under normal circumstances updates cause by acceleration will not cause this to be true, however external forces or changes in the max speed limit can cause the max speed to be violated.

StopMovementImmediately
void StopMovementImmediately()

Stops movement immediately (zeroes velocity, usually zeros acceleration for components with acceleration).

GetGravityZ
float32 GetGravityZ() const

Returns gravity that affects this component

GetMaxSpeed
float32 GetMaxSpeed() const

Returns maximum speed of component in current movement mode.

GetPhysicsVolume
APhysicsVolume GetPhysicsVolume() const

Returns the PhysicsVolume this MovementComponent is using, or the world's default physics volume if none.

SetUpdatedComponent
void SetUpdatedComponent(
USceneComponent 	NewUpdatedComponent
	)

Assign the component we move and update.

---

## COMPONENTS \| MOVEMENT \| PLANAR

### GetPlaneConstraintNormal

```
const FVector& GetPlaneConstraintNormal()const
```

Returns the normal of the plane that constrains movement, enforced if the plane constraint is enabled.

### GetPlaneConstraintOrigin

```
const FVector& GetPlaneConstraintOrigin()const
```

Get the plane constraint origin. This defines the behavior of snapping a position to the plane, such as by SnapUpdatedComponentToPlane().

**Returns**

The origin of the plane that constrains movement, if the plane constraint is enabled.

SetPlaneConstraintAxisSetting
void SetPlaneConstraintAxisSetting(
EPlaneConstraintAxisSetting 	NewAxisSetting
	)

Set the plane constraint axis setting.  Changing this setting will modify the current value of PlaneConstraintNormal.

**Parameters**

NewAxisSetting
EPlaneConstraintAxisSetting

New plane constraint axis setting.

ConstrainNormalToPlane
FVector ConstrainNormalToPlane(
FVector 	Normal
	) const

Constrain a normal vector (of unit length) to the plane constraint, if enabled.

GetPlaneConstraintAxisSetting
EPlaneConstraintAxisSetting GetPlaneConstraintAxisSetting() const

Get the plane constraint axis setting.

SetPlaneConstraintEnabled
void SetPlaneConstraintEnabled(
bool 	bEnabled
	)

Sets whether or not the plane constraint is enabled.

SetPlaneConstraintFromVectors
void SetPlaneConstraintFromVectors(
FVector 	Forward,
FVector 	Up
	)

Uses the Forward and Up vectors to compute the plane that constrains movement, enforced if the plane constraint is enabled.

SetPlaneConstraintNormal
void SetPlaneConstraintNormal(
FVector 	PlaneNormal
	)

Sets the normal of the plane that constrains movement, enforced if the plane constraint is enabled.  Changing the normal automatically sets PlaneConstraintAxisSetting to "Custom".

**Parameters**

PlaneNormal
FVector

The normal of the plane. If non-zero in length, it will be normalized.

SetPlaneConstraintOrigin
void SetPlaneConstraintOrigin(
FVector 	PlaneOrigin
	)

Sets the origin of the plane that constrains movement, enforced if the plane constraint is enabled.

ConstrainLocationToPlane
FVector ConstrainLocationToPlane(
FVector 	Location
	) const

Constrain a position vector to the plane constraint, if enabled.

SnapUpdatedComponentToPlane
void SnapUpdatedComponentToPlane()

Snap the updated component to the plane constraint, if enabled.

ConstrainDirectionToPlane
FVector ConstrainDirectionToPlane(
FVector 	Direction
	) const

Constrain a direction vector to the plane constraint, if enabled.  See: SetPlaneConstraint

---

## FUNCTIONS

### GetUpdatedComponent

```
USceneComponent GetUpdatedComponent()const
```

GetbUpdateOnlyIfRendered

### bool GetbUpdateOnlyIfRendered

```
bool GetbUpdateOnlyIfRendered()const SetbUpdateOnlyIfRendered
```

void SetbUpdateOnlyIfRendered(

### bool 	Value

```
bool 	Value 	)
```

GetbAutoUpdateTickRegistration

### bool GetbAutoUpdateTickRegistration

```
bool GetbAutoUpdateTickRegistration()const SetbAutoUpdateTickRegistration
```

void SetbAutoUpdateTickRegistration(

### bool 	Value

```
bool 	Value 	)
```

GetbTickBeforeOwner

### bool GetbTickBeforeOwner

```
bool GetbTickBeforeOwner()const SetbTickBeforeOwner
```

void SetbTickBeforeOwner(

### bool 	Value

```
bool 	Value 	)
```

GetbAutoRegisterUpdatedComponent

### bool GetbAutoRegisterUpdatedComponent

```
bool GetbAutoRegisterUpdatedComponent()const SetbAutoRegisterUpdatedComponent
```

void SetbAutoRegisterUpdatedComponent(

### bool 	Value

```
bool 	Value 	)
```

GetbConstrainToPlane

### bool GetbConstrainToPlane

```
bool GetbConstrainToPlane()const SetbConstrainToPlane
```

void SetbConstrainToPlane(

### bool 	Value

```
bool 	Value 	)
```

GetbSnapToPlaneAtStart

### bool GetbSnapToPlaneAtStart

```
bool GetbSnapToPlaneAtStart()const SetbSnapToPlaneAtStart
```

void SetbSnapToPlaneAtStart(

### bool 	Value

```
bool 	Value 	)
```

GetbAutoRegisterPhysicsVolumeUpdates

### bool GetbAutoRegisterPhysicsVolumeUpdates

```
bool GetbAutoRegisterPhysicsVolumeUpdates()const SetbAutoRegisterPhysicsVolumeUpdates
```

void SetbAutoRegisterPhysicsVolumeUpdates(

### bool 	Value

```
bool 	Value 	)
```

GetbComponentShouldUpdatePhysicsVolume

### bool GetbComponentShouldUpdatePhysicsVolume

```
bool GetbComponentShouldUpdatePhysicsVolume()const SetbComponentShouldUpdatePhysicsVolume
```

void SetbComponentShouldUpdatePhysicsVolume(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UMovementComponent UMovementComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UMovementComponent UMovementComponent::GetOrCreate

```
static UMovementComponent UMovementComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UMovementComponent UMovementComponent::Create

```
static UMovementComponent UMovementComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UMovementComponent::StaticClass

```
static UClass UMovementComponent::StaticClass()
```
