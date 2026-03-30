# FCollisionShape

## Inheritance

FCollisionShape → VARIABLES → CapsuleAxisHalfLength

## Description

const float32 CapsuleAxisHalfLength Box FVector Box SphereRadius const float32 SphereRadius CapsuleRadius const float32 CapsuleRadius CapsuleHalfHeight const float32 CapsuleHalfHeight Extent const FVector Extent

## FUNCTIONS

### GetSphereRadius

```
float32 GetSphereRadius()const
```

IsBox

### bool IsBox

```
bool IsBox()const IsCapsule
```

bool IsCapsule() const

### IsSphere

```
bool IsSphere()const
```

SetBox

### void SetBox

```
void SetBox(FVector HalfExtent)
```

SetSphere

### void SetSphere

```
void SetSphere(float32 Radius)
```

SetCapsule

### void SetCapsule

```
void SetCapsule(float32 Radius, float32 HalfHeight)
```

SetCapsule

### void SetCapsule

```
void SetCapsule(FVector3f Extent)
```

IsNearlyZero

### bool IsNearlyZero

```
bool IsNearlyZero()const GetExtent
```

FVector GetExtent() const

### GetCapsuleAxisHalfLength

```
float32 GetCapsuleAxisHalfLength()const
```

GetBox

### FVector GetBox

```
FVector GetBox()const IsLine
```

bool IsLine() const

### GetCapsuleRadius

```
float32 GetCapsuleRadius()const
```

GetCapsuleHalfHeight

### float32 GetCapsuleHalfHeight

```
float32 GetCapsuleHalfHeight()const STATIC FUNCTIONS
```

MakeBox

### static FCollisionShape FCollisionShape::MakeBox

```
static FCollisionShape FCollisionShape::MakeBox(FVector BoxHalfExtent)
```

MinSphereRadius

### static float32 FCollisionShape::MinSphereRadius

```
static float32 FCollisionShape::MinSphereRadius()
```

MinCapsuleRadius

### static float32 FCollisionShape::MinCapsuleRadius

```
static float32 FCollisionShape::MinCapsuleRadius()
```

MinCapsuleAxisHalfHeight

### static float32 FCollisionShape::MinCapsuleAxisHalfHeight

```
static float32 FCollisionShape::MinCapsuleAxisHalfHeight()
```

MinBoxExtent

### static float32 FCollisionShape::MinBoxExtent

```
static float32 FCollisionShape::MinBoxExtent()
```

MakeBox

### static FCollisionShape FCollisionShape::MakeBox

```
static FCollisionShape FCollisionShape::MakeBox(FVector3f BoxHalfExtent)
```

MakeSphere

### static FCollisionShape FCollisionShape::MakeSphere

```
static FCollisionShape FCollisionShape::MakeSphere(float32 SphereRadius)
```

MakeCapsule

### static FCollisionShape FCollisionShape::MakeCapsule

```
static FCollisionShape FCollisionShape::MakeCapsule(float32 CapsuleRadius, float32 CapsuleHalfHeight)
```

MakeCapsule

### static FCollisionShape FCollisionShape::MakeCapsule

```
static FCollisionShape FCollisionShape::MakeCapsule(FVector Extent)
```
