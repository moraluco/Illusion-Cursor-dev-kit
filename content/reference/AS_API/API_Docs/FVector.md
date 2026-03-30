# FVector

## Inheritance

FVector → VARIABLES → UnsafeNormal

## Description

const FVector UnsafeNormal AbsMax const float AbsMax Min const float Min AbsMin const float AbsMin Abs const FVector Abs SignVector const FVector SignVector Max const float Max STATIC VARIABLES OneVector static const FVector FVector::OneVector UpVector static const FVector FVector::UpVector ForwardVector static const FVector FVector::ForwardVector RightVector static const FVector FVector::RightVector ZeroVector static const FVector FVector::ZeroVector

## FUNCTIONS

### GetSignVector

```
FVector GetSignVector()const
```

opAdd

### FVector opAdd

```
FVector opAdd(FVector Other)const
```

opSub

### FVector opSub

```
FVector opSub(FVector Other)const
```

opMul

### FVector opMul

```
FVector opMul(FVector Other)const
```

opDiv

### FVector opDiv

```
FVector opDiv(FVector Other)const
```

opMul

### FVector opMul

```
FVector opMul(float Scale)const
```

opDiv

### FVector opDiv

```
FVector opDiv(float Scale)const
```

opAdd

### FVector opAdd

```
FVector opAdd(float Bias)const
```

opSub

### FVector opSub

```
FVector opSub(float Bias)const
```

opNeg

### FVector opNeg

```
FVector opNeg()const opMulAssign
```

