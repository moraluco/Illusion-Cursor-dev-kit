# USphereComponent

**Visibility:** public

## Inheritance

UShapeComponent → USphereComponent → UDrawSphereComponent

## Description

A sphere generally used for simple collision. Bounds are rendered as lines in the editor.

## COMPONENTS \| SPHERE

ShapeScale

### ShapeScale

```
const float32 ShapeScale
```

Get the scale used by this shape. This is a uniform scale that is the minimum of any non-uniform scaling.

UnscaledSphereRadius

### UnscaledSphereRadius

```
const float32 UnscaledSphereRadius
```

ScaledSphereRadius const float32 ScaledSphereRadius

---

## SHAPE

### SphereRadius

```
const float32 SphereRadius
```

The radius of the sphere

---

## COMPONENTS \| SPHERE

### GetShapeScale

```
float32 GetShapeScale()const
```

Get the scale used by this shape. This is a uniform scale that is the minimum of any non-uniform scaling.

**Returns**

the scale used by this shape.

GetUnscaledSphereRadius
float32 GetUnscaledSphereRadius() const

**Returns**

the radius of the sphere, ignoring component scale.

SetSphereRadius
void SetSphereRadius(
float32 	InSphereRadius,
bool 	bUpdateOverlaps	 = 	true
	)

Change the sphere radius. This is the unscaled radius, before component scale is applied.

GetScaledSphereRadius
float32 GetScaledSphereRadius() const

**Returns**

the radius of the sphere, with component scale applied.

---

## FUNCTIONS

### GetSphereRadius

```
const float32& GetSphereRadius()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static USphereComponent USphereComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USphereComponent USphereComponent::GetOrCreate

```
static USphereComponent USphereComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USphereComponent USphereComponent::Create

```
static USphereComponent USphereComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USphereComponent::StaticClass

```
static UClass USphereComponent::StaticClass()
```
