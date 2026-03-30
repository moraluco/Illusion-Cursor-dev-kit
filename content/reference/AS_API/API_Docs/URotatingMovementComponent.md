# URotatingMovementComponent

**Visibility:** public

## Inheritance

UMovementComponent → URotatingMovementComponent

## Description

Performs continuous rotation of a component at a specific rotation rate.  Rotation can optionally be offset around a pivot point.  Collision testing is not performed during movement.

## ROTATINGCOMPONENT

### PivotTranslation

```
FVector PivotTranslation
```

Translation of pivot point around which we rotate, relative to current rotation.  For instance, with PivotTranslation set to (X=+100, Y=0, Z=0), rotation will occur around the point +100 units along the local X axis from the center of the object, rather than around the object's origin (the default).

### bRotationInLocalSpace

```
bool bRotationInLocalSpace
```

Whether rotation is applied in local or world space.

### RotationRate

```
FRotator RotationRate
```

How fast to update roll/pitch/yaw of the component we update.

---

## FUNCTIONS

### SetbRotationInLocalSpace

```
void SetbRotationInLocalSpace(bool Value)
```

GetbRotationInLocalSpace

### bool GetbRotationInLocalSpace

```
bool GetbRotationInLocalSpace()const STATIC FUNCTIONS
```

Get

### static URotatingMovementComponent URotatingMovementComponent::Get

```
static URotatingMovementComponent URotatingMovementComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static URotatingMovementComponent URotatingMovementComponent::GetOrCreate

```
static URotatingMovementComponent URotatingMovementComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static URotatingMovementComponent URotatingMovementComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass URotatingMovementComponent::StaticClass

```
static UClass URotatingMovementComponent::StaticClass()
```
