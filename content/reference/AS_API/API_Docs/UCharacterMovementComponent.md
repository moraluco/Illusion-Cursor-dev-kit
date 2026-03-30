# UCharacterMovementComponent

**Visibility:** public

## Inheritance

UPawnMovementComponent → UCharacterMovementComponent → UArchVisCharMovementComponent

## Description

CharacterMovementComponent handles movement logic for the associated Character owner.  It supports various movement modes including: walking, falling, swimming, flying, custom.

Movement is affected primarily by current Velocity and Acceleration. Acceleration is updated each frame based on the input vector accumulated thus far (see UPawnMovementComponent::GetPendingInputVector()).

Networking is fully implemented, with server-client correction and prediction included.

### See also

- ACharacter, UPawnMovementComponent @see https://​docs​.unrealengine​.com​/latest​/INT​/Gameplay​/Framework​/Pawn​/Character​/

### CHARACTER MOVEMENT

```
CHARACTER MOVEMENT bServerAcceptClientAuthoritativePosition bool bServerAcceptClientAuthoritativePosition
```

If true, and server does not detect client position error, server will copy the client movement location/velocity/etc after simulating the move.  This can be useful for short bursts of movement that are difficult to sync over the network.  Note that if bIgnoreClientMovementErrorChecksAndCorrection is used, this means the server will not detect an error.  Also see GameNetworkManager->ClientAuthorativePosition which permanently enables this behavior.  @see bIgnoreClientMovementErrorChecksAndCorrection, ServerShouldUseAuthoritativePosition()

### bIgnoreClientMovementErrorChecksAndCorrection

```
bool bIgnoreClientMovementErrorChecksAndCorrection
```

If true, we should ignore server location difference checks for client error on this movement component.  This can be useful when character is moving at extreme speeds for a duration and you need it to look smooth on clients without the server correcting the client. Make sure to disable when done, as this would break this character's server-client movement correction.  @see bServerAcceptClientAuthoritativePosition, ServerCheckClientError()

### CHARACTER MOVEMENT

```
CHARACTER MOVEMENT(GENERAL SETTINGS)
```

bWantsToCrouch

### const bool bWantsToCrouch

```
const bool bWantsToCrouch
```

If true, try to crouch (or keep crouching) on next update. If false, try to stop crouching on next update.

## Members

### bCrouchMaintainsBaseLocation

```
bool bCrouchMaintainsBaseLocation
```

If true, crouching should keep the base of the capsule in place by lowering the center of the shrunken capsule. If false, the base of the capsule moves up and the center stays in place.  The same behavior applies when the character uncrouches: if true, the base is kept in the same location and the center moves up. If false, the capsule grows and only moves up if the base impacts something.  By default this variable is set when the movement mode changes: set to true when walking and false otherwise. Feel free to override the behavior when the movement mode changes.

### bRequestedMoveUseAcceleration

```
bool bRequestedMoveUseAcceleration
```

Should use acceleration for path following?  If true, acceleration is applied when path following to reach the target velocity.  If false, path following velocity is set directly, disregarding acceleration.

### DefaultWaterMovementMode

```
EMovementMode DefaultWaterMovementMode
```

Default movement mode when in water. Used at player startup or when teleported.  @see DefaultLandMovementMode @see bRunPhysicsWithNoController

### MaxJumpApexAttemptsPerSimulation

```
int MaxJumpApexAttemptsPerSimulation
```

Max number of attempts per simulation to attempt to exactly reach the jump apex when falling movement reaches the top of the arc.  Limiting this prevents deep recursion when special cases cause collision or other conditions which reactivate the apex condition.

### bJustTeleported

```
bool bJustTeleported
```

Used by movement code to determine if a change in position is based on normal movement or a teleport. If not a teleport, velocity can be recomputed based on the change in position.

### bRunPhysicsWithNoController

```
bool bRunPhysicsWithNoController
```

If true, movement will be performed even if there is no Controller for the Character owner.  Normally without a Controller, movement will be aborted and velocity and acceleration are zeroed if the character is walking.  Characters that are spawned without a Controller but with this flag enabled will initialize the movement mode to DefaultLandMovementMode or DefaultWaterMovementMode appropriately.  @see DefaultLandMovementMode, DefaultWaterMovementMode

### MaxSimulationIterations

```
int MaxSimulationIterations
```

Max number of iterations used for each discrete simulation step.  Used primarily in the the more advanced movement modes that break up larger time steps (usually those applying gravity such as falling and walking).  Increasing this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance.

### WARNING: if

```
WARNING: if(MaxSimulationTimeStep * MaxSimulationIterations)is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation. @see MaxSimulationTimeStep
```

MaxSimulationTimeStep

### float32 MaxSimulationTimeStep

```
float32 MaxSimulationTimeStep
```

Max time delta for each discrete simulation step.  Used primarily in the the more advanced movement modes that break up larger time steps (usually those applying gravity such as falling and walking).  Lowering this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance.

### WARNING: if

```
WARNING: if(MaxSimulationTimeStep * MaxSimulationIterations)is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation. @see MaxSimulationIterations
```

bUseSeparateBrakingFriction

### bool bUseSeparateBrakingFriction

```
bool bUseSeparateBrakingFriction
```

If true, BrakingFriction will be used to slow the character to a stop (when there is no Acceleration).  If false, braking uses the same friction passed to CalcVelocity() (ie GroundFriction when walking), multiplied by BrakingFrictionFactor.  This setting applies to all movement modes; if only desired in certain modes, consider toggling it when movement modes change.  @see BrakingFriction

### MaxAcceleration

```
float32 MaxAcceleration
```

Max Acceleration (rate of change of velocity)

### BrakingFrictionFactor

```
float32 BrakingFrictionFactor
```

Factor used to multiply actual value of friction used when braking.  This applies to any friction value that is currently used, which may depend on bUseSeparateBrakingFriction.  @note This is 2 by default for historical reasons, a value of 1 gives the true drag equation.  @see bUseSeparateBrakingFriction, GroundFriction, BrakingFriction

### BrakingFriction

```
float32 BrakingFriction
```

