# UCurveSourceInterface

**Visibility:** public

## Inheritance

UInterface → UCurveSourceInterface → CURVES → BindingName

## Description

const FName BindingName

Get the name that this curve source can be bound to by.  Clients of this curve source will use this name to identify this source.

## CURVES

### GetCurves

```
void GetCurves(TArray<FNamedCurveValue>& OutValues)const
```

Evaluate all curves that this source provides

### GetCurveValue

```
float32 GetCurveValue(FName CurveName)const
```

Get the value for a specified curve

### GetBindingName

```
FName GetBindingName()const
```

Get the name that this curve source can be bound to by.  Clients of this curve source will use this name to identify this source.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCurveSourceInterface::StaticClass()
```
