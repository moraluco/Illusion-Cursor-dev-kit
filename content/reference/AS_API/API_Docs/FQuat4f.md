# FQuat4f

## Inheritance

FQuat4f → VARIABLES → ForwardVector

## Description

const FVector3f ForwardVector AxisX const FVector3f AxisX AxisY const FVector3f AxisY AxisZ const FVector3f AxisZ Angle const float32 Angle RightVector const FVector3f RightVector UpVector const FVector3f UpVector RotationAxis const FVector3f RotationAxis STATIC VARIABLES Identity static const FQuat4f FQuat4f::Identity

## FUNCTIONS

### GetForwardVector

```
FVector3f GetForwardVector()const
```

opAdd

### FQuat4f opAdd

```
FQuat4f opAdd(FQuat4f Other)const
```

opSub

### FQuat4f opSub

```
FQuat4f opSub(FQuat4f Other)const
```

opAddAssign

### FQuat4f opAddAssign

```
FQuat4f opAddAssign(FQuat4f Other)const
```

opSubAssign

### FQuat4f opSubAssign

```
FQuat4f opSubAssign(FQuat4f Other)const
```

opEquals

### bool opEquals

```
bool opEquals(FQuat4f Other)const
```

Equals

### bool Equals

```
bool Equals(FQuat4f Other, float32 Tolerance = KINDA_SMALL_NUMBER)const
```

IsIdentity

### bool IsIdentity

```
bool IsIdentity(float32 Tolerance = SMALL_NUMBER)const
```

opMul

### FQuat4f opMul

```
FQuat4f opMul(FQuat4f Other)const
```

opMulAssign

### FQuat4f opMulAssign

```
FQuat4f opMulAssign(FQuat4f Other)
```

opMul

### FQuat4f opMul

```
FQuat4f opMul(float32 Scale)const
```

opMulAssign

### FQuat4f opMulAssign

```
FQuat4f opMulAssign(float32 Scale)
```

opDiv

### FQuat4f opDiv

```
FQuat4f opDiv(float32 Scale)const
```

opDivAssign

### FQuat4f opDivAssign

```
FQuat4f opDivAssign(float32 Scale)
```

Normalize

### void Normalize

```
void Normalize(float32 Tolerance = SMALL_NUMBER)
```

GetNormalized

### FQuat4f GetNormalized

```
FQuat4f GetNormalized(float32 Tolerance = SMALL_NUMBER)const
```

IsNormalized

### bool IsNormalized

```
bool IsNormalized()const Size
```

float32 Size() const

### SizeSquared

```
float32 SizeSquared()const
```

GetAngle

### float32 GetAngle

```
float32 GetAngle()const Log
```

FQuat4f Log() const

### Exp

```
FQuat4f Exp()const
```

Inverse

### FQuat4f Inverse

```
FQuat4f Inverse()const AngularDistance
```

