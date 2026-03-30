# FVector2f

## Inheritance

FVector2f → VARIABLES → AbsMax

## Description

const float32 AbsMax Min const float32 Min Abs const FVector2f Abs SignVector const FVector2f SignVector Max const float32 Max STATIC VARIABLES UnitVector static const FVector2f FVector2f::UnitVector ZeroVector static const FVector2f FVector2f::ZeroVector

## FUNCTIONS

### Equals

```
bool Equals(FVector2f Other, float32 Tolerance = KINDA_SMALL_NUMBER)const
```

opAdd

### FVector2f opAdd

```
FVector2f opAdd(FVector2f Other)const
```

opSub

### FVector2f opSub

```
FVector2f opSub(FVector2f Other)const
```

opMul

### FVector2f opMul

```
FVector2f opMul(FVector2f Other)const
```

opDiv

### FVector2f opDiv

```
FVector2f opDiv(FVector2f Other)const
```

opMul

### FVector2f opMul

```
FVector2f opMul(float32 Scale)const
```

opDiv

### FVector2f opDiv

```
FVector2f opDiv(float32 Scale)const
```

opAdd

### FVector2f opAdd

```
FVector2f opAdd(float32 Bias)const
```

opSub

### FVector2f opSub

```
FVector2f opSub(float32 Bias)const
```

opNeg

### FVector2f opNeg

```
FVector2f opNeg()const opMulAssign
```

FVector2f opMulAssign(

### float32 	Scale

```
float32 	Scale 	) const
```

opDivAssign

### FVector2f opDivAssign

```
FVector2f opDivAssign(float32 Scale)const
```

opMulAssign

### FVector2f opMulAssign

```
FVector2f opMulAssign(FVector2f Other)const
```

opDivAssign

### FVector2f opDivAssign

```
FVector2f opDivAssign(FVector2f Other)const
```

opAddAssign

### FVector2f opAddAssign

```
FVector2f opAddAssign(FVector2f Other)const
```

opSubAssign

### FVector2f opSubAssign

```
FVector2f opSubAssign(FVector2f Other)const
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
bool opEquals(FVector2f Other)const
```

opAssign

### FVector2f& opAssign

```
FVector2f& opAssign(FVector2f Other)
```

CrossProduct

### float32 CrossProduct

```
float32 CrossProduct(FVector2f Other)const
```

DotProduct

### float32 DotProduct

```
float32 DotProduct(FVector2f Other)const
```

GetMax

### float32 GetMax

```
float32 GetMax()const GetAbsMax
```

float32 GetAbsMax() const

### GetMin

```
float32 GetMin()const
```

GetAbs

### FVector2f GetAbs

```
FVector2f GetAbs()const Size
```

float32 Size() const

### SizeSquared

```
float32 SizeSquared()const
```

IsNearlyZero

### bool IsNearlyZero

```
bool IsNearlyZero(float32 Tolerance = KINDA_SMALL_NUMBER)const
```

IsZero

### bool IsZero

```
bool IsZero()const Normalize
```

void Normalize(

### float32 	Tolerance	 = 	SMALL_NUMBER

```
float32 	Tolerance	 = 	SMALL_NUMBER 	)
```

GetSafeNormal

### FVector2f GetSafeNormal

```
FVector2f GetSafeNormal(float32 Tolerance = SMALL_NUMBER)const
```

ContainsNaN

### bool ContainsNaN

```
bool ContainsNaN()const GetSignVector
```

FVector2f GetSignVector() const

### Distance

```
float32 Distance(FVector2f Other)const
```

DistSquared

### float32 DistSquared

```
float32 DistSquared(FVector2f Other)const
```

GetClampedToMaxSize

### FVector2f GetClampedToMaxSize

```
FVector2f GetClampedToMaxSize(float32 Max)const
```

InitFromString

### bool InitFromString

```
bool InitFromString(FString SourceString)const
```

ToString

### FString ToString

```
FString ToString()const
```
