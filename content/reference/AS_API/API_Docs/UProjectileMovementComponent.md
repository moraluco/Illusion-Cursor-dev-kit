# UProjectileMovementComponent

**Visibility:** public

## Inheritance

UMovementComponent → UProjectileMovementComponent

## Description

ProjectileMovementComponent updates the position of another component during its tick.

Behavior such as bouncing after impacts and homing toward a target are supported.

Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()).  If the updated component is simulating physics, only the initial launch parameters (when initial velocity is non-zero) will affect the projectile, and the physics sim will take over from there.

### See also

- UMovementComponent

## HOMING

### HomingAccelerationMagnitude

```
float32 HomingAccelerationMagnitude
```

The magnitude of our acceleration towards the homing target. Overall velocity magnitude will still be limited by MaxSpeed.

### HomingTargetComponent

```
const USceneComponent HomingTargetComponent
```

The current target we are homing towards. Can only be set at runtime (when projectile is spawned or updating).  @see bIsHomingProjectile

### bIsHomingProjectile

```
bool bIsHomingProjectile
```

If true, we will accelerate toward our homing target. HomingTargetComponent must be set after the projectile is spawned.  @see HomingTargetComponent, HomingAccelerationMagnitude

---

## PROJECTILE

### ProjectileGravityScale

```
float32 ProjectileGravityScale
```

Custom gravity scale for this projectile. Set to 0 for no gravity.

### bRotationRemainsVertical

```
bool bRotationRemainsVertical
```

If true, this projectile will have its rotation updated each frame to maintain the rotations Yaw only. (bRotationFollowsVelocity is required to be true)

### bInitialVelocityInLocalSpace

```
bool bInitialVelocityInLocalSpace
```

If true, the initial Velocity is interpreted as being in local space upon startup.  @see SetVelocityInLocalSpace()

### InitialSpeed

```
float32 InitialSpeed
```

Initial speed of projectile. If greater than zero, this will override the initial Velocity value and instead treat Velocity as a direction.

### bRotationFollowsVelocity

```
bool bRotationFollowsVelocity
```

If true, this projectile will have its rotation updated each frame to match the direction of its velocity.

---

## PROJECTILEBOUNCES

### bBounceAngleAffectsFriction

```
bool bBounceAngleAffectsFriction
```

Controls the effects of friction on velocity parallel to the impact surface when bouncing.  If true, friction will be modified based on the angle of impact, making friction higher for perpendicular impacts and lower for glancing impacts.  If false, a bounce will retain a proportion of tangential velocity equal to (1.0 - Friction), acting as a "horizontal restitution".

### MinFrictionFraction

```
float32 MinFrictionFraction
```

When bounce angle affects friction, apply at least this fraction of normal friction.  Helps consistently slow objects sliding or rolling along surfaces or in valleys when the usual friction amount would take a very long time to settle.

### Bounciness

```
float32 Bounciness
```

Percentage of velocity maintained after the bounce in the direction of the normal of impact (coefficient of restitution).  1.0 = no velocity lost, 0.0 = no bounce. Ignored if bShouldBounce is false.

### Friction

```
float32 Friction
```

Coefficient of friction, affecting the resistance to sliding along a surface.  Normal range is [0,1] : 0.0 = no friction, 1.0+ = very high friction.  Also affects the percentage of velocity maintained after the bounce in the direction tangent to the normal of impact.  Ignored if bShouldBounce is false.  @see bBounceAngleAffectsFriction

### BounceVelocityStopSimulatingThreshold

```
float32 BounceVelocityStopSimulatingThreshold
```

If velocity is below this threshold after a bounce, stops simulating and triggers the OnProjectileStop event.  Ignored if bShouldBounce is false, in which case the projectile stops simulating on the first impact.  @see StopSimulating(), OnProjectileStop

### bIsSliding

```
const bool bIsSliding
```

If true, projectile is sliding / rolling along a surface.

### PreviousHitTime

```
float32 PreviousHitTime
```

Saved HitResult Time (0 to 1) from previous simulation step. Equal to 1.0 when there was no impact.

### bShouldBounce

```
bool bShouldBounce
```

If true, simple bounces will be simulated. Set this to false to stop simulating on contact.

### PreviousHitNormal

```
FVector PreviousHitNormal
```

Saved HitResult Normal from previous simulation step that resulted in an impact. If PreviousHitTime is 1.0, then the hit was not in the last step.

---

## PROJECTILEINTERPOLATION

### InterpLocationSnapToTargetDistance

```
float32 InterpLocationSnapToTargetDistance
```

Max distance behind UpdatedComponent beyond which the interpolated component is snapped to the target location instead.  For instance if the target teleports this far beyond the interpolated component, the interpolation is snapped to match the target.

