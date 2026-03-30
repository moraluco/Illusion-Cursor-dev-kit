# UShapeComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UShapeComponent → UBoxComponent → UCapsuleComponent → USphereComponent

## Description

ShapeComponent is a PrimitiveComponent that is represented by a simple geometrical shape (sphere, capsule, box, etc).

## NAVIGATION

### AreaClass

```
TSubclassOf<UNavAreaBase> AreaClass
```

Navigation area type (empty = default obstacle)

---

## SHAPE

### ShapeColor

```
FColor ShapeColor
```

Color used to draw the shape.

---

## FUNCTIONS

### SetbDynamicObstacle

```
void SetbDynamicObstacle(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UShapeComponent UShapeComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UShapeComponent UShapeComponent::GetOrCreate

```
static UShapeComponent UShapeComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UShapeComponent UShapeComponent::Create

```
static UShapeComponent UShapeComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UShapeComponent::StaticClass

```
static UClass UShapeComponent::StaticClass()
```
