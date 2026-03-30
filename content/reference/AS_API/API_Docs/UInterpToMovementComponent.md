# UInterpToMovementComponent

**Visibility:** public

## Inheritance

UMovementComponent → UInterpToMovementComponent

## Description

Move the root component between a series of points over a given time *

### See also

- UMovementComponent

## BEHAVIOUR

### bSweep

```
bool bSweep
```

If true, will sweep for blocking collision during movement. If false, it will simply teleport to the next position and ignore collision.

### TeleportType

```
ETeleportType TeleportType
```

Physics teleport type.

### BehaviourType

```
EInterpToBehaviourType BehaviourType
```

Movement behaviour of the component

### bCheckIfStillInWorld

```
bool bCheckIfStillInWorld
```

Do we want this comp to perform CheckStillInWorld checks?

### bPauseOnImpact

```
bool bPauseOnImpact
```

If true, will pause movement on impact. If false it will behave as if the end of the movement range was reached based on the BehaviourType.

---

## CONTROL

### Duration

```
float32 Duration
```

How long to take to move from the first point to the last (or vice versa)

### ControlPoints

```
TArray<FInterpControlPoint> ControlPoints
```

List of control points to visit.

---

## SIMULATION

### MaxSimulationIterations

```
int MaxSimulationIterations
```

Max number of iterations used for each discrete simulation step.  Increasing this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance.

### WARNING: if

```
WARNING: if(MaxSimulationTimeStep * MaxSimulationIterations)is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation. @see MaxSimulationTimeStep, bForceSubStepping
```

MaxSimulationTimeStep

### float32 MaxSimulationTimeStep

```
float32 MaxSimulationTimeStep
```

Max time delta for each discrete simulation step.  Lowering this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance.

### WARNING: if

```
WARNING: if(MaxSimulationTimeStep * MaxSimulationIterations)is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation. @see MaxSimulationIterations, bForceSubStepping
```

bForceSubStepping

### bool bForceSubStepping

```
bool bForceSubStepping
```

If true, forces sub-stepping to break up movement into discrete smaller steps to improve accuracy of the trajectory.  Objects that move in a straight line typically do not need to set this, as movement always uses continuous collision detection (sweeps) so collision is not missed.  Sub-stepping is automatically enabled when under the effects of gravity or when homing towards a target.  @see MaxSimulationTimeStep, MaxSimulationIterations

---

## VARIABLES

### OnResetDelegate

```
FOnInterpToResetDelegate__InterpToMovementComponent OnResetDelegate
```

Called when InterpTo reached the end and reset back to start

### OnWaitEndDelegate

```
FOnInterpToWaitEndDelegate__InterpToMovementComponent OnWaitEndDelegate
```

Called when InterpTo has resumed following a stop.

### OnInterpToReverse

```
FOnInterpToReverseDelegate__InterpToMovementComponent OnInterpToReverse
```

Called when InterpTo impacts something and reverse is enabled.

### OnInterpToStop

```
FOnInterpToStopDelegate__InterpToMovementComponent OnInterpToStop
```

Called when InterpTo has come to a stop.

### OnWaitBeginDelegate

```
FOnInterpToWaitBeginDelegate__InterpToMovementComponent OnWaitBeginDelegate
```

Called when InterpTo has come to a stop but will resume when possible.

---

## CONTROL

### FinaliseControlPoints

```
void FinaliseControlPoints()
```

Initialise the control points array. Call after adding control points if they are add after begin play

### ResetControlPoints

```
void ResetControlPoints()
```

Clear the control points array and set to stopped.

### RestartMovement

```
void RestartMovement(float32 InitialDirection = 1.000000)
```

Reset to start. Sets time to zero and direction to 1.

### AddControlPointPosition

```
void AddControlPointPosition(FVector Pos, bool bPositionIsRelative = true)
```

Add a control point that represents a position.

---

## GAME \| COMPONENTS \| INTERPTOMOVEMENT

### StopSimulating

```
void StopSimulating(FHitResult HitResult)
```

Clears the reference to UpdatedComponent, fires stop event, and stops ticking.

---

## FUNCTIONS

### GetbPauseOnImpact

```
bool GetbPauseOnImpact()const
```

SetbPauseOnImpact

### void SetbPauseOnImpact

```
void SetbPauseOnImpact(bool Value)
```

GetbForceSubStepping

### bool GetbForceSubStepping

```
bool GetbForceSubStepping()const SetbForceSubStepping
```

void SetbForceSubStepping(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UInterpToMovementComponent UInterpToMovementComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UInterpToMovementComponent UInterpToMovementComponent::GetOrCreate

```
static UInterpToMovementComponent UInterpToMovementComponent::GetOrCreate(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UInterpToMovementComponent UInterpToMovementComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UInterpToMovementComponent::StaticClass()
```
