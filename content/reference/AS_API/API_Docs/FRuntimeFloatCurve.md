# FRuntimeFloatCurve

## Inheritance

FRuntimeFloatCurve → VARIABLES → NumKeys

## Description

const int NumKeys

## MATH \| CURVES

### GetNumKeys

```
int GetNumKeys()const
```

AddDefaultKey

### void AddDefaultKey

```
void AddDefaultKey(float32 InTime, float32 InValue)
```

Equals

### bool Equals

```
bool Equals(FRuntimeFloatCurve Other)const
```

GetFloatValue

### float32 GetFloatValue

```
float32 GetFloatValue(float32 InTime, float32 DefaultValue = 0.000000)const
```

Evaluate this float curve at the specified time

### GetTimeRange

```
void GetTimeRange(float32& MinTime, float32& MaxTime)const
```

GetTimeRange

### void GetTimeRange

```
void GetTimeRange(float& MinTime, float& MaxTime)const
```

GetValueRange

### void GetValueRange

```
void GetValueRange(float32& MinValue, float32& MaxValue)const
```

GetValueRange

### void GetValueRange

```
void GetValueRange(float& MinValue, float& MaxValue)const
```

---

## FUNCTIONS

### opAssign

```
FRuntimeFloatCurve& opAssign(FRuntimeFloatCurve Other)
```
