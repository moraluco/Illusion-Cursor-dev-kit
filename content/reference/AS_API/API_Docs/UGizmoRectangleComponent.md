# UGizmoRectangleComponent

**Visibility:** public

## Inheritance

UGizmoBaseComponent → UGizmoRectangleComponent

## Description

Simple Component intended to be used as part of 3D Gizmos.  Draws outline of 3D rectangle based on parameters.

## OPTIONS

### OffsetY

```
float32 OffsetY
```
### DirectionY

```
FVector DirectionY
```
### bOrientYAccordingToCamera

```
bool bOrientYAccordingToCamera
```

When true, instead of using the provided DirectionY, the component will use a direction orthogonal to the camera direction and DirectionX. This keeps the rectangle pinned along DirectionX but spun to be flatter relative the camera.

### OffsetX

```
float32 OffsetX
```
### DirectionX

```
FVector DirectionX
```
### LengthX

```
float32 LengthX
```
### LengthY

```
float32 LengthY
```
### Thickness

```
float32 Thickness
```
### SegmentFlags

```
uint8 SegmentFlags STATIC FUNCTIONS Get static UGizmoRectangleComponent UGizmoRectangleComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UGizmoRectangleComponent UGizmoRectangleComponent::GetOrCreate

```
static UGizmoRectangleComponent UGizmoRectangleComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UGizmoRectangleComponent UGizmoRectangleComponent::Create

```
static UGizmoRectangleComponent UGizmoRectangleComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UGizmoRectangleComponent::StaticClass

```
static UClass UGizmoRectangleComponent::StaticClass()
```