Friction (drag) coefficient applied when braking (whenever Acceleration = 0, or if character is exceeding max speed); actual value used is this multiplied by BrakingFrictionFactor.  When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity.  Braking is composed of friction (velocity-dependent drag) and constant deceleration.  This is the current value, used in all movement modes; if this is not desired, override it or bUseSeparateBrakingFriction when movement mode changes.  @note Only used if bUseSeparateBrakingFriction setting is true, otherwise current friction such as GroundFriction is used.  @see bUseSeparateBrakingFriction, BrakingFrictionFactor, GroundFriction, BrakingDecelerationWalking

### BrakingSubStepTime

```
float32 BrakingSubStepTime
```

Time substepping when applying braking friction. Smaller time steps increase accuracy at the slight cost of performance, especially if there are large frame times.

### CrouchedHalfHeight

```
float32 CrouchedHalfHeight
```
### GravityScale

```
float32 GravityScale
```

Custom gravity scale. Gravity is multiplied by this amount for the character.

### MaxDepenetrationWithGeometryAsProxy

```
float32 MaxDepenetrationWithGeometryAsProxy
```

Max distance we allow simulated proxies to depenetrate when moving out of anything but Pawns.  This is generally more tolerant than with Pawns, because other geometry is either not moving, or is moving predictably with a bit of delay compared to on the server.  @see MaxDepenetrationWithGeometry, MaxDepenetrationWithPawn, MaxDepenetrationWithPawnAsProxy

### DefaultLandMovementMode

```
EMovementMode DefaultLandMovementMode
```

Default movement mode when not in water. Used at player startup or when teleported.  @see DefaultWaterMovementMode @see bRunPhysicsWithNoController

### MaxDepenetrationWithPawn

```
float32 MaxDepenetrationWithPawn
```

Max distance we are allowed to depenetrate when moving out of other Pawns.  @see MaxDepenetrationWithGeometry, MaxDepenetrationWithGeometryAsProxy, MaxDepenetrationWithPawnAsProxy

### MaxDepenetrationWithPawnAsProxy

```
float32 MaxDepenetrationWithPawnAsProxy
```

Max distance we allow simulated proxies to depenetrate when moving out of other Pawns.  Typically we don't want a large value, because we receive a server authoritative position that we should not then ignore by pushing them out of the local player.  @see MaxDepenetrationWithGeometry, MaxDepenetrationWithGeometryAsProxy, MaxDepenetrationWithPawn

### MaxDepenetrationWithGeometry

```
float32 MaxDepenetrationWithGeometry
```

Max distance we allow simulated proxies to depenetrate when moving out of anything but Pawns.  This is generally more tolerant than with Pawns, because other geometry is either not moving, or is moving predictably with a bit of delay compared to on the server.  @see MaxDepenetrationWithGeometryAsProxy, MaxDepenetrationWithPawn, MaxDepenetrationWithPawnAsProxy

### Mass

```
float32 Mass
```

Mass of pawn (for when momentum is imparted to it).

### CHARACTER MOVEMENT

```
CHARACTER MOVEMENT(NETWORKING)
```

NetworkMaxSmoothUpdateDistance

### NetworkMaxSmoothUpdateDistance

```
float32 NetworkMaxSmoothUpdateDistance
```

Maximum distance character is allowed to lag behind server location when interpolating between updates.

### NetworkNoSmoothUpdateDistance

```
float32 NetworkNoSmoothUpdateDistance
```

Maximum distance beyond which character is teleported to the new server location without any smoothing.

### NetworkMinTimeBetweenClientAckGoodMoves

```
float32 NetworkMinTimeBetweenClientAckGoodMoves
```

Minimum time on the server between acknowledging good client moves. This can save on bandwidth. Set to 0 to disable throttling.

### NetworkSmoothingMode

```
ENetworkSmoothingMode NetworkSmoothingMode
```

Smoothing mode for simulated proxies in network game.

### NetworkMinTimeBetweenClientAdjustments

```
float32 NetworkMinTimeBetweenClientAdjustments
```

Minimum time on the server between sending client adjustments when client has exceeded allowable position error.  Should be >= NetworkMinTimeBetweenClientAdjustmentsLargeCorrection (the larger value is used regardless).  This can save on bandwidth. Set to 0 to disable throttling.  @see ServerLastClientAdjustmentTime

### NetProxyShrinkHalfHeight

```
float32 NetProxyShrinkHalfHeight
```

Shrink simulated proxy capsule half height by this amount, to account for network rounding that may cause encroachment. Changing during gameplay is not supported.  @see AdjustProxyCapsuleSize()

### ListenServerNetworkSimulatedSmoothRotationTime

```
float32 ListenServerNetworkSimulatedSmoothRotationTime
```

Similar setting as NetworkSimulatedSmoothRotationTime but only used on Listen servers.

### ListenServerNetworkSimulatedSmoothLocationTime

```
float32 ListenServerNetworkSimulatedSmoothLocationTime
```

Similar setting as NetworkSimulatedSmoothLocationTime but only used on Listen servers.

### NetworkSimulatedSmoothRotationTime

```
float32 NetworkSimulatedSmoothRotationTime
```

How long to take to smoothly interpolate from the old pawn rotation on the client to the corrected one sent by the server. Not used by Linear smoothing.

### NetworkSimulatedSmoothLocationTime

```
float32 NetworkSimulatedSmoothLocationTime
```

How long to take to smoothly interpolate from the old pawn position on the client to the corrected one sent by the server. Not used by Linear smoothing.

### NetProxyShrinkRadius

```
float32 NetProxyShrinkRadius
```

Shrink simulated proxy capsule radius by this amount, to account for network rounding that may cause encroachment. Changing during gameplay is not supported.  @see AdjustProxyCapsuleSize()

### NetworkMinTimeBetweenClientAdjustmentsLargeCorrection

```
float32 NetworkMinTimeBetweenClientAdjustmentsLargeCorrection
```

Minimum time on the server between sending client adjustments when client has exceeded allowable position error by a large amount (NetworkLargeClientCorrectionDistance).  Should be <= NetworkMinTimeBetweenClientAdjustments (the smaller value is used regardless).  @see NetworkMinTimeBetweenClientAdjustments

### NetworkLargeClientCorrectionDistance

```
float32 NetworkLargeClientCorrectionDistance
```

