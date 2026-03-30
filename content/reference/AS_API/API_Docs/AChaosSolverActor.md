# AChaosSolverActor

**Visibility:** public

## Inheritance

AActor → AChaosSolverActor → CHAOS → Properties

## Description

FChaosSolverConfiguration Properties

## CHAOSPHYSICS \| DEBUG

### ChaosDebugSubstepControl

```
FChaosDebugSubstepControl ChaosDebugSubstepControl
```

Control to pause/step/substep the solver to the next synchronization point.

---

## SETTINGS

### FloorHeight

```
float32 FloorHeight
```
### bHasFloor

```
bool bHasFloor
```

End deprecated properties

---

## CHAOSPHYSICS

### SetSolverActive

```
void SetSolverActive(bool bActive)
```

Controls whether the solver is able to simulate particles it controls

### SetAsCurrentWorldSolver

```
void SetAsCurrentWorldSolver()
```

Makes this solver the current world solver. Dynamically spawned objects will have their physics state created in this solver.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AChaosSolverActor AChaosSolverActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AChaosSolverActor::StaticClass

```
static UClass AChaosSolverActor::StaticClass()
```
