# UPointSetComponent

**Visibility:** public

## Inheritance

UMeshComponent → UPointSetComponent

## Description

UPointSetComponent is a Component that draws a set of points, as small squares.  Per-point Color and (view-space) Size is supported. Normals are not supported.

Points are inserted with an externally-defined ID, internally this is done via a TSparseArray. This class allocates a contiguous TArray large enugh to hold the largest ID. Using ReservePoints() may be beneficial for huge arrays.

The points are drawn as two triangles (ie a square) orthogonal to the view direction.  The actual point size is calculated in the shader, and so a custom material must be used.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPointSetComponent UPointSetComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPointSetComponent UPointSetComponent::GetOrCreate

```
static UPointSetComponent UPointSetComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPointSetComponent UPointSetComponent::Create

```
static UPointSetComponent UPointSetComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPointSetComponent::StaticClass

```
static UClass UPointSetComponent::StaticClass()
```