float32 AngularDistance(

### FQuat4f 	Q

```
FQuat4f 	Q 	) const
```

ContainsNaN

### bool ContainsNaN

```
bool ContainsNaN()const EnforceShortestArcWith
```

void EnforceShortestArcWith(

### FQuat4f 	Other

```
FQuat4f 	Other 	)
```

ToAxisAndAngle

### void ToAxisAndAngle

```
void ToAxisAndAngle(FVector3f& Axis, float32& Angle)const
```

opMul

### FVector3f opMul

```
FVector3f opMul(FVector3f Other)const
```

Euler

### FVector3f Euler

```
FVector3f Euler()const RotateVector
```

FVector3f RotateVector(

### FVector3f 	V

```
FVector3f 	V 	) const
```

UnrotateVector

### FVector3f UnrotateVector

```
FVector3f UnrotateVector(FVector3f V)const
```

GetAxisX

### FVector3f GetAxisX

```
FVector3f GetAxisX()const GetAxisY
```

FVector3f GetAxisY() const

### GetAxisZ

```
FVector3f GetAxisZ()const
```

opAssign

### FQuat4f& opAssign

```
FQuat4f& opAssign(FQuat4f Other)
```

GetRightVector

### FVector3f GetRightVector

```
FVector3f GetRightVector()const GetUpVector
```

FVector3f GetUpVector() const

### Vector

```
FVector3f Vector()const
```

GetRotationAxis

### FVector3f GetRotationAxis

```
FVector3f GetRotationAxis()const Rotator
```

FRotator3f Rotator() const

### ToSwingTwist

```
void ToSwingTwist(FVector3f InTwistAxis, FQuat4f& OutSwing, FQuat4f& OutTwist)const
```

GetTwistAngle

### float32 GetTwistAngle

```
float32 GetTwistAngle(FVector3f InTwistAxis)const
```

InitFromString

### bool InitFromString

```
bool InitFromString(FString SourceString)const
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

FindBetweenVectors

### static FQuat4f FQuat4f::FindBetweenVectors

```
static FQuat4f FQuat4f::FindBetweenVectors(FVector3f Vector1, FVector3f Vector2)
```

MakeFromX

### static FQuat4f FQuat4f::MakeFromX

```
static FQuat4f FQuat4f::MakeFromX(FVector3f XAxis)
```

MakeFromY

### static FQuat4f FQuat4f::MakeFromY

```
static FQuat4f FQuat4f::MakeFromY(FVector3f YAxis)
```

MakeFromZ

### static FQuat4f FQuat4f::MakeFromZ

```
static FQuat4f FQuat4f::MakeFromZ(FVector3f ZAxis)
```

MakeFromXY

### static FQuat4f FQuat4f::MakeFromXY

```
static FQuat4f FQuat4f::MakeFromXY(FVector3f XAxis, FVector3f YAxis)
```

MakeFromXZ

### static FQuat4f FQuat4f::MakeFromXZ

```
static FQuat4f FQuat4f::MakeFromXZ(FVector3f XAxis, FVector3f ZAxis)
```

MakeFromYX

### static FQuat4f FQuat4f::MakeFromYX

```
static FQuat4f FQuat4f::MakeFromYX(FVector3f YAxis, FVector3f XAxis)
```

MakeFromYZ

### static FQuat4f FQuat4f::MakeFromYZ

```
static FQuat4f FQuat4f::MakeFromYZ(FVector3f YAxis, FVector3f ZAxis)
```

MakeFromZX

### static FQuat4f FQuat4f::MakeFromZX

```
static FQuat4f FQuat4f::MakeFromZX(FVector3f ZAxis, FVector3f XAxis)
```

MakeFromZY

### static FQuat4f FQuat4f::MakeFromZY

```
static FQuat4f FQuat4f::MakeFromZY(FVector3f ZAxis, FVector3f YAxis)
```

MakeFromAxes

### static FQuat4f FQuat4f::MakeFromAxes

```
static FQuat4f FQuat4f::MakeFromAxes(FVector3f Forward, FVector3f Right, FVector3f Up)
```

FindBetween

### static FQuat4f FQuat4f::FindBetween

```
static FQuat4f FQuat4f::FindBetween(FVector3f Vector1, FVector3f Vector2)
```

MakeFromEuler

### static FQuat4f FQuat4f::MakeFromEuler

```
static FQuat4f FQuat4f::MakeFromEuler(FVector3f Euler)
```

FindBetweenNormals

### static FQuat4f FQuat4f::FindBetweenNormals

```
static FQuat4f FQuat4f::FindBetweenNormals(FVector3f Normal1, FVector3f Normal2)
```

FastLerp

### static FQuat4f FQuat4f::FastLerp

```
static FQuat4f FQuat4f::FastLerp(FQuat4f A, FQuat4f B, float32 Alpha)
```

FastBilerp

### static FQuat4f FQuat4f::FastBilerp

```
static FQuat4f FQuat4f::FastBilerp(FQuat4f P00, FQuat4f P10, FQuat4f P01, FQuat4f P11, float32 FracX, float32 FracY)
```

Slerp_NotNormalized

### static FQuat4f FQuat4f::Slerp_NotNormalized

```
static FQuat4f FQuat4f::Slerp_NotNormalized(FQuat4f Quat1, FQuat4f Quat2, float32 Slerp)
```

Slerp

### static FQuat4f FQuat4f::Slerp

```
static FQuat4f FQuat4f::Slerp(FQuat4f Quat1, FQuat4f Quat2, float32 Slerp)
```

Error

### static float32 FQuat4f::Error

```
static float32 FQuat4f::Error(FQuat4f Q1, FQuat4f Q2)
```

ErrorAutoNormalize

### static float32 FQuat4f::ErrorAutoNormalize

```
static float32 FQuat4f::ErrorAutoNormalize(FQuat4f A, FQuat4f B)
```

SlerpFullPath_NotNormalized

### static FQuat4f FQuat4f::SlerpFullPath_NotNormalized

```
static FQuat4f FQuat4f::SlerpFullPath_NotNormalized(FQuat4f Quat1, FQuat4f Quat2, float32 Slerp)
```

SlerpFullPath

### static FQuat4f FQuat4f::SlerpFullPath

```
static FQuat4f FQuat4f::SlerpFullPath(FQuat4f Quat1, FQuat4f Quat2, float32 Slerp)
```

Squad

### static FQuat4f FQuat4f::Squad

```
static FQuat4f FQuat4f::Squad(FQuat4f Quat1, FQuat4f Tang1, FQuat4f Quat2, FQuat4f Tang2, float32 Alpha)
```

SquadFullPath

### static FQuat4f FQuat4f::SquadFullPath

```
static FQuat4f FQuat4f::SquadFullPath(FQuat4f Quat1, FQuat4f Tang1, FQuat4f Quat2, FQuat4f Tang2, float32 Alpha)
```

CalcTangents

### static void FQuat4f::CalcTangents

```
static void FQuat4f::CalcTangents(FQuat4f PrevP, FQuat4f P, FQuat4f NextP, float32 Tension, FQuat4f& OutTan)
```
