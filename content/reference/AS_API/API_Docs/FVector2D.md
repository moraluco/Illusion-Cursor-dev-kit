# FVector2D

## Inheritance

FVector2D → VARIABLES → AbsMax

## Description

const float AbsMax Min const float Min Abs const FVector2D Abs SignVector const FVector2D SignVector Max const float Max STATIC VARIABLES UnitVector static const FVector2D FVector2D::UnitVector ZeroVector static const FVector2D FVector2D::ZeroVector

## FUNCTIONS

### Equals

```
bool Equals(FVector2D Other, float Tolerance = KINDA_SMALL_NUMBER)const
```

opAdd

### FVector2D opAdd

```
FVector2D opAdd(FVector2D Other)const
```

opSub

### FVector2D opSub

```
FVector2D opSub(FVector2D Other)const
```

opMul

### FVector2D opMul

```
FVector2D opMul(FVector2D Other)const
```

opDiv

### FVector2D opDiv

```
FVector2D opDiv(FVector2D Other)const
```

opMul

### FVector2D opMul

```
FVector2D opMul(float Scale)const
```

opDiv

### FVector2D opDiv

```
FVector2D opDiv(float Scale)const
```

opAdd

### FVector2D opAdd

```
FVector2D opAdd(float Bias)const
```

opSub

### FVector2D opSub

```
FVector2D opSub(float Bias)const
```

opNeg

### FVector2D opNeg

```
FVector2D opNeg()const opMulAssign
```

FVector2D opMulAssign(

### float 	Scale

```
float 	Scale 	) const
```

opDivAssign

### FVector2D opDivAssign

```
FVector2D opDivAssign(float Scale)const
```

opMulAssign

### FVector2D opMulAssign

```
FVector2D opMulAssign(FVector2D Other)const
```

opDivAssign

### FVector2D opDivAssign

```
FVector2D opDivAssign(FVector2D Other)const
```

opAddAssign

### FVector2D opAddAssign

```
FVector2D opAddAssign(FVector2D Other)const
```

opSubAssign

### FVector2D opSubAssign

```
FVector2D opSubAssign(FVector2D Other)const
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
bool opEquals(FVector2D Other)const
```

opAssign

### FVector2D& opAssign

```
FVector2D& opAssign(FVector2D Other)
```

CrossProduct

### float CrossProduct

```
float CrossProduct(FVector2D Other)const
```

DotProduct

### float DotProduct

```
float DotProduct(FVector2D Other)const
```

GetMax

### float GetMax

```
float GetMax()const GetAbsMax
```

float GetAbsMax() const

### GetMin

```
float GetMin()const
```

GetAbs

### FVector2D GetAbs

```
FVector2D GetAbs()const Size
```

float Size() const

### SizeSquared

```
float SizeSquared()const
```

IsNearlyZero

### bool IsNearlyZero

```
bool IsNearlyZero(float Tolerance = KINDA_SMALL_NUMBER)const
```

IsZero

### bool IsZero

```
bool IsZero()const Normalize
```

void Normalize(

### float 	Tolerance	 = 	SMALL_NUMBER

```
float 	Tolerance	 = 	SMALL_NUMBER 	)
```

GetSafeNormal

### FVector2D GetSafeNormal

```
FVector2D GetSafeNormal(float Tolerance = SMALL_NUMBER)const
```

ContainsNaN

### bool ContainsNaN

```
bool ContainsNaN()const GetSignVector
```

FVector2D GetSignVector() const

### Distance

```
float Distance(FVector2D Other)const
```

DistSquared

### float DistSquared

```
float DistSquared(FVector2D Other)const
```

GetClampedToMaxSize

### FVector2D GetClampedToMaxSize

```
FVector2D GetClampedToMaxSize(float Max)const
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