### InterpLocationTime

```
float32 InterpLocationTime
```

"Time" over which most of the location interpolation occurs, when the UpdatedComponent (target) moves ahead of the interpolated component.  Since the implementation uses exponential lagged smoothing, this is a rough time value and experimentation should inform a final result.  A value of zero is effectively instantaneous interpolation.

### InterpLocationMaxLagDistance

```
float32 InterpLocationMaxLagDistance
```

Max distance behind UpdatedComponent which the interpolated component is allowed to lag.

### InterpRotationTime

```
float32 InterpRotationTime
```

"Time" over which most of the rotation interpolation occurs, when the UpdatedComponent (target) moves ahead of the interpolated component.  Since the implementation uses exponential lagged smoothing, this is a rough time value and experimentation should inform a final result.  A value of zero is effectively instantaneous interpolation.

### bInterpRotation

```
bool bInterpRotation
```

If true and there is an interpolated component set, rotation interpolation is enabled which allows the interpolated object to smooth uneven updates of the UpdatedComponent's rotation (usually to smooth network updates).  Rotation interpolation is only applied if bInterpMovement is also enabled.  @see SetInterpolatedComponent(), MoveInterpolationTarget()

### bInterpMovement

```
bool bInterpMovement
```

If true and there is an interpolated component set, location (and optionally rotation) interpolation is enabled which allows the interpolated object to smooth uneven updates of the UpdatedComponent's location (usually to smooth network updates). This requires using SetInterpolatedComponent() to indicate the visual component that lags behind the collision, and using MoveInterpolationTarget() when the new target location/rotation is received (usually on a net update).  @see SetInterpolatedComponent(), MoveInterpolationTarget()

---

## PROJECTILESIMULATION

### bSimulationEnabled

```
bool bSimulationEnabled
```

If true, does normal simulation ticking and update. If false, simulation is halted, but component will still tick (allowing interpolation to run).

### bSweepCollision

```
bool bSweepCollision
```

If true, movement uses swept collision checks.  If false, collision effectively teleports to the destination. Note that when this is disabled, movement will never generate blocking collision hits (though overlaps will be updated).

### BounceAdditionalIterations

```
int BounceAdditionalIterations
```

On the first few bounces (up to this amount), allow extra iterations over MaxSimulationIterations if necessary.

### bForceSubStepping

```
bool bForceSubStepping
```

If true, forces sub-stepping to break up movement into discrete smaller steps to improve accuracy of the trajectory.  Objects that move in a straight line typically do not need to set this, as movement always uses continuous collision detection (sweeps) so collision is not missed.  Sub-stepping is automatically enabled when under the effects of gravity or when homing towards a target.  @see MaxSimulationTimeStep, MaxSimulationIterations

### MaxSimulationIterations

```
int MaxSimulationIterations
```

Max number of iterations used for each discrete simulation step.  Increasing this value can address precision issues with fast-moving objects or complex collision scenarios, at the cost of performance.

### WARNING: if

```
WARNING: if(MaxSimulationTimeStep * MaxSimulationIterations)is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation. @see MaxSimulationTimeStep, bForceSubStepping
```

MaxSimulationTimeStep

### float32 MaxSimulationTimeStep

```
float32 MaxSimulationTimeStep
```

Max time delta for each discrete simulation step.  Lowering this value can address precision issues with fast-moving objects or complex collision scenarios, at the cost of performance.

### WARNING: if

```
WARNING: if(MaxSimulationTimeStep * MaxSimulationIterations)is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation. @see MaxSimulationIterations, bForceSubStepping
```

---

## VARIABLES

### OnProjectileStop

```
FOnProjectileStopDelegate__ProjectileMovementComponent OnProjectileStop
```

Called when projectile has come to a stop (velocity is below simulation threshold, bounces are disabled, or it is forcibly stopped).

### OnProjectileBounce

```
FOnProjectileBounceDelegate__ProjectileMovementComponent OnProjectileBounce
```

Called when projectile impacts something and bounces are enabled.

---

## GAME \| COMPONENTS \| PROJECTILEMOVEMENT

### LimitVelocity

```
FVector LimitVelocity(FVector NewVelocity)const
```

Don't allow velocity magnitude to exceed MaxSpeed, if MaxSpeed is non-zero.

### StopSimulating

```
void StopSimulating(FHitResult HitResult)
```

Clears the reference to UpdatedComponent, fires stop event (OnProjectileStop), and stops ticking (if bAutoUpdateTickRegistration is true).

### IsVelocityUnderSimulationThreshold

```
bool IsVelocityUnderSimulationThreshold()const
```

Returns true if velocity magnitude is less than BounceVelocityStopSimulatingThreshold.

### SetVelocityInLocalSpace

