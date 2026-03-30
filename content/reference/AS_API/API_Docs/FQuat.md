# FQuat

## Inheritance

FQuat → VARIABLES → ForwardVector

## Description

const FVector ForwardVector AxisX const FVector AxisX AxisY const FVector AxisY AxisZ const FVector AxisZ Angle const float Angle RightVector const FVector RightVector UpVector const FVector UpVector RotationAxis const FVector RotationAxis STATIC VARIABLES Identity static const FQuat FQuat::Identity

## FUNCTIONS

### GetForwardVector

```
FVector GetForwardVector()const
```

opAdd

### FQuat opAdd

```
FQuat opAdd(FQuat Other)const
```

opSub

### FQuat opSub

```
FQuat opSub(FQuat Other)const
```

opAddAssign

### FQuat opAddAssign

```
FQuat opAddAssign(FQuat Other)const
```

opSubAssign

### FQuat opSubAssign

```
FQuat opSubAssign(FQuat Other)const
```

opEquals

### bool opEquals

```
bool opEquals(FQuat Other)const
```

Equals

### bool Equals

```
bool Equals(FQuat Other, float Tolerance = KINDA_SMALL_NUMBER)const
```

IsIdentity

### bool IsIdentity

```
bool IsIdentity(float Tolerance = SMALL_NUMBER)const
```

opMul

### FQuat opMul

```
FQuat opMul(FQuat Other)const
```

opMulAssign

### FQuat opMulAssign

```
FQuat opMulAssign(FQuat Other)
```

opMul

### FQuat opMul

```
FQuat opMul(float Scale)const
```

opMulAssign

### FQuat opMulAssign

```
FQuat opMulAssign(float Scale)
```

opDiv

### FQuat opDiv

```
FQuat opDiv(float Scale)const
```

opDivAssign

### FQuat opDivAssign

```
FQuat opDivAssign(float Scale)
```

Normalize

### void Normalize

```
void Normalize(float Tolerance = SMALL_NUMBER)
```

GetNormalized

### FQuat GetNormalized

```
FQuat GetNormalized(float Tolerance = SMALL_NUMBER)const
```

IsNormalized

### bool IsNormalized

```
bool IsNormalized()const Size
```

float Size() const

### SizeSquared

```
float SizeSquared()const
```

GetAngle

### float GetAngle

```
float GetAngle()const Log
```

FQuat Log() const

### Exp

```
FQuat Exp()const
```

Inverse

### FQuat Inverse

```
FQuat Inverse()const AngularDistance
```