If client error is larger than this, sets bNetworkLargeClientCorrection to reduce delay between client adjustments.  @see NetworkMinTimeBetweenClientAdjustments, NetworkMinTimeBetweenClientAdjustmentsLargeCorrection

### CHARACTER MOVEMENT

```
CHARACTER MOVEMENT(ROTATION SETTINGS)
```

bUseControllerDesiredRotation

### bool bUseControllerDesiredRotation

```
bool bUseControllerDesiredRotation
```

If true, smoothly rotate the Character toward the Controller's desired rotation (typically Controller->ControlRotation), using RotationRate as the rate of rotation change. Overridden by OrientRotationToMovement.  Normally you will want to make sure that other settings are cleared, such as bUseControllerRotationYaw on the Character.

### bOrientRotationToMovement

```
bool bOrientRotationToMovement
```

If true, rotate the Character toward the direction of acceleration, using RotationRate as the rate of rotation change. Overrides UseControllerDesiredRotation.  Normally you will want to make sure that other settings are cleared, such as bUseControllerRotationYaw on the Character.

### RotationRate

```
FRotator RotationRate
```

Change in rotation per second, used when UseControllerDesiredRotation or OrientRotationToMovement are true. Set a negative value for infinite rotation rate and instant turns.

### AVOIDANCE

```
CHARACTER MOVEMENT: AVOIDANCE
```
### AvoidanceConsiderationRadius

```
float32 AvoidanceConsiderationRadius
```
### bUseRVOAvoidance

```
bool bUseRVOAvoidance
```

If set, component will use RVO avoidance. This only runs on the server.

### GroupsToIgnore

```
FNavAvoidanceMask GroupsToIgnore
```

Will NOT avoid other agents if they are in one of specified groups, higher priority than GroupsToAvoid

### AvoidanceWeight

```
float32 AvoidanceWeight
```

De facto default value 0.5 (due to that being the default in the avoidance registration function), indicates RVO behavior.

### AvoidanceGroup

```
FNavAvoidanceMask AvoidanceGroup
```

Moving actor's group mask

### GroupsToAvoid

```
FNavAvoidanceMask GroupsToAvoid
```

Will avoid other agents if they are in one of specified groups

### AvoidanceUID

```
int AvoidanceUID
```

No default value, for now it's assumed to be valid if GetAvoidanceManager() returns non-NULL.

### MOVEMENT

```
CHARACTER MOVEMENT: CUSTOM MOVEMENT
```
### MaxCustomMovementSpeed

```
float32 MaxCustomMovementSpeed
```

The maximum speed when using Custom movement mode.

### FLYING

```
CHARACTER MOVEMENT: FLYING
```
### BrakingDecelerationFlying

```
float32 BrakingDecelerationFlying
```

Deceleration when flying and not applying acceleration.  @see MaxAcceleration

### MaxFlySpeed

```
float32 MaxFlySpeed
```

The maximum flying speed.

### CHARACTER MOVEMENT: JUMPING / FALLING

```
CHARACTER MOVEMENT: JUMPING / FALLING bImpartBaseVelocityX bool bImpartBaseVelocityX
```

If true, impart the base actor's X velocity when falling off it (which includes jumping)

### JumpOffJumpZFactor

```
float32 JumpOffJumpZFactor
```

Fraction of JumpZVelocity to use when automatically "jumping off" of a base actor that's not allowed to be a base for a character. (For example, if you're not allowed to stand on other players.)

### FallingLateralFriction

```
float32 FallingLateralFriction
```

Friction to apply to lateral air movement when falling.  If bUseSeparateBrakingFriction is false, also affects the ability to stop more quickly when braking (whenever Acceleration is zero).  @see BrakingFriction, bUseSeparateBrakingFriction

### bImpartBaseVelocityY

```
bool bImpartBaseVelocityY
```

If true, impart the base actor's Y velocity when falling off it (which includes jumping)

### bApplyGravityWhileJumping

```
bool bApplyGravityWhileJumping
```

Apply gravity while the character is actively jumping (e.g. holding the jump key).  Helps remove frame-rate dependent jump height, but may alter base jump height.

### AirControlBoostMultiplier

```
float32 AirControlBoostMultiplier
```

When falling, multiplier applied to AirControl when lateral velocity is less than AirControlBoostVelocityThreshold.  Setting this to zero will disable air control boosting. Final result is clamped at 1.

### bImpartBaseVelocityZ

```
bool bImpartBaseVelocityZ
```

If true, impart the base actor's Z velocity when falling off it (which includes jumping)

### AirControl

```
float32 AirControl
```

When falling, amount of lateral movement control available to the character.  0 = no control, 1 = full control at max speed of MaxWalkSpeed.

### JumpZVelocity

```
float32 JumpZVelocity
```

Initial velocity (instantaneous vertical acceleration) when jumping.

### bImpartBaseAngularVelocity

```
bool bImpartBaseAngularVelocity
```

If true, impart the base component's tangential components of angular velocity when jumping or falling off it.  Only those components of the velocity allowed by the separate component settings (bImpartBaseVelocityX etc) will be applied.  @see bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ

### bNotifyApex

```
bool bNotifyApex
```

If true, event NotifyJumpApex() to CharacterOwner's controller when at apex of jump. Is cleared when event is triggered.  By default this is off, and if you want the event to fire you typically set it to true when movement mode changes to "Falling" from another mode (see OnMovementModeChanged).

### AirControlBoostVelocityThreshold

```
float32 AirControlBoostVelocityThreshold
```

When falling, if lateral velocity magnitude is less than this value, AirControl is multiplied by AirControlBoostMultiplier.  Setting this to zero will disable air control boosting.

### BrakingDecelerationFalling

```
float32 BrakingDecelerationFalling
```

Lateral deceleration when falling and not applying acceleration.  @see MaxAcceleration

### CHARACTER MOVEMENT: MOVEMENTMODE

```
CHARACTER MOVEMENT: MOVEMENTMODE CustomMovementMode uint8 CustomMovementMode
```

Current custom sub-mode if MovementMode is set to Custom.  This is automatically replicated through the Character owner and for client-server movement functions.  @see SetMovementMode()

### MovementMode

```
const EMovementMode MovementMode
```

