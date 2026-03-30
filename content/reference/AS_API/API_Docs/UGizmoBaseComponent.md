# UGizmoBaseComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UGizmoBaseComponent → UGizmoArrowComponent → UGizmoBoxComponent → UGizmoCircleComponent → UGizmoLineHandleComponent → UGizmoRectangleComponent

## Description

Base class for simple Components intended to be used as part of 3D Gizmos.  Contains common properties and utility functions.  This class does nothing by itself, use subclasses like UGizmoCircleComponent

## OPTIONS

### HoverSizeMultiplier

```
float32 HoverSizeMultiplier
```
### PixelHitDistanceThreshold

```
float32 PixelHitDistanceThreshold
```
### Color

```
FLinearColor Color STATIC FUNCTIONS Get static UGizmoBaseComponent UGizmoBaseComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UGizmoBaseComponent UGizmoBaseComponent::GetOrCreate

```
static UGizmoBaseComponent UGizmoBaseComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UGizmoBaseComponent UGizmoBaseComponent::Create

```
static UGizmoBaseComponent UGizmoBaseComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UGizmoBaseComponent::StaticClass

```
static UClass UGizmoBaseComponent::StaticClass()
```
