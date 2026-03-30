# UUpgradeNiagaraScriptResults

**Visibility:** public

## Inheritance

UObject → UUpgradeNiagaraScriptResults

## Description

Wrapper class for passing results back from the version upgrade python script.

## SCRIPTING

### OldInputs

```
TArray<TObjectPtr<UNiagaraPythonScriptModuleInput>> OldInputs
```
### NewInputs

```
TArray<TObjectPtr<UNiagaraPythonScriptModuleInput>> NewInputs
```
### bCancelledByPythonError

```
bool bCancelledByPythonError
```

Whether the converter process was cancelled due to an unrecoverable error in the python script process.

---

## SCRIPTING

### SetIntInput

```
void SetIntInput(FString InputName, int Value)
```

SetBoolInput

### void SetBoolInput

```
void SetBoolInput(FString InputName, bool Value)
```

SetColorInput

### void SetColorInput

```
void SetColorInput(FString InputName, FLinearColor Value)
```

SetEnumInput

### void SetEnumInput

```
void SetEnumInput(FString InputName, FString Value)
```

SetFloatInput

### void SetFloatInput

```
void SetFloatInput(FString InputName, float32 Value)
```

GetOldInput

### UNiagaraPythonScriptModuleInput GetOldInput

```
UNiagaraPythonScriptModuleInput GetOldInput(FString InputName)
```

SetQuatInput

### void SetQuatInput

```
void SetQuatInput(FString InputName, FQuat Value)
```

SetVec2Input

### void SetVec2Input

```
void SetVec2Input(FString InputName, FVector2D Value)
```

SetVec3Input

### void SetVec3Input

```
void SetVec3Input(FString InputName, FVector Value)
```

SetVec4Input

### void SetVec4Input

```
void SetVec4Input(FString InputName, FVector4 Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UUpgradeNiagaraScriptResults::StaticClass()
```