Actor's current movement mode (walking, falling, etc).  - walking:  Walking on a surface, under the effects of friction, and able to "step up" barriers. Vertical velocity is zero.  - falling:  Falling under the effects of gravity, after jumping or walking off the edge of a surface.  - flying:  Flying, ignoring the effects of gravity.  - swimming: Swimming through a fluid volume, under the effects of gravity and buoyancy.  - custom:  User-defined custom movement mode, including many possible sub-modes.  This is automatically replicated through the Character owner and for client-server movement functions.  @see SetMovementMode(), CustomMovementMode

### MOVEMENT

```
CHARACTER MOVEMENT: NAVMESH MOVEMENT
```
### bProjectNavMeshOnBothWorldChannels

```
bool bProjectNavMeshOnBothWorldChannels
```

Use both WorldStatic and WorldDynamic channels for NavWalking geometry conforming

### bProjectNavMeshWalking

```
bool bProjectNavMeshWalking
```

Whether to raycast to underlying geometry to better conform navmesh-walking characters

### NavWalkingFloorDistTolerance

```
float32 NavWalkingFloorDistTolerance
```

Ignore small differences in ground height between server and client data during NavWalking mode

### NavMeshProjectionInterval

```
float32 NavMeshProjectionInterval
```

How often we should raycast to project from navmesh to underlying geometry

### NavMeshProjectionInterpSpeed

```
float32 NavMeshProjectionInterpSpeed
```

Speed at which to interpolate agent navmesh offset between traces. 0: Instant (no interp) > 0: Interp speed")

### NavMeshProjectionHeightScaleUp

```
float32 NavMeshProjectionHeightScaleUp
```

Scale of the total capsule height to use for projection from navmesh to underlying geometry in the upward direction.  In other words, start the trace at [CapsuleHeight * NavMeshProjectionHeightScaleUp] above nav mesh.

### NavMeshProjectionHeightScaleDown

```
float32 NavMeshProjectionHeightScaleDown
```

Scale of the total capsule height to use for projection from navmesh to underlying geometry in the downward direction.  In other words, trace down to [CapsuleHeight * NavMeshProjectionHeightScaleDown] below nav mesh.

### INTERACTION

```
CHARACTER MOVEMENT: PHYSICS INTERACTION
```
### bPushForceUsingZOffset

```
bool bPushForceUsingZOffset
```

If enabled, the PushForce location is moved using PushForcePointZOffsetFactor. Otherwise simply use the impact point.

### bTouchForceScaledToMass

```
bool bTouchForceScaledToMass
```

If enabled, the TouchForceFactor is applied per kg mass of the affected object.

### bScalePushForceToVelocity

```
bool bScalePushForceToVelocity
```

If enabled, the applied push force will try to get the physics object to the same velocity than the player, not faster. This will only scale the force down, it will never apply more force than defined by PushForceFactor.

### MaxTouchForce

```
float32 MaxTouchForce
```

Maximum force applied to touched physics objects. If < 0.0f, there is no maximum.

### StandingDownwardForceScale

```
float32 StandingDownwardForceScale
```

Force applied to objects we stand on (due to Mass and Gravity) is scaled by this amount.

### InitialPushForceFactor

```
float32 InitialPushForceFactor
```

Initial impulse force to apply when the player bounces into a blocking physics object.

### bPushForceScaledToMass

```
bool bPushForceScaledToMass
```

If enabled, the PushForceFactor is applied per kg mass of the affected object.

### PushForceFactor

```
float32 PushForceFactor
```

Force to apply when the player collides with a blocking physics object.

### MinTouchForce

```
float32 MinTouchForce
```

Minimum Force applied to touched physics objects. If < 0.0f, there is no minimum.

### TouchForceFactor

```
float32 TouchForceFactor
```

Force to apply to physics objects that are touched by the player.

### RepulsionForce

```
float32 RepulsionForce
```

Force per kg applied constantly to all overlapping components.

### PushForcePointZOffsetFactor

```
float32 PushForcePointZOffsetFactor
```

Z-Offset for the position the force is applied to. 0.0f is the center of the physics object, 1.0f is the top and -1.0f is the bottom of the object.

### bEnablePhysicsInteraction

```
bool bEnablePhysicsInteraction
```

If enabled, the player will interact with physics objects when walking into them.

### SWIMMING

```
CHARACTER MOVEMENT: SWIMMING
```
### MaxOutOfWaterStepHeight

```
float32 MaxOutOfWaterStepHeight
```

Maximum step height for getting out of water

### BrakingDecelerationSwimming

```
float32 BrakingDecelerationSwimming
```

Deceleration when swimming and not applying acceleration.  @see MaxAcceleration

### JumpOutOfWaterPitch

```
float32 JumpOutOfWaterPitch
```

When exiting water, jump if control pitch angle is this high or above.

### Buoyancy

```
float32 Buoyancy
```

Water buoyancy. A ratio (1.0 = neutral buoyancy, 0.0 = no buoyancy)

### OutofWaterZ

```
float32 OutofWaterZ
```

Z velocity applied when pawn tries to get out of water

### MaxSwimSpeed

```
float32 MaxSwimSpeed
```

The maximum swimming speed.

### WALKING

```
CHARACTER MOVEMENT: WALKING
```
### PerchRadiusThreshold

```
float32 PerchRadiusThreshold
```

Don't allow the character to perch on the edge of a surface if the contact is this close to the edge of the capsule.  Note that characters will not fall off if they are within MaxStepHeight of a walkable surface below.

### PerchAdditionalHeight

```
float32 PerchAdditionalHeight
```

When perching on a ledge, add this additional distance to MaxStepHeight when determining how high above a walkable floor we can perch.  Note that we still enforce MaxStepHeight to start the step up; this just allows the character to hang off the edge or step slightly higher off the floor.  (@see PerchRadiusThreshold)

### MinAnalogWalkSpeed

```
float32 MinAnalogWalkSpeed
```

The ground speed that we should accelerate up to when walking at minimum analog stick tilt

### bAlwaysCheckFloor

```
bool bAlwaysCheckFloor
```

Whether we always force floor checks for stationary Characters while walking.  Normally floor checks are avoided if possible when not moving, but this can be used to force them if there are use-cases where they are being skipped erroneously (such as objects moving up into the character from below).

### WalkableFloorZ

```
float32 WalkableFloorZ
```

