# UFloatingPawnMovement

**Visibility:** public

## Inheritance

UPawnMovementComponent → UFloatingPawnMovement → USpectatorPawnMovement

## Description

FloatingPawnMovement is a movement component that provides simple movement for any Pawn class.  Limits on speed and acceleration are provided, while gravity is not implemented.

Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()).  During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.

## FLOATINGPAWNMOVEMENT

### Deceleration

```
float32 Deceleration
```

Deceleration applied when there is no input (rate of change of velocity)

### TurningBoost

```
float32 TurningBoost
```

Setting affecting extra force applied when changing direction, making turns have less drift and become more responsive.  Velocity magnitude is not allowed to increase, that only happens due to normal acceleration. It may decrease with large direction changes.  Larger values apply extra force to reach the target direction more quickly, while a zero value disables any extra turn force.

### Acceleration

```
float32 Acceleration
```

Acceleration applied by input (rate of change of velocity)

---

## FUNCTIONS

### SetMaxSpeed

```
void SetMaxSpeed(const float32& Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UFloatingPawnMovement UFloatingPawnMovement::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UFloatingPawnMovement UFloatingPawnMovement::GetOrCreate

```
static UFloatingPawnMovement UFloatingPawnMovement::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UFloatingPawnMovement UFloatingPawnMovement::Create

```
static UFloatingPawnMovement UFloatingPawnMovement::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UFloatingPawnMovement::StaticClass

```
static UClass UFloatingPawnMovement::StaticClass()
```
