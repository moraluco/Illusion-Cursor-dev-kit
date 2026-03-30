# UPyTestObject

**Visibility:** public

## Inheritance

UObject → UPyTestObject → UDEPRECATED_LegacyPyTestObject → UPyTestChildObject

## Description

Object to allow testing of the various UObject features that are exposed to Python wrapped types.

## PYTHON \| INTERNAL

### StringIntMap

```
TMap<FString,int> StringIntMap
```
### Int

```
int Int
```
### Float

```
float32 Float
```
### Enum

```
EPyTestEnum Enum
```
### String

```
FString String
```
### Text

```
FText Text
```
### StringArray

```
TArray<FString> StringArray
```
### StringSet

```
TSet<FString> StringSet
```
### Bool

```
bool Bool
```
### Delegate

```
FPyTestDelegate Delegate
```
### MulticastDelegate

```
FPyTestMulticastDelegate MulticastDelegate
```
### Struct

```
FPyTestStruct Struct
```
### StructArray

```
TArray<FPyTestStruct> StructArray
```
### ChildStruct

```
FPyTestChildStruct ChildStruct
```
### BoolInstanceOnly

```
bool BoolInstanceOnly
```
### BoolDefaultsOnly

```
bool BoolDefaultsOnly
```
### STATIC VARIABLES

```
STATIC VARIABLES ConstantValue static const int UPyTestObject::ConstantValue PYTHON|INTERNAL FuncTakingPyTestStructDefault void FuncTakingPyTestStructDefault(FPyTestStruct InStruct)
```

CallFuncBlueprintNative

### int CallFuncBlueprintNative

```
int CallFuncBlueprintNative(int InValue)const
```

CallFuncBlueprintNativeRef

### void CallFuncBlueprintNativeRef

```
void CallFuncBlueprintNativeRef(FPyTestStruct& InOutStruct)const
```

DelegatePropertyCallback

### int DelegatePropertyCallback

```
int DelegatePropertyCallback(int InValue)const
```

FuncBlueprintImplementable

### int FuncBlueprintImplementable

```
int FuncBlueprintImplementable(int InValue)const
```

FuncBlueprintNative

### int FuncBlueprintNative

```
int FuncBlueprintNative(int InValue)const
```

FuncBlueprintNativeRef

### void FuncBlueprintNativeRef

```
void FuncBlueprintNativeRef(FPyTestStruct& InOutStruct)const
```

FuncTakingPyTestChildStruct

### void FuncTakingPyTestChildStruct

```
void FuncTakingPyTestChildStruct(FPyTestChildStruct InStruct)const
```

FuncTakingPyTestDelegate

### int FuncTakingPyTestDelegate

```
int FuncTakingPyTestDelegate(FPyTestDelegate InDelegate, int InValue)const
```

FuncTakingPyTestStruct

### void FuncTakingPyTestStruct

```
void FuncTakingPyTestStruct(FPyTestStruct InStruct)const
```

CallFuncBlueprintImplementable

### int CallFuncBlueprintImplementable

```
int CallFuncBlueprintImplementable(int InValue)const
```

MulticastDelegatePropertyCallback

### void MulticastDelegatePropertyCallback

```
void MulticastDelegatePropertyCallback(FString InStr)const
```

EmitScriptError

### static void UPyTestObject::EmitScriptError

```
static void UPyTestObject::EmitScriptError()
```

EmitScriptWarning

### static void UPyTestObject::EmitScriptWarning

```
static void UPyTestObject::EmitScriptWarning()
```

GetConstantValue

### static int UPyTestObject::GetConstantValue

```
static int UPyTestObject::GetConstantValue()
```

ReturnArray

### static TArray<int> UPyTestObject::ReturnArray

```
static TArray<int> UPyTestObject::ReturnArray()
```

ReturnMap

### static TMap<int,bool> UPyTestObject::ReturnMap

```
static TMap<int, bool> UPyTestObject::ReturnMap()
```

ReturnSet

### static TSet<int> UPyTestObject::ReturnSet

```
static TSet<int> UPyTestObject::ReturnSet()
```

---

## FUNCTIONS

### SetName

```
void SetName(FName Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPyTestObject::StaticClass()
```