Minimum Z value for floor normal. If less, not a walkable surface. Computed from WalkableFloorAngle.

### MaxWalkSpeedCrouched

```
float32 MaxWalkSpeedCrouched
```

The maximum ground speed when walking and crouched.

### bSweepWhileNavWalking

```
bool bSweepWhileNavWalking
```

Whether or not the character should sweep for collision geometry while walking.  @see USceneComponent::MoveComponent.

### WalkableFloorAngle

```
float32 WalkableFloorAngle
```

Max angle in degrees of a walkable surface. Any greater than this and it is too steep to be walkable.

### bForceNextFloorCheck

```
bool bForceNextFloorCheck
```

Force the Character in MOVE_Walking to do a check for a valid floor even if he hasn't moved. Cleared after next floor check.  Normally if bAlwaysCheckFloor is false we try to avoid the floor check unless some conditions are met, but this can be used to force the next check to always run.

### bCanWalkOffLedges

```
bool bCanWalkOffLedges
```

If true, Character can walk off a ledge.

### bCanWalkOffLedgesWhenCrouching

```
bool bCanWalkOffLedgesWhenCrouching
```

If true, Character can walk off a ledge when crouching.

### bIgnoreBaseRotation

```
bool bIgnoreBaseRotation
```

Whether the character ignores changes in rotation of the base it is standing on.  If true, the character maintains current world rotation.  If false, the character rotates with the moving base.

### LedgeCheckThreshold

```
float32 LedgeCheckThreshold
```

Used in determining if pawn is going off ledge.  If the ledge is "shorter" than this value then the pawn will be able to walk off it.

### BrakingDecelerationWalking

```
float32 BrakingDecelerationWalking
```

Deceleration when walking and not applying acceleration. This is a constant opposing force that directly lowers velocity by a constant value.  @see GroundFriction, MaxAcceleration

### CurrentFloor

```
FFindFloorResult CurrentFloor
```

Information about the floor the Character is standing on (updated only during walking movement).

### MaxStepHeight

```
float32 MaxStepHeight
```

Maximum height character can step up

### bMaintainHorizontalGroundVelocity

```
bool bMaintainHorizontalGroundVelocity
```

If true, walking movement always maintains horizontal velocity when moving up ramps, which causes movement up ramps to be faster parallel to the ramp surface.  If false, then walking movement maintains velocity magnitude parallel to the ramp surface.

### bUseFlatBaseForFloorChecks

```
bool bUseFlatBaseForFloorChecks
```

Performs floor checks as if the character is using a shape with a flat base.  This avoids the situation where characters slowly lower off the side of a ledge (as their capsule 'balances' on the edge).

### GroundFriction

```
float32 GroundFriction
```

Setting that affects movement control. Higher values allow faster changes in direction.  If bUseSeparateBrakingFriction is false, also affects the ability to stop more quickly when braking (whenever Acceleration is zero), where it is multiplied by BrakingFrictionFactor.  When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity.  This can be used to simulate slippery surfaces such as ice or oil by changing the value (possibly based on the material pawn is standing on).  @see BrakingDecelerationWalking, BrakingFriction, bUseSeparateBrakingFriction, BrakingFrictionFactor

### MaxWalkSpeed

```
float32 MaxWalkSpeed
```

The maximum ground speed when walking. Also determines maximum lateral speed when falling.

---

## PAWN \| COMPONENTS \| CHARACTERMOVEMENT

### MinAnalogSpeed

```
const float32 MinAnalogSpeed
```

Returns maximum acceleration for the current state.

### ValidPerchRadius

```
const float32 ValidPerchRadius
```

Returns the radius within which we can stand on the edge of a surface without falling (if this is a walkable surface).  Simply computed as the capsule radius minus the result of GetPerchRadiusThreshold().

MaxJumpHeightWithJumpTime

### MaxJumpHeightWithJumpTime

```
const float32 MaxJumpHeightWithJumpTime
```

Compute the max jump height based on the JumpZVelocity velocity and gravity.  This does take into account the CharacterOwner's MaxJumpHoldTime.

MaxJumpHeight

### MaxJumpHeight

```
const float32 MaxJumpHeight
```

Compute the max jump height based on the JumpZVelocity velocity and gravity.  This does not take into account the CharacterOwner's MaxJumpHoldTime.

### ImpartedMovementBaseVelocity

```
const FVector ImpartedMovementBaseVelocity
```

If we have a movement base, get the velocity that should be imparted by that base, usually when jumping off of it.  Only applies the components of the velocity enabled by bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ.

### CurrentAcceleration

```
const FVector CurrentAcceleration
```

Returns current acceleration, computed from input vector each update.

### MovementBase

```
const UPrimitiveComponent MovementBase
```

Return PrimitiveComponent we are based on (standing and walking on).

### MaxBrakingDeceleration

```
const float32 MaxBrakingDeceleration
```

Returns maximum deceleration for the current state when braking (ie when there is no acceleration).

---

## ROOTMOTION

### bAllowPhysicsRotationDuringAnimRootMotion

```
bool bAllowPhysicsRotationDuringAnimRootMotion FormerBaseVelocityDecayHalfLife float32 FormerBaseVelocityDecayHalfLife
```

When applying a root motion override while falling off a moving object, this controls how long it takes to lose half the former base's velocity (in seconds).  Set to 0 to ignore former bases (default).  Set to -1 for no decay.  Any other positive value sets the half-life for exponential decay.

---

## VARIABLES

### CharacterOwner

```
const ACharacter CharacterOwner
```

Character movement component belongs to

### LastUpdateLocation

```
const FVector LastUpdateLocation
```

Location after last PerformMovement or SimulateMovement update. Used internally to detect changes in position from outside character movement to try to validate the current floor.

AnalogInputModifier

### AnalogInputModifier

```
const float32 AnalogInputModifier
```

Modifier to applied to values such as acceleration and max speed due to analog input.

### LastUpdateRotation

```
const FRotator LastUpdateRotation
```

Rotation after last PerformMovement or SimulateMovement update.

### LastUpdateVelocity

```
const FVector LastUpdateVelocity
```

Velocity after last PerformMovement or SimulateMovement update. Used internally to detect changes in velocity from external sources.

---

## PAWN \| COMPONENTS \| CHARACTERMOVEMENT

