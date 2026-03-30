# UPhysicsSettingsCore

**Visibility:** public

## Inheritance

UDeveloperSettings → UPhysicsSettingsCore → UPhysicsSettings

## Description

Default physics settings.

## CHAOSPHYSICS

### SolverOptions

```
FChaosSolverConfiguration SolverOptions
```

Options to apply to Chaos solvers on creation

---

## CONSTANTS

### DefaultFluidFriction

```
float32 DefaultFluidFriction
```

Default fluid friction for Physics Volumes.

### SimulateScratchMemorySize

```
int SimulateScratchMemorySize
```

Amount of memory to reserve for PhysX simulate(), this is per pxscene and will be rounded up to the next 16K boundary

### RagdollAggregateThreshold

```
int RagdollAggregateThreshold
```

Threshold for ragdoll bodies above which they will be added to an aggregate before being added to the scene

### DefaultGravityZ

```
float32 DefaultGravityZ
```

Default gravity.

### DefaultTerminalVelocity

```
float32 DefaultTerminalVelocity
```

Default terminal velocity for Physics Volumes.

### TriangleMeshTriangleMinAreaThreshold

```
float32 TriangleMeshTriangleMinAreaThreshold
```

Triangles from triangle meshes (BSP) with an area less than or equal to this value will be removed from physics collision data. Set to less than 0 to disable.

---

## SIMULATION

### bEnableStabilization

```
bool bEnableStabilization
```

Enables stabilization of contacts for slow moving bodies. This will help improve the stability of stacking.

### bWarnMissingLocks

```
bool bWarnMissingLocks
```

Whether to warn when physics locks are used incorrectly. Turning this off is not recommended and should only be used by very advanced users.

### bEnableShapeSharing

```
bool bEnableShapeSharing
```

Enables shape sharing between sync and async scene for static rigid actors

### bEnablePCM

```
bool bEnablePCM
```

Enables persistent contact manifolds. This will generate fewer contact points, but with more accuracy. Reduces stability of stacking, but can help energy conservation.

### bEnable2DPhysics

```
bool bEnable2DPhysics
```

Can 2D physics be used (Box2D)?

### FrictionCombineMode

```
EFrictionCombineMode FrictionCombineMode
```

Friction combine mode, controls how friction is computed for multiple materials.

### RestitutionCombineMode

```
EFrictionCombineMode RestitutionCombineMode
```

Restitution combine mode, controls how restitution is computed for multiple materials.

### MaxAngularVelocity

```
float32 MaxAngularVelocity
```

Max angular velocity that a simulated object can achieve.

### MaxDepenetrationVelocity

```
float32 MaxDepenetrationVelocity
```

Max velocity which may be used to depenetrate simulated physics objects. 0 means no maximum.

### ContactOffsetMultiplier

```
float32 ContactOffsetMultiplier
```

Contact offset multiplier. When creating a physics shape we look at its bounding volume and multiply its minimum value by this multiplier. A bigger number will generate contact points earlier which results in higher stability at the cost of performance.

### MinContactOffset

```
float32 MinContactOffset
```

Min Contact offset.

### MaxContactOffset

```
float32 MaxContactOffset
```

Max Contact offset.

### bSimulateSkeletalMeshOnDedicatedServer

```
bool bSimulateSkeletalMeshOnDedicatedServer
```

If true, simulate physics for this component on a dedicated server.  This should be set if simulating physics and replicating with a dedicated server.

### DefaultShapeComplexity

```
ECollisionTraceFlag DefaultShapeComplexity
```

Determines the default physics shape complexity.

### BounceThresholdVelocity

```
float32 BounceThresholdVelocity
```

Minimum relative velocity required for an object to bounce. A typical value for simulation stability is about 0.2 * gravity

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPhysicsSettingsCore::StaticClass()
```
