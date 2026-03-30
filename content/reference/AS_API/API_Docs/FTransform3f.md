# FTransform3f

## Inheritance

FTransform3f → VARIABLES → MinimumAxisScale

## Description

const float32 MinimumAxisScale Location FVector3f Location Determinant const float32 Determinant Translation FVector3f Translation Scale3D FVector3f Scale3D Rotation FQuat4f Rotation MaximumAxisScale const float32 MaximumAxisScale STATIC VARIABLES Identity static const FTransform3f FTransform3f::Identity

## FUNCTIONS

### NormalizeRotation

```
void NormalizeRotation()
```

Inverse

### FTransform3f Inverse

```
FTransform3f Inverse()const Blend
```

void Blend(

### FTransform3f 	Atom1,

```
FTransform3f 	Atom1, FTransform3f 	Atom2, float32 	Alpha 	)
```

BlendWith

### void BlendWith

```
void BlendWith(FTransform3f OtherAtom, float32 Alpha)
```

opMul

### FTransform3f opMul

```
FTransform3f opMul(FTransform3f Other)const
```

opMul

### FTransform3f opMul

```
FTransform3f opMul(FQuat4f Other)const
```

opMulAssign

### void opMulAssign

```
void opMulAssign(FTransform3f Other)
```

opMulAssign

### void opMulAssign

```
void opMulAssign(FQuat4f Other)
```

ScaleTranslation

### void ScaleTranslation

```
void ScaleTranslation(FVector3f InScale3D)
```

ScaleTranslation

### void ScaleTranslation

```
void ScaleTranslation(const float32& Scale)
```

RemoveScaling

### void RemoveScaling

```
void RemoveScaling(float32 Tolerance = SMALL_NUMBER)
```

SetToRelativeTransform

### void SetToRelativeTransform

```
void SetToRelativeTransform(FTransform3f Other)
```

Accumulate

### void Accumulate

```
void Accumulate(FTransform3f SourceAtom)
```

Accumulates another transform with this one Rotation is accumulated multiplicatively (Rotation = SourceAtom.Rotation * Rotation) Translation is accumulated additively (Translation += SourceAtom.Translation) Scale3D is accumulated multiplicatively (Scale3D *= SourceAtom.Scale3D)

**Parameters**

SourceAtom
FTransform3f

The other transform to accumulate into this one

GetMaximumAxisScale
float32 GetMaximumAxisScale() const
GetMinimumAxisScale
float32 GetMinimumAxisScale() const
GetRelativeTransform
FTransform3f GetRelativeTransform(
FTransform3f 	Other
	) const
GetRelativeTransformReverse
FTransform3f GetRelativeTransformReverse(
FTransform3f 	Other
	) const
TransformPosition
FVector3f TransformPosition(
FVector3f 	V
	) const
TransformPositionNoScale
FVector3f TransformPositionNoScale(
FVector3f 	V
	) const
InverseTransformPosition
FVector3f InverseTransformPosition(
FVector3f 	V
	) const
InverseTransformPositionNoScale
FVector3f InverseTransformPositionNoScale(
FVector3f 	V
	) const
TransformVector
FVector3f TransformVector(
FVector3f 	V
	) const
TransformVectorNoScale
FVector3f TransformVectorNoScale(
FVector3f 	V
	) const
InverseTransformVector
FVector3f InverseTransformVector(
FVector3f 	V
	) const
InverseTransformVectorNoScale
FVector3f InverseTransformVectorNoScale(
FVector3f 	V
	) const
TransformRotation
FQuat4f TransformRotation(
FQuat4f 	Q
	) const
InverseTransformRotation
FQuat4f InverseTransformRotation(
FQuat4f 	Q
	) const
InverseTransformRotation
FRotator3f InverseTransformRotation(
FRotator3f 	R
	) const
SubtractTranslations
FVector3f SubtractTranslations(
FTransform3f 	B
	) const
opAssign
FTransform3f& opAssign(
FTransform3f 	Other
	)
IsRotationNormalized
bool IsRotationNormalized() const
TranslationEquals
bool TranslationEquals(
FTransform3f 	Other,
float32 	Tolerance	 = 	KINDA_SMALL_NUMBER
	) const
EqualsNoScale
bool EqualsNoScale(
FTransform3f 	Other,
float32 	Tolerance	 = 	KINDA_SMALL_NUMBER
	) const
Equals
bool Equals(
FTransform3f 	Other,
float32 	Tolerance	 = 	KINDA_SMALL_NUMBER
	) const
GetLocation
FVector3f GetLocation() const
ContainsNaN
bool ContainsNaN() const
IsValid
bool IsValid() const
GetDeterminant
float32 GetDeterminant() const
Rotator
FRotator3f Rotator() const
GetTranslation
FVector3f GetTranslation() const
GetScale3D
FVector3f GetScale3D() const
GetRotation
FQuat4f GetRotation() const
SetLocation
void SetLocation(
FVector3f 	Origin
	)
SetTranslation
void SetTranslation(
FVector3f 	Origin
	)
AddToTranslation
void AddToTranslation(
FVector3f 	Origin
	)
ConcatenateRotation
void ConcatenateRotation(
FQuat4f 	DeltaRotation
	)

Concatenates another rotation to this transformation

**Parameters**

DeltaRotation
FQuat4f

The rotation to concatenate in the following fashion: Rotation = Rotation * DeltaRotation

SetRotation
void SetRotation(
FQuat4f 	NewRotation
	)
SetRotation
void SetRotation(
FRotator3f 	NewRotation
	)
SetScale3D
void SetScale3D(
FVector3f 	NewScale3D
	)
SetTranslationAndScale3D
void SetTranslationAndScale3D(
FVector3f 	NewTranslation,
FVector3f 	NewScale3D
	)
InitFromString
bool InitFromString(
FString 	SourceString
	) const
ToString
FString ToString() const
STATIC FUNCTIONS
MakeFromXZ
static FTransform3f FTransform3f::MakeFromXZ(
FVector3f 	XAxis,
FVector3f 	ZAxis
	)
MakeFromYX
static FTransform3f FTransform3f::MakeFromYX(
FVector3f 	YAxis,
FVector3f 	XAxis
	)
MakeFromYZ
static FTransform3f FTransform3f::MakeFromYZ(
FVector3f 	YAxis,
FVector3f 	ZAxis
	)
MakeFromZX
static FTransform3f FTransform3f::MakeFromZX(
FVector3f 	ZAxis,
FVector3f 	XAxis
	)
MakeFromZY
static FTransform3f FTransform3f::MakeFromZY(
FVector3f 	ZAxis,
FVector3f 	YAxis
	)
MakeFromXY
static FTransform3f FTransform3f::MakeFromXY(
FVector3f 	XAxis,
FVector3f 	YAxis
	)