### SetAvoidanceEnabled

```
void SetAvoidanceEnabled(bool bEnable)
```

Change avoidance state and registers in RVO manager if needed

### AddImpulse

```
void AddImpulse(FVector Impulse, bool bVelocityChange = false)
```

Add impulse to character. Impulses are accumulated each tick and applied together so multiple calls to this function will accumulate.  An impulse is an instantaneous force, usually applied once. If you want to continually apply forces each frame, use AddForce().  Note that changing the momentum of characters like this can change the movement mode.

**Parameters**

Impulse
FVector

Impulse to apply.

bVelocityChange
bool

Whether or not the impulse is relative to mass.

CalcVelocity
void CalcVelocity(
float32 	DeltaTime,
float32 	Friction,
bool 	bFluid,
float32 	BrakingDeceleration
	)

Updates Velocity and Acceleration based on the current state, applying the effects of friction and acceleration or deceleration. Does not apply gravity.  This is used internally during movement updates. Normally you don't need to call this from outside code, but you might want to use it for custom movement modes.

**Parameters**

DeltaTime
float32

time elapsed since last frame.

Friction
float32

coefficient of friction when not accelerating, or in the direction opposite acceleration.

bFluid
bool

true if moving through a fluid, causing Friction to always be applied regardless of acceleration.

BrakingDeceleration
float32

deceleration applied when not accelerating, or when exceeding max velocity.

ClearAccumulatedForces
void ClearAccumulatedForces()

Clears forces accumulated through AddImpulse() and AddForce(), and also pending launch velocity.

DisableMovement
void DisableMovement()

Make movement impossible (sets movement mode to MOVE_None).

GetAnalogInputModifier
float32 GetAnalogInputModifier() const

Returns modifier [0..1] based on the magnitude of the last input vector, which is used to modify the acceleration and max speed during movement.

GetCharacterOwner
ACharacter GetCharacterOwner() const

Get the Character that owns UpdatedComponent.

SetGroupsToIgnoreMask
void SetGroupsToIgnoreMask(
FNavAvoidanceMask 	GroupMask
	)
GetCurrentAcceleration
FVector GetCurrentAcceleration() const

Returns current acceleration, computed from input vector each update.

GetImpartedMovementBaseVelocity
FVector GetImpartedMovementBaseVelocity() const

If we have a movement base, get the velocity that should be imparted by that base, usually when jumping off of it.  Only applies the components of the velocity enabled by bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ.

GetLastUpdateLocation
FVector GetLastUpdateLocation() const

Returns the location at the end of the last tick.

GetLastUpdateRotation
FRotator GetLastUpdateRotation() const

Returns the rotation at the end of the last tick.

GetLastUpdateVelocity
FVector GetLastUpdateVelocity() const

Returns the velocity at the end of the last tick.

GetMaxAcceleration
float32 GetMaxAcceleration() const

Returns maximum acceleration for the current state.

GetMaxBrakingDeceleration
float32 GetMaxBrakingDeceleration() const

Returns maximum deceleration for the current state when braking (ie when there is no acceleration).

GetMaxJumpHeight
float32 GetMaxJumpHeight() const

Compute the max jump height based on the JumpZVelocity velocity and gravity.  This does not take into account the CharacterOwner's MaxJumpHoldTime.

GetMaxJumpHeightWithJumpTime
float32 GetMaxJumpHeightWithJumpTime() const

Compute the max jump height based on the JumpZVelocity velocity and gravity.  This does take into account the CharacterOwner's MaxJumpHoldTime.

GetMinAnalogSpeed
float32 GetMinAnalogSpeed() const

Returns maximum acceleration for the current state.

GetMovementBase
UPrimitiveComponent GetMovementBase() const

Return PrimitiveComponent we are based on (standing and walking on).

GetPerchRadiusThreshold
float32 GetPerchRadiusThreshold() const

Returns The distance from the edge of the capsule within which we don't allow the character to perch on the edge of a surface.

GetValidPerchRadius
float32 GetValidPerchRadius() const

Returns the radius within which we can stand on the edge of a surface without falling (if this is a walkable surface).  Simply computed as the capsule radius minus the result of GetPerchRadiusThreshold().

IsWalkable
bool IsWalkable(
FHitResult 	Hit
	) const

Return true if the hit result should be considered a walkable surface for the character.

IsWalking
bool IsWalking() const

Returns true if the character is in the 'Walking' movement mode.

ComputeFloorDistance
void ComputeFloorDistance(
FVector 	CapsuleLocation,
float32 	LineDistance,
float32 	SweepDistance,
float32 	SweepRadius,
FFindFloorResult& 	FloorResult
	) const

Compute distance to the floor from bottom sphere of capsule and store the result in FloorResult.  This distance is the swept distance of the capsule to the first point impacted by the lower hemisphere, or distance from the bottom of the capsule in the case of a line trace.  This function does not care if collision is disabled on the capsule (unlike FindFloor).

**Parameters**

CapsuleLocation
FVector

Location where the capsule sweep should originate

LineDistance
float32

If non-zero, max distance to test for a simple line check from the capsule base. Used only if the sweep test fails to find a walkable floor, and only returns a valid result if the impact normal is a walkable normal.

SweepDistance
float32

If non-zero, max distance to use when sweeping a capsule downwards for the test. MUST be greater than or equal to the line distance.

SweepRadius
float32

The radius to use for sweep tests. Should be <= capsule radius.

FloorResult
FFindFloorResult&

Result of the floor check

FindFloor
void FindFloor(
FVector 	CapsuleLocation,
FFindFloorResult& 	FloorResult
	) const

Sweeps a vertical trace to find the floor for the capsule at the given location. Will attempt to perch if ShouldComputePerchResult() returns true for the downward sweep result.  No floor will be found if collision is disabled on the capsule!

**Parameters**

CapsuleLocation
FVector

Location where the capsule sweep should originate

FloorResult
FFindFloorResult&

Result of the floor check

GetWalkableFloorAngle
float32 GetWalkableFloorAngle() const

Get the max angle in degrees of a walkable surface for the character.

GetWalkableFloorZ
float32 GetWalkableFloorZ() const

Get the Z component of the normal of the steepest walkable surface for the character. Any lower than this and it is not walkable.

