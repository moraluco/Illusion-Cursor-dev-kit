# UPhysicsSpringComponent

**Visibility:** public

## Inheritance

USceneComponent → UPhysicsSpringComponent

## Description

Note: this component is still work in progress. Uses raycast springs for simple vehicle forces Used with objects that have physics to create a spring down the X direction ie. point X in the direction you want generate spring.

## PHYSICS

### bIgnoreSelf

```
bool bIgnoreSelf
```

If true, the spring will ignore all components in its own actor

### SpringDamping

```
float32 SpringDamping
```

Specifies how quickly the spring can absorb energy of a body. The higher the damping the less oscillation

### SpringLengthAtRest

```
float32 SpringLengthAtRest
```

Determines how long the spring will be along the X-axis at rest. The spring will apply 0 force on a body when it's at rest.

### SpringRadius

```
float32 SpringRadius
```

Determines the radius of the spring.

### SpringChannel

```
ECollisionChannel SpringChannel
```

Strength of thrust force applied to the base object.

### SpringStiffness

```
float32 SpringStiffness
```

Specifies how much strength the spring has. The higher the SpringStiffness the more force the spring can push on a body with.

### SpringCompression

```
float32 SpringCompression
```

The current compression of the spring. A spring at rest will have SpringCompression 0.

NormalizedCompressionScalar

### NormalizedCompressionScalar

```
const float32 NormalizedCompressionScalar
```

Returns the spring compression as a normalized scalar along spring direction.  0 implies spring is at rest 1 implies fully compressed

### SpringCurrentEndPoint

```
const FVector SpringCurrentEndPoint
```

Returns the spring current end point in world space.

### SpringDirection

```
const FVector SpringDirection
```

Returns the spring direction from start to resting point

### SpringRestingPoint

```
const FVector SpringRestingPoint
```

Returns the spring resting point in world space.

---

## PHYSICS

### GetSpringCurrentEndPoint

```
FVector GetSpringCurrentEndPoint()const
```

Returns the spring current end point in world space.

### GetSpringDirection

```
FVector GetSpringDirection()const
```

Returns the spring direction from start to resting point

### GetSpringRestingPoint

```
FVector GetSpringRestingPoint()const
```

Returns the spring resting point in world space.

### GetNormalizedCompressionScalar

```
float32 GetNormalizedCompressionScalar()const
```

Returns the spring compression as a normalized scalar along spring direction.  0 implies spring is at rest 1 implies fully compressed

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPhysicsSpringComponent UPhysicsSpringComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPhysicsSpringComponent UPhysicsSpringComponent::GetOrCreate

```
static UPhysicsSpringComponent UPhysicsSpringComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPhysicsSpringComponent UPhysicsSpringComponent::Create

```
static UPhysicsSpringComponent UPhysicsSpringComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPhysicsSpringComponent::StaticClass

```
static UClass UPhysicsSpringComponent::StaticClass()
```
