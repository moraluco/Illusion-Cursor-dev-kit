# ADefaultPawn

**Visibility:** public

## Inheritance

APawn → ADefaultPawn → ASpectatorPawn

## Description

DefaultPawn implements a simple Pawn with spherical collision and built-in flying movement.  @see UFloatingPawnMovement

## PAWN

### BaseLookUpRate

```
float32 BaseLookUpRate
```

Base lookup rate, in deg/sec. Other scaling may affect final lookup rate.

### CollisionComponent

```
USphereComponent CollisionComponent
```

DefaultPawn collision component

### MeshComponent

```
UStaticMeshComponent MeshComponent
```

The mesh associated with this Pawn.

### bAddDefaultMovementBindings

```
bool bAddDefaultMovementBindings
```

If true, adds default input bindings for movement and camera look.

### BaseTurnRate

```
float32 BaseTurnRate
```

Base turn rate, in deg/sec. Other scaling may affect final turn rate.

---

## PAWN

### MoveForward

```
void MoveForward(float32 Val)
```

Input callback to move forward in local space (or backward if Val is negative).

**Parameters**

Val
float32

Amount of movement in the forward direction (or backward if negative).

MoveRight
void MoveRight(
float32 	Val
	)

Input callback to strafe right in local space (or left if Val is negative).

**Parameters**

Val
float32

Amount of movement in the right direction (or left if negative).

MoveUp_World
void MoveUp_World(
float32 	Val
	)

Input callback to move up in world space (or down if Val is negative).

**Parameters**

Val
float32

Amount of movement in the world up direction (or down if negative).

TurnAtRate
void TurnAtRate(
float32 	Rate
	)

Called via input to turn at a given rate.

**Parameters**

Rate
float32

This is a normalized rate, i.e. 1.0 means 100% of desired turn rate

LookUpAtRate
void LookUpAtRate(
float32 	Rate
	)

Called via input to look up at a given rate (or down if Rate is negative).

**Parameters**

Rate
float32

This is a normalized rate, i.e. 1.0 means 100% of desired turn rate

---

## FUNCTIONS

### SetMovementComponent

```
void SetMovementComponent(UPawnMovementComponent Value)
```

GetbAddDefaultMovementBindings

### bool GetbAddDefaultMovementBindings

```
bool GetbAddDefaultMovementBindings()const SetbAddDefaultMovementBindings
```

void SetbAddDefaultMovementBindings(

### Value

```
bool Value
```

)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ADefaultPawn ADefaultPawn::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ADefaultPawn::StaticClass

```
static UClass ADefaultPawn::StaticClass()
```