FVector opMulAssign(

### float 	Scale

```
float 	Scale 	)
```

opDivAssign

### FVector opDivAssign

```
FVector opDivAssign(float Scale)
```

opMulAssign

### FVector opMulAssign

```
FVector opMulAssign(FVector Other)
```

opDivAssign

### FVector opDivAssign

```
FVector opDivAssign(FVector Other)
```

opAddAssign

### FVector opAddAssign

```
FVector opAddAssign(FVector Other)
```

opSubAssign

### FVector opSubAssign

```
FVector opSubAssign(FVector Other)
```

opIndex

### float& opIndex

```
float& opIndex(int Index)
```

opIndex

### float opIndex

```
float opIndex(int Index)const
```

opEquals

### bool opEquals

```
bool opEquals(FVector Other)const
```

Equals

### bool Equals

```
bool Equals(FVector Other, float Tolerance = KINDA_SMALL_NUMBER)const
```

CrossProduct

### FVector CrossProduct

```
FVector CrossProduct(FVector Other)const
```

DotProduct

### float DotProduct

```
float DotProduct(FVector Other)const
```

AllComponentsEqual

### bool AllComponentsEqual

```
bool AllComponentsEqual(float Tolerance = KINDA_SMALL_NUMBER)const
```

Parallel

### bool Parallel

```
bool Parallel(FVector Normal2, float ParallelCosineThreshold = THRESH_NORMALS_ARE_PARALLEL)const
```

See if two normal vectors are nearly parallel, meaning the angle between them is close to 0 degrees.  *

**Parameters**

ParallelCosineThreshold
float

Normals are parallel if absolute value of dot product (cosine of angle between them) is greater than or equal to this. For example: cos(1.0 degrees).  *

**Returns**

true if vectors are nearly parallel, false otherwise.

Coincident
bool Coincident(
FVector 	Normal2,
float 	ParallelCosineThreshold	 = 	THRESH_NORMALS_ARE_PARALLEL
	) const

See if two normal vectors are coincident (nearly parallel and point in the same direction).  *

**Parameters**

Normal2
FVector

Second normalized vector. *

ParallelCosineThreshold
float

Normals are coincident if dot product (cosine of angle between them) is greater than or equal to this. For example: cos(1.0 degrees). *

**Returns**

true if vectors are coincident (nearly parallel and point in the same direction), false otherwise.

Orthogonal
bool Orthogonal(
FVector 	Normal2,
float 	OrthogonalCosineThreshold	 = 	THRESH_NORMALS_ARE_ORTHOGONAL
	) const

See if two normal vectors are nearly orthogonal (perpendicular), meaning the angle between them is close to 90 degrees.  *

**Parameters**

Normal2
FVector

Second normalized vector. *

OrthogonalCosineThreshold
float

Normals are orthogonal if absolute value of dot product (cosine of angle between them) is less than or equal to this. For example: cos(89.0 degrees). *

**Returns**

true if vectors are orthogonal (perpendicular), false otherwise.

GetMax
float GetMax() const
GetAbsMax
float GetAbsMax() const
GetMin
float GetMin() const
GetAbsMin
float GetAbsMin() const
ComponentMin
FVector ComponentMin(
FVector 	Other
	) const
ComponentMax
FVector ComponentMax(
FVector 	Other
	) const
ComponentClamp
FVector ComponentClamp(
FVector 	Min,
FVector 	Max
	) const
GetAbs
FVector GetAbs() const
Size
float Size() const
SizeSquared
float SizeSquared() const
Size2D
float Size2D() const
SizeSquared2D
float SizeSquared2D() const
Size2D
float Size2D(
FVector 	Up
	) const
SizeSquared2D
float SizeSquared2D(
FVector 	Up
	) const
PointPlaneProject
FVector PointPlaneProject(
FVector 	PlaneBase,
FVector 	PlaneNormal
	) const
IsNearlyZero
bool IsNearlyZero(
float 	Tolerance	 = 	KINDA_SMALL_NUMBER
	) const
IsZero
bool IsZero() const
Normalize
bool Normalize(
float 	Tolerance	 = 	SMALL_NUMBER
	)
IsNormalized
bool IsNormalized() const
ToDirectionAndLength
void ToDirectionAndLength(
FVector& 	OutDir,
float& 	OutLength
	) const
ToDirectionAndLength
void ToDirectionAndLength(
FVector& 	OutDir,
float32& 	OutLength
	) const
opAssign
FVector& opAssign(
FVector 	Other
	)
Projection
FVector Projection() const
GetUnsafeNormal
FVector GetUnsafeNormal() const
GridSnap
FVector GridSnap(
const 	float& 	GridSize
	) const
BoundToCube
FVector BoundToCube(
float 	Radius
	) const
BoundToBox
FVector BoundToBox(
FVector 	Min,
FVector 	Max
	) const
GetClampedToSize
FVector GetClampedToSize(
float 	Min,
float 	Max
	) const
GetClampedToSize2D
FVector GetClampedToSize2D(
float 	Min,
float 	Max
	) const
GetClampedToMaxSize
FVector GetClampedToMaxSize(
float 	Max
	) const
GetClampedToMaxSize2D
FVector GetClampedToMaxSize2D(
float 	Max
	) const
AddBounded
void AddBounded(
FVector 	V,
float 	Radius	 = 	MAX_int16
	) const
Reciprocal
FVector Reciprocal() const
IsUniform
bool IsUniform(
float 	Tolerance	 = 	KINDA_SMALL_NUMBER
	) const
MirrorByVector
FVector MirrorByVector(
FVector 	MirrorNormal
	) const
VectorPlaneProject
FVector VectorPlaneProject(
FVector 	PlaneNormal
	) const
RotateAngleAxis
FVector RotateAngleAxis(
float 	AngleDeg,
FVector 	Axis
	) const
GetSafeNormal
FVector GetSafeNormal(
float 	Tolerance	 = 	SMALL_NUMBER,
FVector 	ResultIfZero	 = 	FVector :: ZeroVector
	) const
GetSafeNormal2D
FVector GetSafeNormal2D(
float 	Tolerance	 = 	SMALL_NUMBER,
FVector 	ResultIfZero	 = 	FVector :: ZeroVector
	) const
CosineAngle2D
float CosineAngle2D(
FVector 	B
	) const
ProjectOnTo
FVector ProjectOnTo(
FVector 	A
	) const

Gets a copy of this vector projected onto the input vector.

**Parameters**

A
FVector

Vector to project onto, does not assume it is normalized.

**Returns**

Projected vector.

ProjectOnToNormal
FVector ProjectOnToNormal(
FVector 	Normal
	) const

Gets a copy of this vector projected onto the input vector, which is assumed to be unit length.

**Returns**

Projected vector.

FindBestAxisVectors
void FindBestAxisVectors(
FVector& 	Axis1,
FVector& 	Axis2
	) const
UnwindEuler
void UnwindEuler() const
ContainsNaN
bool ContainsNaN() const
IsUnit
bool IsUnit(
float 	LengthSquaredTolerance	 = 	KINDA_SMALL_NUMBER
	) const
HeadingAngle
float HeadingAngle() const
PointsAreSame
bool PointsAreSame(
FVector 	P2
	) const
PointsAreNear
bool PointsAreNear(
FVector 	P2,
float 	Dist
	) const
Distance
float Distance(
FVector 	Other
	) const
DistSquared
float DistSquared(
FVector 	Other
	) const
Dist2D
float Dist2D(
FVector 	Other
	) const
DistXY
float DistXY(
FVector 	Other
	) const
DistSquaredXY
float DistSquaredXY(
FVector 	Other
	) const
DistSquared2D
float DistSquared2D(
FVector 	Other
	) const
Dist2D
float Dist2D(
FVector 	Other,
FVector 	Up
	) const
DistSquared2D
float DistSquared2D(
FVector 	Other,
FVector 	Up
	) const
AngularDistance
float AngularDistance(
FVector 	Other
	) const

Get the angle in radians between two vectors. Vectors are not assumed to be normalized.

AngularDistanceForNormals
float AngularDistanceForNormals(
FVector 	Other
	) const

Get the angle in radians between two normal vectors. Both vectors are assumed to be unit length, or a wrong value will be returned.

ToOrientationRotator
FRotator ToOrientationRotator() const
ToOrientationQuat
FQuat ToOrientationQuat() const
Rotation
FRotator Rotation() const
ConstrainToPlane
FVector ConstrainToPlane(
FVector 	PlaneUp
	) const
ConstrainToDirection
FVector ConstrainToDirection(
FVector 	Direction
	) const
ToColorString
FString ToColorString() const
InitFromString
bool InitFromString(
FString 	SourceString
	) const
MoveTowards
FVector MoveTowards(
FVector 	Current,
FVector 	Target,
float 	StepSize
	) const
ToString
FString ToString() const
