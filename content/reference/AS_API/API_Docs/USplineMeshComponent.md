# USplineMeshComponent

**Visibility:** public

## Inheritance

UStaticMeshComponent → USplineMeshComponent

## Description

A Spline Mesh Component is a derivation of a Static Mesh Component which can be deformed using a spline. Only a start and end position (and tangent) can be specified.  @see https://​docs​.unrealengine​.com​/latest​/INT​/Resources​/ContentExamples​/Blueprint_Splines

## SPLINEMESH

### EndScale

```
const FVector2D EndScale
```

Get the end scaling

### SplineBoundaryMin

```
float32 SplineBoundaryMin
```

Minimum coordinate along the spline forward axis which corresponds to start of spline. If set to 0.0, will use bounding box to determine bounds

### SplineBoundaryMax

```
float32 SplineBoundaryMax
```

Maximum coordinate along the spline forward axis which corresponds to end of spline. If set to 0.0, will use bounding box to determine bounds

BoundaryMax

### BoundaryMax

```
const float32 BoundaryMax
```

Get the boundary max

BoundaryMin

### BoundaryMin

```
const float32 BoundaryMin
```

Get the boundary min

### EndOffset

```
const FVector2D EndOffset
```

Get the end offset

### EndPosition

```
const FVector EndPosition
```

Get the end position of spline in local space

EndRoll

### EndRoll

```
const float32 EndRoll
```

Get the end roll

### SplineParams

```
FSplineMeshParams SplineParams
```

Spline that is used to deform mesh

### EndTangent

```
const FVector EndTangent
```

Get the end tangent vector of spline in local space

### ForwardAxis

```
const ESplineMeshAxis ForwardAxis
```

Chooses the forward axis for the spline mesh orientation

### SplineUpDir

```
const FVector SplineUpDir
```

Axis (in component space) that is used to determine X axis for co-ordinates along spline

### StartOffset

```
const FVector2D StartOffset
```

Get the start offset

### StartPosition

```
const FVector StartPosition
```

Get the start position of spline in local space

StartRoll

### StartRoll

```
const float32 StartRoll
```

Get the start roll

### StartScale

```
const FVector2D StartScale
```

Get the start scaling

### StartTangent

```
const FVector StartTangent
```

Get the start tangent vector of spline in local space

---

## SPLINEMESH

### SetEndRoll

```
void SetEndRoll(float32 EndRoll, bool bUpdateMesh = true)
```

Set the end roll

### GetBoundaryMin

```
float32 GetBoundaryMin()const
```

Get the boundary min

### GetEndOffset

```
FVector2D GetEndOffset()const
```

Get the end offset

### GetEndPosition

```
FVector GetEndPosition()const
```

Get the end position of spline in local space

### GetEndRoll

```
float32 GetEndRoll()const
```

Get the end roll

### GetEndScale

```
FVector2D GetEndScale()const
```

Get the end scaling

### GetEndTangent

```
FVector GetEndTangent()const
```

Get the end tangent vector of spline in local space

### GetForwardAxis

```
ESplineMeshAxis GetForwardAxis()const
```

Get the forward axis

### GetSplineUpDir

```
FVector GetSplineUpDir()const
```

Get the spline up direction

### GetStartOffset

```
FVector2D GetStartOffset()const
```

Get the start offset

### GetStartPosition

```
FVector GetStartPosition()const
```

Get the start position of spline in local space

### GetStartRoll

```
float32 GetStartRoll()const
```

Get the start roll

### GetStartScale

```
FVector2D GetStartScale()const
```

Get the start scaling

### GetStartTangent

```
FVector GetStartTangent()const
```

Get the start tangent vector of spline in local space

### SetBoundaryMax

```
void SetBoundaryMax(float32 InBoundaryMax, bool bUpdateMesh = true)
```

Set the boundary max

### SetBoundaryMin

```
void SetBoundaryMin(float32 InBoundaryMin, bool bUpdateMesh = true)
```

Set the boundary min

### SetEndOffset

```
void SetEndOffset(FVector2D EndOffset, bool bUpdateMesh = true)
```

Set the end offset

### SetEndPosition

```
void SetEndPosition(FVector EndPos, bool bUpdateMesh = true)
```

Set the end position of spline in local space

### GetBoundaryMax

```
float32 GetBoundaryMax()const
```

Get the boundary max

### SetEndScale

```
void SetEndScale(FVector2D EndScale = FVector2D(1.000000, 1.000000),
```

bool 	bUpdateMesh	 = 	true

### )

```
)
```

Set the end scaling

### SetEndTangent

```
void SetEndTangent(FVector EndTangent, bool bUpdateMesh = true)
```

Set the end tangent vector of spline in local space

### SetForwardAxis

```
void SetForwardAxis(ESplineMeshAxis InForwardAxis, bool bUpdateMesh = true)
```

Set the forward axis

### SetSplineUpDir

```
void SetSplineUpDir(FVector InSplineUpDir, bool bUpdateMesh = true)
```

Set the spline up direction

### SetStartAndEnd

```
void SetStartAndEnd(FVector StartPos, FVector StartTangent, FVector EndPos, FVector EndTangent, bool bUpdateMesh = true)
```

Set the start and end, position and tangent, all in local space

### SetStartOffset

```
void SetStartOffset(FVector2D StartOffset, bool bUpdateMesh = true)
```

Set the start offset

### SetStartPosition

```
void SetStartPosition(FVector StartPos, bool bUpdateMesh = true)
```

Set the start position of spline in local space

### SetStartRoll

```
void SetStartRoll(float32 StartRoll, bool bUpdateMesh = true)
```

Set the start roll

### SetStartScale

```
void SetStartScale(FVector2D StartScale = FVector2D(1.000000, 1.000000),
```

bool 	bUpdateMesh	 = 	true

### )

```
)
```

Set the start scaling

### SetStartTangent

```
void SetStartTangent(FVector StartTangent, bool bUpdateMesh = true)
```

Set the start tangent vector of spline in local space

### UpdateMesh

```
void UpdateMesh()
```

Update the collision and render state on the spline mesh following changes to its geometry

---

## FUNCTIONS

### SetbSmoothInterpRollScale

```
void SetbSmoothInterpRollScale(bool Value)
```

SetbAllowSplineEditingPerInstance

### void SetbAllowSplineEditingPerInstance

```
void SetbAllowSplineEditingPerInstance(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static USplineMeshComponent USplineMeshComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USplineMeshComponent USplineMeshComponent::GetOrCreate

```
static USplineMeshComponent USplineMeshComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USplineMeshComponent USplineMeshComponent::Create

```
static USplineMeshComponent USplineMeshComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USplineMeshComponent::StaticClass

```
static UClass USplineMeshComponent::StaticClass()
```
