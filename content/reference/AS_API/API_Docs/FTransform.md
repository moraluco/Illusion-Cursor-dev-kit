# FTransform

## Inheritance

FTransform → VARIABLES → MinimumAxisScale

## Description

const float32 MinimumAxisScale Location FVector Location Determinant const float Determinant Translation FVector Translation Scale3D FVector Scale3D Rotation FQuat Rotation MaximumAxisScale const float32 MaximumAxisScale STATIC VARIABLES Identity static const FTransform FTransform::Identity

## FUNCTIONS

### SubtractTranslations

```
FVector SubtractTranslations(FTransform B)const
```

Inverse

### FTransform Inverse

```
FTransform Inverse()const Blend
```

void Blend(

### FTransform 	Atom1,

```
FTransform 	Atom1, FTransform 	Atom2, float 	Alpha 	)
```

BlendWith

### void BlendWith

```
void BlendWith(FTransform OtherAtom, float Alpha)
```

Blend

### void Blend

```
void Blend(FTransform Atom1, FTransform Atom2, float32 Alpha)
```

BlendWith

### void BlendWith

```
void BlendWith(FTransform OtherAtom, float32 Alpha)
```

opMul

### FTransform opMul

```
FTransform opMul(FTransform Other)const
```

opMul

### FTransform opMul

```
FTransform opMul(FQuat Other)const
```

opMulAssign

### void opMulAssign

```
void opMulAssign(FTransform Other)
```

opMulAssign

### void opMulAssign

```
void opMulAssign(FQuat Other)
```

ScaleTranslation

### void ScaleTranslation

```
void ScaleTranslation(FVector InScale3D)
```

ScaleTranslation

### void ScaleTranslation

```
void ScaleTranslation(const float& Scale)
```

RemoveScaling

### void RemoveScaling

```
void RemoveScaling(float Tolerance = SMALL_NUMBER)
```

SetToRelativeTransform

### void SetToRelativeTransform

```
void SetToRelativeTransform(FTransform Other)
```

Accumulate

### void Accumulate

```
void Accumulate(FTransform SourceAtom)
```

Accumulates another transform with this one Rotation is accumulated multiplicatively (Rotation = SourceAtom.Rotation * Rotation) Translation is accumulated additively (Translation += SourceAtom.Translation) Scale3D is accumulated multiplicatively (Scale3D *= SourceAtom.Scale3D)

**Parameters**

SourceAtom
FTransform

The other transform to accumulate into this one

GetMaximumAxisScale
float32 GetMaximumAxisScale() const
GetMinimumAxisScale
float32 GetMinimumAxisScale() const
GetRelativeTransform
FTransform GetRelativeTransform(
FTransform 	Other
	) const
GetRelativeTransformReverse
FTransform GetRelativeTransformReverse(
FTransform 	Other
	) const
TransformPosition
FVector TransformPosition(
FVector 	V
	) const
TransformPositionNoScale
FVector TransformPositionNoScale(
FVector 	V
	) const
InverseTransformPosition
FVector InverseTransformPosition(
FVector 	V
	) const
InverseTransformPositionNoScale
FVector InverseTransformPositionNoScale(
FVector 	V
	) const
TransformVector
FVector TransformVector(
FVector 	V
	) const
TransformVectorNoScale
FVector TransformVectorNoScale(
FVector 	V
	) const
InverseTransformVector
FVector InverseTransformVector(
FVector 	V
	) const
InverseTransformVectorNoScale
FVector InverseTransformVectorNoScale(
FVector 	V
	) const
TransformRotation
FQuat TransformRotation(
FQuat 	Q
	) const
InverseTransformRotation
FQuat InverseTransformRotation(
FQuat 	Q
	) const
InverseTransformRotation
FRotator InverseTransformRotation(
FRotator 	R
	) const
opAssign
FTransform& opAssign(
FTransform 	Other
	)
NormalizeRotation
void NormalizeRotation()
IsRotationNormalized
bool IsRotationNormalized() const
TranslationEquals
bool TranslationEquals(
FTransform 	Other,
float 	Tolerance	 = 	KINDA_SMALL_NUMBER
	) const
EqualsNoScale
bool EqualsNoScale(
FTransform 	Other,
float 	Tolerance	 = 	KINDA_SMALL_NUMBER
	) const
Equals
bool Equals(
FTransform 	Other,
float 	Tolerance	 = 	KINDA_SMALL_NUMBER
	) const
GetLocation
FVector GetLocation() const
ContainsNaN
bool ContainsNaN() const
IsValid
bool IsValid() const
GetDeterminant
float GetDeterminant() const
Rotator
FRotator Rotator() const
GetTranslation
FVector GetTranslation() const
GetScale3D
FVector GetScale3D() const
GetRotation
FQuat GetRotation() const
SetLocation
void SetLocation(
FVector 	Origin
	)
SetTranslation
void SetTranslation(
FVector 	Origin
	)
AddToTranslation
void AddToTranslation(
FVector 	Origin
	)
ConcatenateRotation
void ConcatenateRotation(
FQuat 	DeltaRotation
	)

Concatenates another rotation to this transformation

**Parameters**

DeltaRotation
FQuat

The rotation to concatenate in the following fashion: Rotation = Rotation * DeltaRotation

SetRotation
void SetRotation(
FQuat 	NewRotation
	)
SetRotation
void SetRotation(
FRotator 	NewRotation
	)
SetScale3D
void SetScale3D(
FVector 	NewScale3D
	)
SetTranslationAndScale3D
void SetTranslationAndScale3D(
FVector 	NewTranslation,
FVector 	NewScale3D
	)
InitFromString
bool InitFromString(
FString 	SourceString
	) const
ToString
FString ToString() const
STATIC FUNCTIONS
MakeFromXZ
static FTransform FTransform::MakeFromXZ(
FVector 	XAxis,
FVector 	ZAxis
	)
MakeFromYX
static FTransform FTransform::MakeFromYX(
FVector 	YAxis,
FVector 	XAxis
	)
MakeFromYZ
static FTransform FTransform::MakeFromYZ(
FVector 	YAxis,
FVector 	ZAxis
	)
MakeFromZX
static FTransform FTransform::MakeFromZX(
FVector 	ZAxis,
FVector 	XAxis
	)
MakeFromZY
static FTransform FTransform::MakeFromZY(
FVector 	ZAxis,
FVector 	YAxis
	)
MakeFromXY
static FTransform FTransform::MakeFromXY(
FVector 	XAxis,
FVector 	YAxis
	)
