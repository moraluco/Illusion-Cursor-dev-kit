# UBoxComponent

**Visibility:** public

## Inheritance

UShapeComponent → UBoxComponent

## Description

A box generally used for simple collision. Bounds are rendered as lines in the editor.

## COMPONENTS \| BOX

### ScaledBoxExtent

```
const FVector ScaledBoxExtent UnscaledBoxExtent const FVector UnscaledBoxExtent SHAPE BoxExtent const FVector BoxExtent
```

The extents (radii dimensions) of the box

### LineThickness

```
float32 LineThickness
```

Used to control the line thickness when rendering

---

## COMPONENTS \| BOX

### GetUnscaledBoxExtent

```
FVector GetUnscaledBoxExtent()const
```

**Returns**

the box extent, ignoring component scale.

SetBoxExtent
void SetBoxExtent(
FVector 	InBoxExtent,
bool 	bUpdateOverlaps	 = 	true
	)

Change the box extent size. This is the unscaled size, before component scale is applied.

GetScaledBoxExtent
FVector GetScaledBoxExtent() const

**Returns**

the box extent, scaled by the component scale.

---

## FUNCTIONS

### GetBoxExtent

```
const FVector& GetBoxExtent()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UBoxComponent UBoxComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UBoxComponent UBoxComponent::GetOrCreate

```
static UBoxComponent UBoxComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UBoxComponent UBoxComponent::Create

```
static UBoxComponent UBoxComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UBoxComponent::StaticClass

```
static UClass UBoxComponent::StaticClass()
```
