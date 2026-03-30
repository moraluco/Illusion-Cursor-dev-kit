# UNavMovementComponent

**Visibility:** public

## Inheritance

UMovementComponent → UNavMovementComponent → UPawnMovementComponent

## Description

NavMovementComponent defines base functionality for MovementComponents that move any 'agent' that may be involved in AI pathfinding.

## NAVMOVEMENT

### FixedPathBrakingDistance

```
float32 FixedPathBrakingDistance
```

Braking distance override used with acceleration driven path following (bUseAccelerationForPaths)

### NavAgentProps

```
FNavAgentProperties NavAgentProps
```

Properties that define how the component can move.

---

## AI \| COMPONENTS \| NAVMOVEMENT

### IsFalling

```
bool IsFalling()const
```

Returns true if currently falling (not flying, in a non-fluid volume, and not on the ground)

### IsFlying

```
bool IsFlying()const
```

Returns true if currently flying (moving through a non-fluid volume without resting on the ground)

### IsMovingOnGround

```
bool IsMovingOnGround()const
```

Returns true if currently moving on the ground (e.g. walking or driving)

### IsSwimming

```
bool IsSwimming()const
```

Returns true if currently swimming (moving through a fluid volume)

### IsCrouching

```
bool IsCrouching()const
```

Returns true if currently crouching

---

## COMPONENTS \| MOVEMENT

### StopMovementKeepPathing

```
void StopMovementKeepPathing()
```

Stops movement immediately (reset velocity) but keeps following current path

---

## PAWN \| COMPONENTS \| PAWNMOVEMENT

### StopActiveMovement

```
void StopActiveMovement()
```

Stops applying further movement (usually zeros acceleration).

---

## FUNCTIONS

### SetbUpdateNavAgentWithOwnersCollision

```
void SetbUpdateNavAgentWithOwnersCollision(bool Value)
```

SetbUseAccelerationForPaths

### void SetbUseAccelerationForPaths

```
void SetbUseAccelerationForPaths(bool Value)
```

SetbUseFixedBrakingDistanceForPaths

### void SetbUseFixedBrakingDistanceForPaths

```
void SetbUseFixedBrakingDistanceForPaths(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UNavMovementComponent UNavMovementComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UNavMovementComponent UNavMovementComponent::GetOrCreate

```
static UNavMovementComponent UNavMovementComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UNavMovementComponent UNavMovementComponent::Create

```
static UNavMovementComponent UNavMovementComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UNavMovementComponent::StaticClass

```
static UClass UNavMovementComponent::StaticClass()
```
