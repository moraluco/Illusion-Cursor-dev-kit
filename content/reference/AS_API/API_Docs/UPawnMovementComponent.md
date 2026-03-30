# UPawnMovementComponent

**Visibility:** public

## Inheritance

UNavMovementComponent → UPawnMovementComponent → UCharacterMovementComponent → UFloatingPawnMovement

## Description

PawnMovementComponent can be used to update movement for an associated Pawn.  It also provides ways to accumulate and read directional input in a generic way (with AddInputVector(), ConsumeInputVector(), etc).  @see APawn

## PAWN \| COMPONENTS \| PAWNMOVEMENT

### PendingInputVector

```
const FVector PendingInputVector
```

Return the pending input vector in world space. This is the most up-to-date value of the input vector, pending ConsumeMovementInputVector() which clears it.  PawnMovementComponents implementing movement usually want to use either this or ConsumeInputVector() as these functions represent the most recent state of input.

### LastInputVector

```
const FVector LastInputVector
```

Return the last input vector in world space that was processed by ConsumeInputVector(), which is usually done by the Pawn or PawnMovementComponent.  Any user that needs to know about the input that last affected movement should use this function.

---

## VARIABLES

### PawnOwner

```
const APawn PawnOwner
```

Pawn that owns this component.

---

## PAWN \| COMPONENTS \| PAWNMOVEMENT

### IsMoveInputIgnored

```
bool IsMoveInputIgnored()const
```

Helper to see if move input is ignored. If there is no Pawn or UpdatedComponent, returns true, otherwise defers to the Pawn's implementation of IsMoveInputIgnored().

### ConsumeInputVector

```
FVector ConsumeInputVector()
```

Returns the pending input vector and resets it to zero.  * This should be used during a movement update (by the Pawn or PawnMovementComponent) to prevent accumulation of control input between frames.  * Copies the pending input vector to the saved input vector (GetLastMovementInputVector()).  *

**Returns**

The pending input vector.

GetLastInputVector
FVector GetLastInputVector() const

Return the last input vector in world space that was processed by ConsumeInputVector(), which is usually done by the Pawn or PawnMovementComponent.  Any user that needs to know about the input that last affected movement should use this function.

**Returns**

The last input vector in world space that was processed by ConsumeInputVector().

GetPawnOwner
APawn GetPawnOwner() const

Return the Pawn that owns UpdatedComponent.

GetPendingInputVector
FVector GetPendingInputVector() const

Return the pending input vector in world space. This is the most up-to-date value of the input vector, pending ConsumeMovementInputVector() which clears it.  PawnMovementComponents implementing movement usually want to use either this or ConsumeInputVector() as these functions represent the most recent state of input.

**Returns**

The pending input vector in world space.

AddInputVector
void AddInputVector(
FVector 	WorldVector,
bool 	bForce	 = 	false
	)

Adds the given vector to the accumulated input in world space. Input vectors are usually between 0 and 1 in magnitude.  They are accumulated during a frame then applied as acceleration during the movement update.

**Parameters**

bForce
bool

If true always add the input, ignoring the result of IsMoveInputIgnored().

STATIC FUNCTIONS
Get
static UPawnMovementComponent UPawnMovementComponent::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UPawnMovementComponent UPawnMovementComponent::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UPawnMovementComponent UPawnMovementComponent::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UPawnMovementComponent::StaticClass()