AddForce
void AddForce(
FVector 	Force
	)

Add force to character. Forces are accumulated each tick and applied together so multiple calls to this function will accumulate.  Forces are scaled depending on timestep, so they can be applied each frame. If you want an instantaneous force, use AddImpulse.  Adding a force always takes the actor's mass into account.  Note that changing the momentum of characters like this can change the movement mode.

**Parameters**

Force
FVector

Force to apply.

SetAvoidanceGroupMask
void SetAvoidanceGroupMask(
FNavAvoidanceMask 	GroupMask
	)
SetGroupsToAvoidMask
void SetGroupsToAvoidMask(
FNavAvoidanceMask 	GroupMask
	)
SetWalkableFloorAngle
void SetWalkableFloorAngle(
float32 	InWalkableFloorAngle
	)

Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ.

SetMovementMode
void SetMovementMode(
EMovementMode 	NewMovementMode,
uint8 	NewCustomMode	 = 	0
	)

Change movement mode.

**Parameters**

NewMovementMode
EMovementMode

The new movement mode

NewCustomMode
uint8

The new custom sub-mode, only applicable if NewMovementMode is Custom.

SetWalkableFloorZ
void SetWalkableFloorZ(
float32 	InWalkableFloorZ
	)

Set the Z component of the normal of the steepest walkable surface for the character. Also computes WalkableFloorAngle.

---

## FUNCTIONS

### GetCrouchedHalfHeight

```
float32 GetCrouchedHalfHeight()const
```

Returns the collision half-height when crouching (component scale is applied separately)

### GetbUseControllerDesiredRotation

```
bool GetbUseControllerDesiredRotation()const
```

GetMovementMode

### const EMovementMode& GetMovementMode

```
const EMovementMode& GetMovementMode()const SetMaxAcceleration
```

