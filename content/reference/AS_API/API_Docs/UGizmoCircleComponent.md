# UGizmoCircleComponent

**Visibility:** public

## Inheritance

UGizmoBaseComponent → UGizmoCircleComponent

## Description

Simple Component intended to be used as part of 3D Gizmos.  Draws a 3D circle based on parameters.

## OPTIONS

### Radius

```
float32 Radius
```
### Thickness

```
float32 Thickness
```
### NumSides

```
int NumSides
```
### bViewAligned

```
bool bViewAligned bDrawFullCircle bool bDrawFullCircle bOnlyAllowFrontFacingHits bool bOnlyAllowFrontFacingHits
```

If the circle was on a 3D sphere, then only the 'front' part of the circle can be hit, (in other words, if the ray would hit the sphere first, ignore the hit).  Dynamically disabled if the circle is parallel to the view plane (ie "fully visible")

### Normal

```
FVector Normal STATIC FUNCTIONS Get static UGizmoCircleComponent UGizmoCircleComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UGizmoCircleComponent UGizmoCircleComponent::GetOrCreate

```
static UGizmoCircleComponent UGizmoCircleComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UGizmoCircleComponent UGizmoCircleComponent::Create

```
static UGizmoCircleComponent UGizmoCircleComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UGizmoCircleComponent::StaticClass

```
static UClass UGizmoCircleComponent::StaticClass()
```
