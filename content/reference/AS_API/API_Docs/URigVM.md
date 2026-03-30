# URigVM

**Visibility:** public

## Inheritance

UObject → URigVM

## Description

The RigVM is the main object for evaluating FRigVMByteCode instructions.  It combines the byte code, a list of required function pointers for execute instructions and required memory in one class.

## RIGVM

### SetParameterValueBool

```
void SetParameterValueBool(FName InParameterName, bool InValue, int InArrayIndex = 0)
```

GetParameterValueBool

### bool GetParameterValueBool

```
bool GetParameterValueBool(FName InParameterName, int InArrayIndex = 0)
```

GetParameterValueDouble

### float GetParameterValueDouble

```
float GetParameterValueDouble(FName InParameterName, int InArrayIndex = 0)
```

GetParameterValueFloat

### float32 GetParameterValueFloat

```
float32 GetParameterValueFloat(FName InParameterName, int InArrayIndex = 0)
```

GetParameterValueInt

### int GetParameterValueInt

```
int GetParameterValueInt(FName InParameterName, int InArrayIndex = 0)
```

GetParameterValueName

### FName GetParameterValueName

```
FName GetParameterValueName(FName InParameterName, int InArrayIndex = 0)
```

GetParameterValueQuat

### FQuat GetParameterValueQuat

```
FQuat GetParameterValueQuat(FName InParameterName, int InArrayIndex = 0)
```

GetParameterValueString

### FString GetParameterValueString

```
FString GetParameterValueString(FName InParameterName, int InArrayIndex = 0)
```

GetParameterValueTransform

### FTransform GetParameterValueTransform

```
FTransform GetParameterValueTransform(FName InParameterName, int InArrayIndex = 0)
```

GetParameterValueVector

### FVector GetParameterValueVector

```
FVector GetParameterValueVector(FName InParameterName, int InArrayIndex = 0)
```

GetParameterValueVector2D

### FVector2D GetParameterValueVector2D

```
FVector2D GetParameterValueVector2D(FName InParameterName, int InArrayIndex = 0)
```

Execute

### bool Execute

```
bool Execute(FName InEntryName = NAME_None)
```

Executes the VM.  You can optionally provide external memory to the execution and provide optional additional operands.

### SetParameterValueDouble

```
void SetParameterValueDouble(FName InParameterName, float InValue, int InArrayIndex = 0)
```

SetParameterValueFloat

### void SetParameterValueFloat

```
void SetParameterValueFloat(FName InParameterName, float32 InValue, int InArrayIndex = 0)
```

SetParameterValueInt

### void SetParameterValueInt

```
void SetParameterValueInt(FName InParameterName, int InValue, int InArrayIndex = 0)
```

SetParameterValueName

### void SetParameterValueName

```
void SetParameterValueName(FName InParameterName, FName InValue, int InArrayIndex = 0)
```

SetParameterValueQuat

### void SetParameterValueQuat

```
void SetParameterValueQuat(FName InParameterName, FQuat InValue, int InArrayIndex = 0)
```

SetParameterValueString

### void SetParameterValueString

```
void SetParameterValueString(FName InParameterName, FString InValue, int InArrayIndex = 0)
```

SetParameterValueTransform

### void SetParameterValueTransform

```
void SetParameterValueTransform(FName InParameterName, FTransform InValue, int InArrayIndex = 0)
```

SetParameterValueVector

### void SetParameterValueVector

```
void SetParameterValueVector(FName InParameterName, FVector InValue, int InArrayIndex = 0)
```

SetParameterValueVector2D

### void SetParameterValueVector2D

```
void SetParameterValueVector2D(FName InParameterName, FVector2D InValue, int InArrayIndex = 0)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVM::StaticClass()
```
