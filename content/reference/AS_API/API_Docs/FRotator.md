# FRotator

## Inheritance

FRotator → VARIABLES → Normalized

## Description

const FRotator Normalized Denormalized const FRotator Denormalized ForwardVector const FVector ForwardVector RightVector const FVector RightVector UpVector const FVector UpVector Inverse const FRotator Inverse STATIC VARIABLES ZeroRotator static const FRotator FRotator::ZeroRotator

## FUNCTIONS

### Vector

```
FVector Vector()const
```

opAdd

### FRotator opAdd

```
FRotator opAdd(FRotator R)const
```

opAddAssign

### FRotator opAddAssign

```
FRotator opAddAssign(FRotator R)
```

opSub

### FRotator opSub

```
FRotator opSub(FRotator R)const
```

opSubAssign

### FRotator opSubAssign

```
FRotator opSubAssign(FRotator R)
```

opMul

### FRotator opMul

```
FRotator opMul(float Scale)const
```

opMulAssign

### FRotator opMulAssign

```
FRotator opMulAssign(float Scale)
```

opEquals

### bool opEquals

```
bool opEquals(FRotator R)const
```

IsNearlyZero

### bool IsNearlyZero

```
bool IsNearlyZero(float Tolerance = KINDA_SMALL_NUMBER)const
```

IsZero

### bool IsZero

```
bool IsZero()const Equals
```

bool Equals(

### FRotator 	R,

```
FRotator 	R, float 	Tolerance	 = 	KINDA_SMALL_NUMBER 	) const
```

GetInverse

### FRotator GetInverse

```
FRotator GetInverse()const Clamp
```

FRotator Clamp() const

### GetNormalized

```
FRotator GetNormalized()const
```

GetDenormalized

### FRotator GetDenormalized

```
FRotator GetDenormalized()const GetWindingAndRemainder
```

void GetWindingAndRemainder(

### FRotator& 	Winding,

```
FRotator& 	Winding, FRotator& 	Remainder 	) const
```

GetManhattanDistance

### float GetManhattanDistance

```
float GetManhattanDistance(FRotator Rotator)const
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

### FRotator Compose

```
FRotator Compose(FRotator B)const
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

### FRotator& opAssign

```
FRotator& opAssign(FRotator Other)
```

Quaternion

### FQuat Quaternion

```
FQuat Quaternion()const Euler
```

FVector Euler() const

### GetForwardVector

```
FVector GetForwardVector()const
```

GetRightVector

### FVector GetRightVector

```
FVector GetRightVector()const GetUpVector
```

FVector GetUpVector() const

### RotateVector

```
FVector RotateVector(FVector V)const
```

UnrotateVector

### FVector UnrotateVector

```
FVector UnrotateVector(FVector V)const
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

MakeFromXY

### static FRotator FRotator::MakeFromXY

```
static FRotator FRotator::MakeFromXY(FVector XAxis, FVector YAxis)
```

ClampAxis

### static float FRotator::ClampAxis

```
static float FRotator::ClampAxis(float Angle)
```

MakeFromEuler

### static FRotator FRotator::MakeFromEuler

```
static FRotator FRotator::MakeFromEuler(FVector Euler)
```

MakeFromX

### static FRotator FRotator::MakeFromX

```
static FRotator FRotator::MakeFromX(FVector XAxis)
```

MakeFromY

### static FRotator FRotator::MakeFromY

```
static FRotator FRotator::MakeFromY(FVector YAxis)
```

MakeFromZ

### static FRotator FRotator::MakeFromZ

```
static FRotator FRotator::MakeFromZ(FVector ZAxis)
```

NormalizeAxis

### static float FRotator::NormalizeAxis

```
static float FRotator::NormalizeAxis(float Angle)
```

MakeFromXZ

### static FRotator FRotator::MakeFromXZ

```
static FRotator FRotator::MakeFromXZ(FVector XAxis, FVector ZAxis)
```

MakeFromYX

### static FRotator FRotator::MakeFromYX

```
static FRotator FRotator::MakeFromYX(FVector YAxis, FVector XAxis)
```

MakeFromYZ

### static FRotator FRotator::MakeFromYZ

```
static FRotator FRotator::MakeFromYZ(FVector YAxis, FVector ZAxis)
```

MakeFromZX

### static FRotator FRotator::MakeFromZX

```
static FRotator FRotator::MakeFromZX(FVector ZAxis, FVector XAxis)
```

MakeFromZY

### static FRotator FRotator::MakeFromZY

```
static FRotator FRotator::MakeFromZY(FVector ZAxis, FVector YAxis)
```

MakeFromAxes

### static FRotator FRotator::MakeFromAxes

```
static FRotator FRotator::MakeFromAxes(FVector Forward, FVector Right, FVector Up)
```
