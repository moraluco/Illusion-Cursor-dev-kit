# FRotator3f

## Inheritance

FRotator3f → VARIABLES → Normalized

## Description

const FRotator3f Normalized Denormalized const FRotator3f Denormalized ForwardVector const FVector3f ForwardVector RightVector const FVector3f RightVector UpVector const FVector3f UpVector Inverse const FRotator3f Inverse STATIC VARIABLES ZeroRotator static const FRotator3f FRotator3f::ZeroRotator

## FUNCTIONS

### Vector

```
FVector3f Vector()const
```

opAdd

### FRotator3f opAdd

```
FRotator3f opAdd(FRotator3f R)const
```

opAddAssign

### FRotator3f opAddAssign

```
FRotator3f opAddAssign(FRotator3f R)
```

opSub

### FRotator3f opSub

```
FRotator3f opSub(FRotator3f R)const
```

opSubAssign

### FRotator3f opSubAssign

```
FRotator3f opSubAssign(FRotator3f R)
```

opMul

### FRotator3f opMul

```
FRotator3f opMul(float32 Scale)const
```

opMulAssign

### FRotator3f opMulAssign

```
FRotator3f opMulAssign(float32 Scale)
```

opEquals

### bool opEquals

```
bool opEquals(FRotator3f R)const
```

IsNearlyZero

### bool IsNearlyZero

```
bool IsNearlyZero(float32 Tolerance = KINDA_SMALL_NUMBER)const
```

IsZero

### bool IsZero

```
bool IsZero()const Equals
```

bool Equals(

### FRotator3f 	R,

```
FRotator3f 	R, float32 	Tolerance	 = 	KINDA_SMALL_NUMBER 	) const
```

GetInverse

### FRotator3f GetInverse

```
FRotator3f GetInverse()const Clamp
```

FRotator3f Clamp() const

### GetNormalized

```
FRotator3f GetNormalized()const
```

GetDenormalized

### FRotator3f GetDenormalized

```
FRotator3f GetDenormalized()const GetWindingAndRemainder
```

void GetWindingAndRemainder(

### FRotator3f& 	Winding,

```
FRotator3f& 	Winding, FRotator3f& 	Remainder 	) const
```

GetManhattanDistance

### float32 GetManhattanDistance

```
float32 GetManhattanDistance(FRotator3f Rotator)const
```

Normalize

### void Normalize

```
void Normalize()
```

ContainsNaN

### bool ContainsNaN

```
bool ContainsNaN()
```

Compose

### FRotator3f Compose

```
FRotator3f Compose(FRotator3f B)const
```

ToColorString

### FString ToColorString

```
FString ToColorString()const InitFromString
```

bool InitFromString(

### FString 	SourceString

```
FString 	SourceString 	) const
```

opAssign

### FRotator3f& opAssign

```
FRotator3f& opAssign(FRotator3f Other)
```

Quaternion

### FQuat4f Quaternion

```
FQuat4f Quaternion()const Euler
```

FVector3f Euler() const

### GetForwardVector

```
FVector3f GetForwardVector()const
```

GetRightVector

### FVector3f GetRightVector

```
FVector3f GetRightVector()const GetUpVector
```

FVector3f GetUpVector() const

### RotateVector

```
FVector3f RotateVector(FVector3f V)const
```

UnrotateVector

### FVector3f UnrotateVector

```
FVector3f UnrotateVector(FVector3f V)const
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

MakeFromXY

### static FRotator3f FRotator3f::MakeFromXY

```
static FRotator3f FRotator3f::MakeFromXY(FVector3f XAxis, FVector3f YAxis)
```

ClampAxis

### static float32 FRotator3f::ClampAxis

```
static float32 FRotator3f::ClampAxis(float32 Angle)
```

MakeFromEuler

### static FRotator3f FRotator3f::MakeFromEuler

```
static FRotator3f FRotator3f::MakeFromEuler(FVector3f Euler)
```

MakeFromX

### static FRotator3f FRotator3f::MakeFromX

```
static FRotator3f FRotator3f::MakeFromX(FVector3f XAxis)
```

MakeFromY

### static FRotator3f FRotator3f::MakeFromY

```
static FRotator3f FRotator3f::MakeFromY(FVector3f YAxis)
```

MakeFromZ

### static FRotator3f FRotator3f::MakeFromZ

```
static FRotator3f FRotator3f::MakeFromZ(FVector3f ZAxis)
```

NormalizeAxis

### static float32 FRotator3f::NormalizeAxis

```
static float32 FRotator3f::NormalizeAxis(float32 Angle)
```

MakeFromXZ

### static FRotator3f FRotator3f::MakeFromXZ

```
static FRotator3f FRotator3f::MakeFromXZ(FVector3f XAxis, FVector3f ZAxis)
```

MakeFromYX

### static FRotator3f FRotator3f::MakeFromYX

```
static FRotator3f FRotator3f::MakeFromYX(FVector3f YAxis, FVector3f XAxis)
```

MakeFromYZ

### static FRotator3f FRotator3f::MakeFromYZ

```
static FRotator3f FRotator3f::MakeFromYZ(FVector3f YAxis, FVector3f ZAxis)
```

MakeFromZX

### static FRotator3f FRotator3f::MakeFromZX

```
static FRotator3f FRotator3f::MakeFromZX(FVector3f ZAxis, FVector3f XAxis)
```

MakeFromZY

### static FRotator3f FRotator3f::MakeFromZY

```
static FRotator3f FRotator3f::MakeFromZY(FVector3f ZAxis, FVector3f YAxis)
```

MakeFromAxes

### static FRotator3f FRotator3f::MakeFromAxes

```
static FRotator3f FRotator3f::MakeFromAxes(FVector3f Forward, FVector3f Right, FVector3f Up)
```