float AngularDistance(

### FQuat 	Q

```
FQuat 	Q 	) const
```

ContainsNaN

### bool ContainsNaN

```
bool ContainsNaN()const EnforceShortestArcWith
```

void EnforceShortestArcWith(

### FQuat 	Other

```
FQuat 	Other 	)
```

ToAxisAndAngle

### void ToAxisAndAngle

```
void ToAxisAndAngle(FVector& Axis, float32& Angle)const
```

ToAxisAndAngle

### void ToAxisAndAngle

```
void ToAxisAndAngle(FVector& Axis, float& Angle)const
```

opMul

### FVector opMul

```
FVector opMul(FVector Other)const
```

Euler

### FVector Euler

```
FVector Euler()const RotateVector
```

FVector RotateVector(

### FVector 	V

```
FVector 	V 	) const
```

UnrotateVector

### FVector UnrotateVector

```
FVector UnrotateVector(FVector V)const
```

GetAxisX

### FVector GetAxisX

```
FVector GetAxisX()const GetAxisY
```

FVector GetAxisY() const

### GetAxisZ

```
FVector GetAxisZ()const
```

opAssign

### FQuat& opAssign

```
FQuat& opAssign(FQuat Other)
```

GetRightVector

### FVector GetRightVector

```
FVector GetRightVector()const GetUpVector
```

FVector GetUpVector() const

### Vector

```
FVector Vector()const
```

GetRotationAxis

### FVector GetRotationAxis

```
FVector GetRotationAxis()const Rotator
```

FRotator Rotator() const

### ToSwingTwist

```
void ToSwingTwist(FVector InTwistAxis, FQuat& OutSwing, FQuat& OutTwist)const
```

GetTwistAngle

### float GetTwistAngle

```
float GetTwistAngle(FVector InTwistAxis)const
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

### static FQuat FQuat::FindBetweenVectors

```
static FQuat FQuat::FindBetweenVectors(FVector Vector1, FVector Vector2)
```

MakeFromX

### static FQuat FQuat::MakeFromX

```
static FQuat FQuat::MakeFromX(FVector XAxis)
```

MakeFromY

### static FQuat FQuat::MakeFromY

```
static FQuat FQuat::MakeFromY(FVector YAxis)
```

MakeFromZ

### static FQuat FQuat::MakeFromZ

```
static FQuat FQuat::MakeFromZ(FVector ZAxis)
```

MakeFromXY

### static FQuat FQuat::MakeFromXY

```
static FQuat FQuat::MakeFromXY(FVector XAxis, FVector YAxis)
```

MakeFromXZ

### static FQuat FQuat::MakeFromXZ

```
static FQuat FQuat::MakeFromXZ(FVector XAxis, FVector ZAxis)
```

MakeFromYX

### static FQuat FQuat::MakeFromYX

```
static FQuat FQuat::MakeFromYX(FVector YAxis, FVector XAxis)
```

MakeFromYZ

### static FQuat FQuat::MakeFromYZ

```
static FQuat FQuat::MakeFromYZ(FVector YAxis, FVector ZAxis)
```

MakeFromZX

### static FQuat FQuat::MakeFromZX

```
static FQuat FQuat::MakeFromZX(FVector ZAxis, FVector XAxis)
```

MakeFromZY

### static FQuat FQuat::MakeFromZY

```
static FQuat FQuat::MakeFromZY(FVector ZAxis, FVector YAxis)
```

MakeFromAxes

### static FQuat FQuat::MakeFromAxes

```
static FQuat FQuat::MakeFromAxes(FVector Forward, FVector Right, FVector Up)
```

FindBetween

### static FQuat FQuat::FindBetween

```
static FQuat FQuat::FindBetween(FVector Vector1, FVector Vector2)
```

MakeFromEuler

### static FQuat FQuat::MakeFromEuler

```
static FQuat FQuat::MakeFromEuler(FVector Euler)
```

FindBetweenNormals

### static FQuat FQuat::FindBetweenNormals

```
static FQuat FQuat::FindBetweenNormals(FVector Normal1, FVector Normal2)
```

FastLerp

### static FQuat FQuat::FastLerp

```
static FQuat FQuat::FastLerp(FQuat A, FQuat B, float Alpha)
```

FastBilerp

### static FQuat FQuat::FastBilerp

```
static FQuat FQuat::FastBilerp(FQuat P00, FQuat P10, FQuat P01, FQuat P11, float FracX, float FracY)
```

Slerp_NotNormalized

### static FQuat FQuat::Slerp_NotNormalized

```
static FQuat FQuat::Slerp_NotNormalized(FQuat Quat1, FQuat Quat2, float Slerp)
```

Slerp

### static FQuat FQuat::Slerp

```
static FQuat FQuat::Slerp(FQuat Quat1, FQuat Quat2, float Slerp)
```

Error

### static float FQuat::Error

```
static float FQuat::Error(FQuat Q1, FQuat Q2)
```

ErrorAutoNormalize

### static float FQuat::ErrorAutoNormalize

```
static float FQuat::ErrorAutoNormalize(FQuat A, FQuat B)
```

SlerpFullPath_NotNormalized

### static FQuat FQuat::SlerpFullPath_NotNormalized

```
static FQuat FQuat::SlerpFullPath_NotNormalized(FQuat Quat1, FQuat Quat2, float Slerp)
```

SlerpFullPath

### static FQuat FQuat::SlerpFullPath

```
static FQuat FQuat::SlerpFullPath(FQuat Quat1, FQuat Quat2, float Slerp)
```

Squad

### static FQuat FQuat::Squad

```
static FQuat FQuat::Squad(FQuat Quat1, FQuat Tang1, FQuat Quat2, FQuat Tang2, float Alpha)
```

SquadFullPath

### static FQuat FQuat::SquadFullPath

```
static FQuat FQuat::SquadFullPath(FQuat Quat1, FQuat Tang1, FQuat Quat2, FQuat Tang2, float Alpha)
```

CalcTangents

### static void FQuat::CalcTangents

```
static void FQuat::CalcTangents(FQuat PrevP, FQuat P, FQuat NextP, float Tension, FQuat& OutTan)
```
