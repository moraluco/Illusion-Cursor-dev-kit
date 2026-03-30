# UPhysicsSettings

**Visibility:** public

## Inheritance

UPhysicsSettingsCore → UPhysicsSettings

## Description

Default physics settings.

## BROADPHASE

### DefaultBroadphaseSettings

```
FBroadphaseSettings DefaultBroadphaseSettings
```

If we want to Enable MPB or not globally. This is then overridden by project settings if not enabled.

---

## CHAOSPHYSICS

### MinDeltaVelocityForHitEvents

```
float32 MinDeltaVelocityForHitEvents
```

Minimum velocity delta required on a collinding object for Chaos to send a hit event

### ChaosSettings

```
FChaosPhysicsSettings ChaosSettings
```

Chaos physics engine settings

---

## FRAMERATE

### MaxPhysicsDeltaTime

```
float32 MaxPhysicsDeltaTime
```

Max Physics Delta Time to be clamped.

### bSubsteppingAsync

```
bool bSubsteppingAsync
```

Whether to substep the async physics simulation. This feature is still experimental. Certain functionality might not work correctly

### bTickPhysicsAsync

```
bool bTickPhysicsAsync
```

Whether to tick physics simulation on an async thread. This feature is still experimental. Certain functionality might not work correctly

### MinPhysicsDeltaTime

```
float32 MinPhysicsDeltaTime
```

Min Physics Delta Time; the simulation will not step if the delta time is below this value

### PhysXTreeRebuildRate

```
int PhysXTreeRebuildRate
```

The number of frames it takes to rebuild the PhysX scene query AABB tree. The bigger the number, the smaller fetchResults takes per frame, but the more the tree deteriorates until a new tree is built

### InitialAverageFrameRate

```
float32 InitialAverageFrameRate
```

Physics delta time initial average.

### AnimPhysicsMinDeltaTime

```
float32 AnimPhysicsMinDeltaTime
```

Min Delta Time below which anim dynamics and rigidbody nodes will not simulate.

### SyncSceneSmoothingFactor

```
float32 SyncSceneSmoothingFactor
```

Physics delta time smoothing factor for sync scene.

### MaxSubstepDeltaTime

```
float32 MaxSubstepDeltaTime
```

Max delta time (in seconds) for an individual simulation substep.

### MaxSubsteps

```
int MaxSubsteps
```

Max number of substeps for physics simulation.

### bSubstepping

```
bool bSubstepping
```

Whether to substep the physics simulation. This feature is still experimental. Certain functionality might not work correctly

### AsyncFixedTimeStepSize

```
float32 AsyncFixedTimeStepSize
```

If using async, the time step size to tick at. This feature is still experimental. Certain functionality might not work correctly

---

## OPTIMIZATION

### bDisableKinematicKinematicPairs

```
bool bDisableKinematicKinematicPairs
```

Whether to disable generating KK pairs, enabling this speeds up contact generation, however it is required when using APEX destruction.

### bDisableActiveActors

```
bool bDisableActiveActors
```

If true, physx will not update unreal with any bodies that have moved during the simulation. This should only be used if you have no physx simulation or you are manually updating the unreal data via polling physx.

### bDisableKinematicStaticPairs

```
bool bDisableKinematicStaticPairs
```

Whether to disable generating KS pairs, enabling this makes switching between dynamic and static slower for actors

### pairs

```
but speeds up contact generation by early rejecting these pairs
```
### bSuppressFaceRemapTable

```
bool bSuppressFaceRemapTable
```

If true, the internal physx face to UE face mapping will not be generated. This is a memory optimization available if you do not rely on face indices returned by scene queries.

### bSupportUVFromHitResults

```
bool bSupportUVFromHitResults
```

If true, store extra information to allow FindCollisionUV to derive UV info from a line trace hit result, using the FindCollisionUV utility

---

## REPLICATION

### PhysicErrorCorrection

```
FRigidBodyErrorCorrection PhysicErrorCorrection
```

Error correction data for replicating simulated physics (rigid bodies)

---

## SIMULATION

### bDisableCCD

```
bool bDisableCCD
```

If true CCD will be ignored. This is an optimization when CCD is never used which removes the need for physx to check it internally.

### bEnableEnhancedDeterminism

```
bool bEnableEnhancedDeterminism
```

If set to true, the scene will use enhanced determinism at the cost of a bit more resources. See eENABLE_ENHANCED_DETERMINISM to learn about the specifics

### DefaultDegreesOfFreedom

```
ESettingsDOF DefaultDegreesOfFreedom
```

Useful for constraining all objects in the world, for example if you are making a 2D game using 3D environments.

### bSimulateAnimPhysicsAfterReset

```
bool bSimulateAnimPhysicsAfterReset
```

Whether to simulate anim physics nodes in the tick where they're reset.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPhysicsSettings::StaticClass()
```
