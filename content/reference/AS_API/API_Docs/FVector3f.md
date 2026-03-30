# FVector3f

## Inheritance

FVector3f → VARIABLES → UnsafeNormal

## Description

const FVector3f UnsafeNormal AbsMax const float32 AbsMax Min const float32 Min AbsMin const float32 AbsMin Abs const FVector3f Abs SignVector const FVector3f SignVector Max const float32 Max STATIC VARIABLES OneVector static const FVector3f FVector3f::OneVector UpVector static const FVector3f FVector3f::UpVector ForwardVector static const FVector3f FVector3f::ForwardVector RightVector static const FVector3f FVector3f::RightVector ZeroVector static const FVector3f FVector3f::ZeroVector

## FUNCTIONS

### GetSignVector

```
FVector3f GetSignVector()const
```

opAdd

### FVector3f opAdd

```
FVector3f opAdd(FVector3f Other)const
```

opSub

### FVector3f opSub

```
FVector3f opSub(FVector3f Other)const
```

opMul

### FVector3f opMul

```
FVector3f opMul(FVector3f Other)const
```

opDiv

### FVector3f opDiv

```
FVector3f opDiv(FVector3f Other)const
```

opMul

### FVector3f opMul

```
FVector3f opMul(float32 Scale)const
```

opDiv

### FVector3f opDiv

```
FVector3f opDiv(float32 Scale)const
```

opAdd

### FVector3f opAdd

```
FVector3f opAdd(float32 Bias)const
```

opSub

### FVector3f opSub

```
FVector3f opSub(float32 Bias)const
```

opNeg

### FVector3f opNeg

```
FVector3f opNeg()const opMulAssign
```

