# UPhysicsHandleComponent

**Visibility:** public

## Inheritance

UActorComponent → UPhysicsHandleComponent

## Description

Utility object for moving physics objects around.

## PHYSICSHANDLE

### LinearDamping

```
float32 LinearDamping
```

Linear damping of the handle spring.

### bSoftAngularConstraint

```
bool bSoftAngularConstraint
```
### bSoftLinearConstraint

```
bool bSoftLinearConstraint
```
### bInterpolateTarget

```
bool bInterpolateTarget
```
### LinearStiffness

```
float32 LinearStiffness
```

Linear stiffness of the handle spring

### AngularDamping

```
float32 AngularDamping
```

Angular damping of the handle spring

### AngularStiffness

```
float32 AngularStiffness
```

Angular stiffness of the handle spring

### InterpolationSpeed

```
float32 InterpolationSpeed
```

How quickly we interpolate the physics target transform

---

## VARIABLES

### GrabbedComponent

```
const UPrimitiveComponent GrabbedComponent
```

Component we are currently holding

---

## PHYSICS \| COMPONENTS \| PHYSICSHANDLE

### SetInterpolationSpeed

```
void SetInterpolationSpeed(float32 NewInterpolationSpeed)
```

Set interpolation speed

### GetTargetLocationAndRotation

```
void GetTargetLocationAndRotation(FVector& TargetLocation, FRotator& TargetRotation)const
```

Get the current location and rotation

### GrabComponentAtLocation

```
void GrabComponentAtLocation(UPrimitiveComponent Component, FName InBoneName, FVector GrabLocation)
```

Grab the specified component at a given location. Does NOT constraint rotation which means the handle will pivot about GrabLocation.

### GrabComponentAtLocationWithRotation

```
void GrabComponentAtLocationWithRotation(UPrimitiveComponent Component, FName InBoneName, FVector Location, FRotator Rotation)
```

Grab the specified component at a given location and rotation. Constrains rotation.

### ReleaseComponent

```
void ReleaseComponent()
```

Release the currently held component

### SetAngularDamping

```
void SetAngularDamping(float32 NewAngularDamping)
```

Set angular damping

### SetAngularStiffness

```
void SetAngularStiffness(float32 NewAngularStiffness)
```

Set angular stiffness

### GetGrabbedComponent

```
UPrimitiveComponent GetGrabbedComponent()const
```

Returns the currently grabbed component, or null if nothing is grabbed.

### SetLinearDamping

```
void SetLinearDamping(float32 NewLinearDamping)
```

Set linear damping

### SetLinearStiffness

```
void SetLinearStiffness(float32 NewLinearStiffness)
```

Set linear stiffness

### SetTargetLocation

```
void SetTargetLocation(FVector NewLocation)
```

Set the target location

### SetTargetLocationAndRotation

```
void SetTargetLocationAndRotation(FVector NewLocation, FRotator NewRotation)
```

Set target location and rotation

### SetTargetRotation

```
void SetTargetRotation(FRotator NewRotation)
```

Set the target rotation

---

## FUNCTIONS

### GetbSoftAngularConstraint

```
bool GetbSoftAngularConstraint()const
```

SetbSoftAngularConstraint

### void SetbSoftAngularConstraint

```
void SetbSoftAngularConstraint(bool Value)
```

GetbSoftLinearConstraint

### bool GetbSoftLinearConstraint

```
bool GetbSoftLinearConstraint()const SetbSoftLinearConstraint
```

void SetbSoftLinearConstraint(

### bool 	Value

```
bool 	Value 	)
```

GetbInterpolateTarget

### bool GetbInterpolateTarget

```
bool GetbInterpolateTarget()const SetbInterpolateTarget
```

void SetbInterpolateTarget(

### bool 	Value

```
bool 	Value 	)
```

GetLinearDamping

### const float32& GetLinearDamping

```
const float32& GetLinearDamping()const GetLinearStiffness
```

const float32& GetLinearStiffness() const

### GetAngularDamping

```
const float32& GetAngularDamping()const
```

GetAngularStiffness

### const float32& GetAngularStiffness

```
const float32& GetAngularStiffness()const GetInterpolationSpeed
```

const float32& GetInterpolationSpeed() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPhysicsHandleComponent UPhysicsHandleComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPhysicsHandleComponent UPhysicsHandleComponent::GetOrCreate

```
static UPhysicsHandleComponent UPhysicsHandleComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UPhysicsHandleComponent UPhysicsHandleComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPhysicsHandleComponent::StaticClass

```
static UClass UPhysicsHandleComponent::StaticClass()
```
