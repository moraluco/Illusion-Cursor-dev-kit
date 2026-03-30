# FColor

## Inheritance

FColor

## Description

STATIC VARIABLES Cyan static FColor FColor::Cyan Black static FColor FColor::Black Transparent static FColor FColor::Transparent Red static FColor FColor::Red Green static FColor FColor::Green Blue static FColor FColor::Blue Yellow static FColor FColor::Yellow White static FColor FColor::White Magenta static FColor FColor::Magenta Orange static FColor FColor::Orange Purple static FColor FColor::Purple Turquoise static FColor FColor::Turquoise Silver static FColor FColor::Silver Emerald static FColor FColor::Emerald

## FUNCTIONS

### opAssign

```
FColor& opAssign(FColor Other)
```

opAddAssign

### void opAddAssign

```
void opAddAssign(FColor ColorB)const
```

ToHex

### FString ToHex

```
FString ToHex()const InitFromString
```

bool InitFromString(

### FString 	SourceString

```
FString 	SourceString 	) const
```

FromRGBE

### FLinearColor FromRGBE

```
FLinearColor FromRGBE()const ReinterpretAsLinear
```

FLinearColor ReinterpretAsLinear() const

### opEquals

```
bool opEquals(FColor ColorB)const
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

MakeRandomColor

### static FColor FColor::MakeRandomColor

```
static FColor FColor::MakeRandomColor()
```

MakeRedToGreenColorFromScalar

### static FColor FColor::MakeRedToGreenColorFromScalar

```
static FColor FColor::MakeRedToGreenColorFromScalar(float32 Scalar)
```

MakeFromColorTemperature

### static FColor FColor::MakeFromColorTemperature

```
static FColor FColor::MakeFromColorTemperature(float32 Temp)
```

FromHex

### static FColor FColor::FromHex

```
static FColor FColor::FromHex(FString HexString)
```
