# FLinearColor

## Inheritance

FLinearColor → VARIABLES → Max

## Description

const float32 Max Luminance const float32 Luminance Min const float32 Min STATIC VARIABLES Gray static FLinearColor FLinearColor::Gray Black static FLinearColor FLinearColor::Black Transparent static FLinearColor FLinearColor::Transparent White static FLinearColor FLinearColor::White Red static FLinearColor FLinearColor::Red Green static FLinearColor FLinearColor::Green Blue static FLinearColor FLinearColor::Blue Yellow static FLinearColor FLinearColor::Yellow LucBlue static FLinearColor FLinearColor::LucBlue DPink static FLinearColor FLinearColor::DPink Teal static FLinearColor FLinearColor::Teal Purple static FLinearColor FLinearColor::Purple

## FUNCTIONS

### GetClamped

```
FLinearColor GetClamped(float32 InMin = 0.f, float32 InMax = 1.f)
```

opAdd

### FLinearColor opAdd

```
FLinearColor opAdd(FLinearColor ColorB)const
```

opAddAssign

### FLinearColor opAddAssign

```
FLinearColor opAddAssign(FLinearColor ColorB)
```

opSub

### FLinearColor opSub

```
FLinearColor opSub(FLinearColor ColorB)const
```

opSubAssign

### FLinearColor opSubAssign

```
FLinearColor opSubAssign(FLinearColor ColorB)
```

opMul

### FLinearColor opMul

```
FLinearColor opMul(FLinearColor ColorB)const
```

opMulAssign

### FLinearColor opMulAssign

```
FLinearColor opMulAssign(FLinearColor ColorB)
```

opMul

### FLinearColor opMul

```
FLinearColor opMul(float32 Scalar)const
```

opMulAssign

### FLinearColor opMulAssign

```
FLinearColor opMulAssign(float32 Scalar)
```

opDiv

### FLinearColor opDiv

```
FLinearColor opDiv(FLinearColor ColorB)const
```

opDivAssign

### FLinearColor opDivAssign

```
FLinearColor opDivAssign(FLinearColor ColorB)
```

opDiv

### FLinearColor opDiv

```
FLinearColor opDiv(float32 Scalar)const
```

opDivAssign

### FLinearColor opDivAssign

```
FLinearColor opDivAssign(float32 Scalar)
```

opEquals

### bool opEquals

```
bool opEquals(FLinearColor ColorB)const
```

opAssign

### FLinearColor& opAssign

```
FLinearColor& opAssign(FLinearColor Other)
```

Equals

### bool Equals

```
bool Equals(FLinearColor ColorB, float32 Tolerance = KINDA_SMALL_NUMBER)const
```

IsAlmostBlack

### bool IsAlmostBlack

```
bool IsAlmostBlack()const GetMin
```

float32 GetMin() const

### GetMax

```
float32 GetMax()const
```

GetLuminance

### float32 GetLuminance

```
float32 GetLuminance()const LinearRGBToHSV
```

FLinearColor LinearRGBToHSV() const

### HSVToLinearRGB

```
FLinearColor HSVToLinearRGB()const
```

ToFColor

### FColor ToFColor

```
FColor ToFColor(bool bSRGB)const
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

MakeFromColorTemperature

### static FLinearColor FLinearColor::MakeFromColorTemperature

```
static FLinearColor FLinearColor::MakeFromColorTemperature(float32 Temp)
```

MakeFromHSV8

### static FLinearColor FLinearColor::MakeFromHSV8

```
static FLinearColor FLinearColor::MakeFromHSV8(uint8 H, uint8 S, uint8 V)
```

LerpUsingHSV

### static FLinearColor FLinearColor::LerpUsingHSV

```
static FLinearColor FLinearColor::LerpUsingHSV(FLinearColor From, FLinearColor To, float32 Progress)
```

MakeFromHex

### static FLinearColor FLinearColor::MakeFromHex

```
static FLinearColor FLinearColor::MakeFromHex(uint HexColor)
```

MakeRandomColor

### static FLinearColor FLinearColor::MakeRandomColor

```
static FLinearColor FLinearColor::MakeRandomColor()
```
