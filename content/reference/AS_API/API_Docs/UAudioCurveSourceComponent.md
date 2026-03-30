# UAudioCurveSourceComponent

**Visibility:** public

## Inheritance

UAudioComponent → UAudioCurveSourceComponent

## Description

An audio component that also provides curves to drive animation

## CURVES

### CurveSyncOffset

```
float32 CurveSyncOffset
```

Offset in time applied to audio position when evaluating curves

### CurveSourceBindingName

```
FName CurveSourceBindingName
```

Get the name that this curve source can be bound to by.  Clients of this curve source will use this name to identify this source.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UAudioCurveSourceComponent UAudioCurveSourceComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UAudioCurveSourceComponent UAudioCurveSourceComponent::GetOrCreate

```
static UAudioCurveSourceComponent UAudioCurveSourceComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UAudioCurveSourceComponent UAudioCurveSourceComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UAudioCurveSourceComponent::StaticClass

```
static UClass UAudioCurveSourceComponent::StaticClass()
```