```
void SetVelocityInLocalSpace(FVector NewVelocity)
```

Sets the velocity to the new value, rotated into Actor space.

---

## GAME \| COMPONENTS \| PROJECTILEMOVEMENT \| INTERPOLATION

### MoveInterpolationTarget

```
void MoveInterpolationTarget(FVector NewLocation, FRotator NewRotation)
```

Moves the UpdatedComponent, which is also the interpolation target for the interpolated component. If there is not interpolated component, this simply moves UpdatedComponent.  Use this typically from PostNetReceiveLocationAndRotation() or similar from an Actor.

### ResetInterpolation

```
void ResetInterpolation()
```

Resets interpolation so that interpolated component snaps back to the initial location/rotation without any additional offsets.

### SetInterpolatedComponent

```
void SetInterpolatedComponent(USceneComponent Component)
```

Assigns the component that will be used for network interpolation/smoothing. It is expected that this is a component attached somewhere below the UpdatedComponent.  When network updates use MoveInterpolationTarget() to move the UpdatedComponent, the interpolated component's relative offset will be maintained and smoothed over the course of future component ticks. The current relative location and rotation of the component is saved as the target offset for future interpolation.  See: MoveInterpolationTarget(), bInterpMovement, bInterpRotation

### IsInterpolationComplete

```
bool IsInterpolationComplete()const
```

Returns whether interpolation is complete because the target has been reached. True when interpolation is disabled.

---

## FUNCTIONS

### SetHomingTargetComponent

```
void SetHomingTargetComponent(USceneComponent HomingTargetComponent)
```

GetbForceSubStepping

### bool GetbForceSubStepping

```
bool GetbForceSubStepping()const SetMaxSpeed
```

void SetMaxSpeed(

### const 	float32& 	Value

```
const 	float32& 	Value 	)
```

GetbRotationFollowsVelocity

### bool GetbRotationFollowsVelocity

```
bool GetbRotationFollowsVelocity()const SetbRotationFollowsVelocity
```

void SetbRotationFollowsVelocity(

### bool 	Value

```
bool 	Value 	)
```

GetbRotationRemainsVertical

### bool GetbRotationRemainsVertical

```
bool GetbRotationRemainsVertical()const SetbRotationRemainsVertical
```

void SetbRotationRemainsVertical(

### bool 	Value

```
bool 	Value 	)
```

GetbShouldBounce

### bool GetbShouldBounce

```
bool GetbShouldBounce()const SetbShouldBounce
```

void SetbShouldBounce(

### bool 	Value

```
bool 	Value 	)
```

GetbInitialVelocityInLocalSpace

### bool GetbInitialVelocityInLocalSpace

```
bool GetbInitialVelocityInLocalSpace()const SetbInitialVelocityInLocalSpace
```

void SetbInitialVelocityInLocalSpace(

### bool 	Value

```
bool 	Value 	)
```

GetHomingTargetComponent

### const USceneComponent GetHomingTargetComponent

```
const USceneComponent GetHomingTargetComponent()const SetbForceSubStepping
```

void SetbForceSubStepping(

### bool 	Value

```
bool 	Value 	)
```

GetbSimulationEnabled

### bool GetbSimulationEnabled

```
bool GetbSimulationEnabled()const SetbSimulationEnabled
```

void SetbSimulationEnabled(

### bool 	Value

```
bool 	Value 	)
```

GetbSweepCollision

### bool GetbSweepCollision

```
bool GetbSweepCollision()const SetbSweepCollision
```

void SetbSweepCollision(

### bool 	Value

```
bool 	Value 	)
```

GetbIsHomingProjectile

### bool GetbIsHomingProjectile

```
bool GetbIsHomingProjectile()const SetbIsHomingProjectile
```

void SetbIsHomingProjectile(

### bool 	Value

```
bool 	Value 	)
```

GetbBounceAngleAffectsFriction

### bool GetbBounceAngleAffectsFriction

```
bool GetbBounceAngleAffectsFriction()const SetbBounceAngleAffectsFriction
```

void SetbBounceAngleAffectsFriction(

### bool 	Value

```
bool 	Value 	)
```

GetbIsSliding

### bool GetbIsSliding

```
bool GetbIsSliding()const GetbInterpMovement
```

bool GetbInterpMovement() const

### SetbInterpMovement

```
void SetbInterpMovement(bool Value)
```

GetbInterpRotation

### bool GetbInterpRotation

```
bool GetbInterpRotation()const SetbInterpRotation
```

void SetbInterpRotation(

### Value

```
bool Value
```

)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UProjectileMovementComponent UProjectileMovementComponent::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UProjectileMovementComponent UProjectileMovementComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UProjectileMovementComponent UProjectileMovementComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UProjectileMovementComponent::StaticClass()
```