FVector3f opMulAssign(

### float32 	Scale

```
float32 	Scale 	)
```

opDivAssign

### FVector3f opDivAssign

```
FVector3f opDivAssign(float32 Scale)
```

opMulAssign

### FVector3f opMulAssign

```
FVector3f opMulAssign(FVector3f Other)
```

opDivAssign

### FVector3f opDivAssign

```
FVector3f opDivAssign(FVector3f Other)
```

opAddAssign

### FVector3f opAddAssign

```
FVector3f opAddAssign(FVector3f Other)
```

opSubAssign

### FVector3f opSubAssign

```
FVector3f opSubAssign(FVector3f Other)
```

opIndex

### float32& opIndex

```
float32& opIndex(int Index)
```

opIndex

### float32 opIndex

```
float32 opIndex(int Index)const
```

opEquals

### bool opEquals

```
bool opEquals(FVector3f Other)const
```

Equals

### bool Equals

```
bool Equals(FVector3f Other, float32 Tolerance = KINDA_SMALL_NUMBER)const
```

CrossProduct

### FVector3f CrossProduct

```
FVector3f CrossProduct(FVector3f Other)const
```

DotProduct

### float32 DotProduct

```
float32 DotProduct(FVector3f Other)const
```

AllComponentsEqual

### bool AllComponentsEqual

```
bool AllComponentsEqual(float32 Tolerance = KINDA_SMALL_NUMBER)const
```

Parallel

### bool Parallel

```
bool Parallel(FVector3f Normal2, float32 ParallelCosineThreshold = THRESH_NORMALS_ARE_PARALLEL)const
```

See if two normal vectors are nearly parallel, meaning the angle between them is close to 0 degrees.  *

**Parameters**

ParallelCosineThreshold
float32

Normals are parallel if absolute value of dot product (cosine of angle between them) is greater than or equal to this. For example: cos(1.0 degrees).  *

**Returns**

true if vectors are nearly parallel, false otherwise.

Coincident
bool Coincident(
FVector3f 	Normal2,
float32 	ParallelCosineThreshold	 = 	THRESH_NORMALS_ARE_PARALLEL
	) const

See if two normal vectors are coincident (nearly parallel and point in the same direction).  *

**Parameters**

Normal2
FVector3f

Second normalized vector. *

ParallelCosineThreshold
float32

Normals are coincident if dot product (cosine of angle between them) is greater than or equal to this. For example: cos(1.0 degrees). *

**Returns**

true if vectors are coincident (nearly parallel and point in the same direction), false otherwise.

Orthogonal
bool Orthogonal(
FVector3f 	Normal2,
float32 	OrthogonalCosineThreshold	 = 	THRESH_NORMALS_ARE_ORTHOGONAL
	) const

See if two normal vectors are nearly orthogonal (perpendicular), meaning the angle between them is close to 90 degrees.  *

**Parameters**

Normal2
FVector3f

Second normalized vector. *

OrthogonalCosineThreshold
float32

Normals are orthogonal if absolute value of dot product (cosine of angle between them) is less than or equal to this. For example: cos(89.0 degrees). *

**Returns**

true if vectors are orthogonal (perpendicular), false otherwise.

GetMax
float32 GetMax() const
GetAbsMax
float32 GetAbsMax() const
GetMin
float32 GetMin() const
GetAbsMin
float32 GetAbsMin() const
ComponentMin
FVector3f ComponentMin(
FVector3f 	Other
	) const
ComponentMax
FVector3f ComponentMax(
FVector3f 	Other
	) const
ComponentClamp
FVector3f ComponentClamp(
FVector3f 	Min,
FVector3f 	Max
	) const
GetAbs
FVector3f GetAbs() const
Size
float32 Size() const
SizeSquared
float32 SizeSquared() const
Size2D
float32 Size2D() const
SizeSquared2D
float32 SizeSquared2D() const
Size2D
float32 Size2D(
FVector3f 	Up
	) const
SizeSquared2D
float32 SizeSquared2D(
FVector3f 	Up
	) const
PointPlaneProject
FVector3f PointPlaneProject(
FVector3f 	PlaneBase,
FVector3f 	PlaneNormal
	) const
IsNearlyZero
bool IsNearlyZero(
float32 	Tolerance	 = 	KINDA_SMALL_NUMBER
	) const
IsZero
bool IsZero() const
Normalize
bool Normalize(
float32 	Tolerance	 = 	SMALL_NUMBER
	)
IsNormalized
bool IsNormalized() const
ToDirectionAndLength
void ToDirectionAndLength(
FVector3f& 	OutDir,
float32& 	OutLength
	) const
opAssign
FVector3f& opAssign(
FVector3f 	Other
	)
Projection
FVector3f Projection() const
GetUnsafeNormal
FVector3f GetUnsafeNormal() const
GridSnap
FVector3f GridSnap(
const 	float32& 	GridSize
	) const
BoundToCube
FVector3f BoundToCube(
float32 	Radius
	) const
BoundToBox
FVector3f BoundToBox(
FVector3f 	Min,
FVector3f 	Max
	) const
GetClampedToSize
FVector3f GetClampedToSize(
float32 	Min,
float32 	Max
	) const
GetClampedToSize2D
FVector3f GetClampedToSize2D(
float32 	Min,
float32 	Max
	) const
GetClampedToMaxSize
FVector3f GetClampedToMaxSize(
float32 	Max
	) const
GetClampedToMaxSize2D
FVector3f GetClampedToMaxSize2D(
float32 	Max
	) const
AddBounded
void AddBounded(
FVector3f 	V,
float32 	Radius	 = 	MAX_int16
	) const
Reciprocal
FVector3f Reciprocal() const
IsUniform
bool IsUniform(
float32 	Tolerance	 = 	KINDA_SMALL_NUMBER
	) const
MirrorByVector
FVector3f MirrorByVector(
FVector3f 	MirrorNormal
	) const
VectorPlaneProject
FVector3f VectorPlaneProject(
FVector3f 	PlaneNormal
	) const
RotateAngleAxis
FVector3f RotateAngleAxis(
float32 	AngleDeg,
FVector3f 	Axis
	) const
GetSafeNormal
FVector3f GetSafeNormal(
float32 	Tolerance	 = 	SMALL_NUMBER,
FVector3f 	ResultIfZero	 = 	FVector3f :: ZeroVector
	) const
GetSafeNormal2D
FVector3f GetSafeNormal2D(
float32 	Tolerance	 = 	SMALL_NUMBER,
FVector3f 	ResultIfZero	 = 	FVector3f :: ZeroVector
	) const
CosineAngle2D
float32 CosineAngle2D(
FVector3f 	B
	) const
ProjectOnTo
FVector3f ProjectOnTo(
FVector3f 	A
	) const

Gets a copy of this vector projected onto the input vector.

**Parameters**

A
FVector3f

Vector to project onto, does not assume it is normalized.

**Returns**

Projected vector.

ProjectOnToNormal
FVector3f ProjectOnToNormal(
FVector3f 	Normal
	) const

Gets a copy of this vector projected onto the input vector, which is assumed to be unit length.

**Returns**

Projected vector.

FindBestAxisVectors
void FindBestAxisVectors(
FVector3f& 	Axis1,
FVector3f& 	Axis2
	) const
UnwindEuler
void UnwindEuler() const
ContainsNaN
bool ContainsNaN() const
IsUnit
bool IsUnit(
float32 	LengthSquaredTolerance	 = 	KINDA_SMALL_NUMBER
	) const
HeadingAngle
float32 HeadingAngle() const
PointsAreSame
bool PointsAreSame(
FVector3f 	P2
	) const
PointsAreNear
bool PointsAreNear(
FVector3f 	P2,
float32 	Dist
	) const
Distance
float32 Distance(
FVector3f 	Other
	) const
DistSquared
float32 DistSquared(
FVector3f 	Other
	) const
Dist2D
float32 Dist2D(
FVector3f 	Other
	) const
DistXY
float32 DistXY(
FVector3f 	Other
	) const
DistSquaredXY
float32 DistSquaredXY(
FVector3f 	Other
	) const
DistSquared2D
float32 DistSquared2D(
FVector3f 	Other
	) const
Dist2D
float32 Dist2D(
FVector3f 	Other,
FVector3f 	Up
	) const
DistSquared2D
float32 DistSquared2D(
FVector3f 	Other,
FVector3f 	Up
	) const
AngularDistance
float32 AngularDistance(
FVector3f 	Other
	) const

Get the angle in radians between two vectors. Vectors are not assumed to be normalized.

AngularDistanceForNormals
float32 AngularDistanceForNormals(
FVector3f 	Other
	) const

Get the angle in radians between two normal vectors. Both vectors are assumed to be unit length, or a wrong value will be returned.

ToOrientationRotator
FRotator3f ToOrientationRotator() const
ToOrientationQuat
FQuat4f ToOrientationQuat() const
Rotation
FRotator3f Rotation() const
ConstrainToPlane
FVector3f ConstrainToPlane(
FVector3f 	PlaneUp
	) const
ConstrainToDirection
FVector3f ConstrainToDirection(
FVector3f 	Direction
	) const
ToColorString
FString ToColorString() const
InitFromString
bool InitFromString(
FString 	SourceString
	) const
ToString
FString ToString() const
