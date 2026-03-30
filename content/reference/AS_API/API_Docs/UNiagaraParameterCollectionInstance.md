# UNiagaraParameterCollectionInstance

**Visibility:** public

## Inheritance

UObject → UNiagaraParameterCollectionInstance → INSTANCE → Collection

## Description

UNiagaraParameterCollection Collection

TODO: Abstract to some interface to allow a hierarchy like UMaterialInstance?

## NIAGARA

### SetBoolParameter

```
void SetBoolParameter(FString InVariableName, bool InValue)
```

GetColorParameter

### FLinearColor GetColorParameter

```
FLinearColor GetColorParameter(FString InVariableName)
```

GetFloatParameter

### float32 GetFloatParameter

```
float32 GetFloatParameter(FString InVariableName)
```

GetIntParameter

### int GetIntParameter

```
int GetIntParameter(FString InVariableName)
```

GetQuatParameter

### FQuat GetQuatParameter

```
FQuat GetQuatParameter(FString InVariableName)
```

GetVector2DParameter

### FVector2D GetVector2DParameter

```
FVector2D GetVector2DParameter(FString InVariableName)
```

GetVector4Parameter

### FVector4 GetVector4Parameter

```
FVector4 GetVector4Parameter(FString InVariableName)
```

GetVectorParameter

### FVector GetVectorParameter

```
FVector GetVectorParameter(FString InVariableName)
```

GetBoolParameter

### bool GetBoolParameter

```
bool GetBoolParameter(FString InVariableName)
```

Accessors from Blueprint. For now just exposing common types but ideally we can expose any somehow in future.

### SetColorParameter

```
void SetColorParameter(FString InVariableName, FLinearColor InValue)
```

SetFloatParameter

### void SetFloatParameter

```
void SetFloatParameter(FString InVariableName, float32 InValue)
```

SetIntParameter

### void SetIntParameter

```
void SetIntParameter(FString InVariableName, int InValue)
```

SetQuatParameter

### void SetQuatParameter

```
void SetQuatParameter(FString InVariableName, FQuat InValue)
```

SetVector2DParameter

### void SetVector2DParameter

```
void SetVector2DParameter(FString InVariableName, FVector2D InValue)
```

SetVector4Parameter

### void SetVector4Parameter

```
void SetVector4Parameter(FString InVariableName, FVector4 InValue)
```

TODO[mg]: add position setter for LWC

### SetVectorParameter

```
void SetVectorParameter(FString InVariableName, FVector InValue)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraParameterCollectionInstance::StaticClass()
```