void SetMaxAcceleration(

### const 	float32& 	Value

```
const 	float32& 	Value 	)
```

SetPerchRadiusThreshold

### void SetPerchRadiusThreshold

```
void SetPerchRadiusThreshold(const float32& Value)
```

GetbUseSeparateBrakingFriction

### bool GetbUseSeparateBrakingFriction

```
bool GetbUseSeparateBrakingFriction()const SetbUseSeparateBrakingFriction
```

void SetbUseSeparateBrakingFriction(

### bool 	Value

```
bool 	Value 	)
```

GetbApplyGravityWhileJumping

### bool GetbApplyGravityWhileJumping

```
bool GetbApplyGravityWhileJumping()const SetbApplyGravityWhileJumping
```

void SetbApplyGravityWhileJumping(

### bool 	Value

```
bool 	Value 	)
```

SetCrouchedHalfHeight

### void SetCrouchedHalfHeight

```
void SetCrouchedHalfHeight(float32 NewValue)
```

Sets collision half-height when crouching and updates dependent computations

### SetbUseControllerDesiredRotation

```
void SetbUseControllerDesiredRotation(bool Value)
```

GetbOrientRotationToMovement

### bool GetbOrientRotationToMovement

```
bool GetbOrientRotationToMovement()const SetbOrientRotationToMovement
```

void SetbOrientRotationToMovement(

### bool 	Value

```
bool 	Value 	)
```

GetbSweepWhileNavWalking

### bool GetbSweepWhileNavWalking

```
bool GetbSweepWhileNavWalking()const SetbSweepWhileNavWalking
```

void SetbSweepWhileNavWalking(

### bool 	Value

```
bool 	Value 	)
```

SetbEnableScopedMovementUpdates

### void SetbEnableScopedMovementUpdates

```
void SetbEnableScopedMovementUpdates(bool Value)
```

SetbEnableServerDualMoveScopedMovementUpdates

### void SetbEnableServerDualMoveScopedMovementUpdates

```
void SetbEnableServerDualMoveScopedMovementUpdates(bool Value)
```

GetbRunPhysicsWithNoController

### bool GetbRunPhysicsWithNoController

```
bool GetbRunPhysicsWithNoController()const SetbRunPhysicsWithNoController
```

void SetbRunPhysicsWithNoController(

### bool 	Value

```
bool 	Value 	)
```

GetbForceNextFloorCheck

### bool GetbForceNextFloorCheck

```
bool GetbForceNextFloorCheck()const SetbForceNextFloorCheck
```

void SetbForceNextFloorCheck(

### bool 	Value

```
bool 	Value 	)
```

GetbCanWalkOffLedges

### bool GetbCanWalkOffLedges

```
bool GetbCanWalkOffLedges()const SetbCanWalkOffLedges
```

void SetbCanWalkOffLedges(

### bool 	Value

```
bool 	Value 	)
```

GetbCanWalkOffLedgesWhenCrouching

### bool GetbCanWalkOffLedgesWhenCrouching

```
bool GetbCanWalkOffLedgesWhenCrouching()const SetbCanWalkOffLedgesWhenCrouching
```

void SetbCanWalkOffLedgesWhenCrouching(

### bool 	Value

```
bool 	Value 	)
```

SetbNetworkSkipProxyPredictionOnNetUpdate

### void SetbNetworkSkipProxyPredictionOnNetUpdate

```
void SetbNetworkSkipProxyPredictionOnNetUpdate(bool Value)
```

SetbNetworkAlwaysReplicateTransformUpdateTimestamp

### void SetbNetworkAlwaysReplicateTransformUpdateTimestamp

```
void SetbNetworkAlwaysReplicateTransformUpdateTimestamp(bool Value)
```

GetbEnablePhysicsInteraction

### bool GetbEnablePhysicsInteraction

```
bool GetbEnablePhysicsInteraction()const SetbEnablePhysicsInteraction
```

void SetbEnablePhysicsInteraction(

### bool 	Value

```
bool 	Value 	)
```

GetbTouchForceScaledToMass

### bool GetbTouchForceScaledToMass

```
bool GetbTouchForceScaledToMass()const SetbTouchForceScaledToMass
```

void SetbTouchForceScaledToMass(

### bool 	Value

```
bool 	Value 	)
```

GetbPushForceScaledToMass

### bool GetbPushForceScaledToMass

```
bool GetbPushForceScaledToMass()const SetbPushForceScaledToMass
```

void SetbPushForceScaledToMass(

### bool 	Value

```
bool 	Value 	)
```

GetbPushForceUsingZOffset

### bool GetbPushForceUsingZOffset

```
bool GetbPushForceUsingZOffset()const SetbPushForceUsingZOffset
```

void SetbPushForceUsingZOffset(

### bool 	Value

```
bool 	Value 	)
```

GetbScalePushForceToVelocity

### bool GetbScalePushForceToVelocity

```
bool GetbScalePushForceToVelocity()const SetbScalePushForceToVelocity
```

void SetbScalePushForceToVelocity(

### bool 	Value

```
bool 	Value 	)
```

GetbMaintainHorizontalGroundVelocity

### bool GetbMaintainHorizontalGroundVelocity

```
bool GetbMaintainHorizontalGroundVelocity()const SetbMaintainHorizontalGroundVelocity
```

void SetbMaintainHorizontalGroundVelocity(

### bool 	Value

```
bool 	Value 	)
```

GetbImpartBaseVelocityX

### bool GetbImpartBaseVelocityX

```
bool GetbImpartBaseVelocityX()const SetbImpartBaseVelocityX
```

void SetbImpartBaseVelocityX(

### bool 	Value

```
bool 	Value 	)
```

GetbImpartBaseVelocityY

### bool GetbImpartBaseVelocityY

```
bool GetbImpartBaseVelocityY()const SetbImpartBaseVelocityY
```

void SetbImpartBaseVelocityY(

### bool 	Value

```
bool 	Value 	)
```

GetbImpartBaseVelocityZ

### bool GetbImpartBaseVelocityZ

```
bool GetbImpartBaseVelocityZ()const SetbImpartBaseVelocityZ
```

void SetbImpartBaseVelocityZ(

### bool 	Value

```
bool 	Value 	)
```

GetbImpartBaseAngularVelocity

### bool GetbImpartBaseAngularVelocity

```
bool GetbImpartBaseAngularVelocity()const SetbImpartBaseAngularVelocity
```

void SetbImpartBaseAngularVelocity(

### bool 	Value

```
bool 	Value 	)
```

GetbJustTeleported

### bool GetbJustTeleported

```
bool GetbJustTeleported()const SetbJustTeleported
```

void SetbJustTeleported(

### bool 	Value

```
bool 	Value 	)
```

GetbIgnoreClientMovementErrorChecksAndCorrection

### bool GetbIgnoreClientMovementErrorChecksAndCorrection

```
bool GetbIgnoreClientMovementErrorChecksAndCorrection()const SetbIgnoreClientMovementErrorChecksAndCorrection
```

void SetbIgnoreClientMovementErrorChecksAndCorrection(

### bool 	Value

```
bool 	Value 	)
```

GetbServerAcceptClientAuthoritativePosition

### bool GetbServerAcceptClientAuthoritativePosition

```
bool GetbServerAcceptClientAuthoritativePosition()const SetbServerAcceptClientAuthoritativePosition
```

void SetbServerAcceptClientAuthoritativePosition(

### bool 	Value

```
bool 	Value 	)
```

GetbNotifyApex

### bool GetbNotifyApex

```
bool GetbNotifyApex()const SetbNotifyApex
```

void SetbNotifyApex(

### bool 	Value

```
bool 	Value 	)
```

GetbWantsToCrouch

### bool GetbWantsToCrouch

```
bool GetbWantsToCrouch()const GetbCrouchMaintainsBaseLocation
```

bool GetbCrouchMaintainsBaseLocation() const

### SetbCrouchMaintainsBaseLocation

```
void SetbCrouchMaintainsBaseLocation(bool Value)
```

GetbIgnoreBaseRotation

### bool GetbIgnoreBaseRotation

```
bool GetbIgnoreBaseRotation()const SetbIgnoreBaseRotation
```

void SetbIgnoreBaseRotation(

### bool 	Value

```
bool 	Value 	)
```

GetbAlwaysCheckFloor

### bool GetbAlwaysCheckFloor

```
bool GetbAlwaysCheckFloor()const SetbAlwaysCheckFloor
```

void SetbAlwaysCheckFloor(

### bool 	Value

```
bool 	Value 	)
```

GetbUseFlatBaseForFloorChecks

### bool GetbUseFlatBaseForFloorChecks

```
bool GetbUseFlatBaseForFloorChecks()const SetbUseFlatBaseForFloorChecks
```

void SetbUseFlatBaseForFloorChecks(

### bool 	Value

```
bool 	Value 	)
```

GetbUseRVOAvoidance

### bool GetbUseRVOAvoidance

```
bool GetbUseRVOAvoidance()const SetbUseRVOAvoidance
```

void SetbUseRVOAvoidance(

### bool 	Value

```
bool 	Value 	)
```

GetbRequestedMoveUseAcceleration

### bool GetbRequestedMoveUseAcceleration

```
bool GetbRequestedMoveUseAcceleration()const SetbRequestedMoveUseAcceleration
```

void SetbRequestedMoveUseAcceleration(

### bool 	Value

```
bool 	Value 	)
```

GetbAllowPhysicsRotationDuringAnimRootMotion

### bool GetbAllowPhysicsRotationDuringAnimRootMotion

```
bool GetbAllowPhysicsRotationDuringAnimRootMotion()const SetbAllowPhysicsRotationDuringAnimRootMotion
```

void SetbAllowPhysicsRotationDuringAnimRootMotion(

### bool 	Value

```
bool 	Value 	)
```

GetbProjectNavMeshWalking

### bool GetbProjectNavMeshWalking

```
bool GetbProjectNavMeshWalking()const SetbProjectNavMeshWalking
```

void SetbProjectNavMeshWalking(

### bool 	Value

```
bool 	Value 	)
```

GetbProjectNavMeshOnBothWorldChannels

### bool GetbProjectNavMeshOnBothWorldChannels

```
bool GetbProjectNavMeshOnBothWorldChannels()const SetbProjectNavMeshOnBothWorldChannels
```

void SetbProjectNavMeshOnBothWorldChannels(

### Value

```
bool Value
```

)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UCharacterMovementComponent UCharacterMovementComponent::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UCharacterMovementComponent UCharacterMovementComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UCharacterMovementComponent UCharacterMovementComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UCharacterMovementComponent::StaticClass()
```
