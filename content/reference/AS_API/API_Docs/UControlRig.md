# UControlRig

**Visibility:** public

## Inheritance

UObject → UControlRig → UAdditiveControlRig → UFKControlRig

## Description

Runs logic for mapping input data to transforms (the "Rig")

## Members

### RIG

```
CONTROL RIG
```

AbsoluteTime const float32 AbsoluteTime

### Gets the current absolute time

```
Gets the current absolute time
```

CurrentFramesPerSecond

### const float32 CurrentFramesPerSecond

```
const float32 CurrentFramesPerSecond
```

Returns the current frames per second (this may change over time)

### Hierarchy

```
const URigHierarchy Hierarchy
```
### ScriptAccessibleVariables

```
const TArray<FName> ScriptAccessibleVariables
```

Returns the names of variables accessible in scripting

### SupportedEvents

```
const TArray<FName> SupportedEvents
```

---

## DEFAULT

### AssetUserData

```
TArray<TObjectPtr<UAssetUserData>> AssetUserData
```

Array of user data stored with the asset

---

## INTERACTION

### InteractionRigClass

```
TSubclassOf<UControlRig> InteractionRigClass
```
### InteractionRig

```
UControlRig InteractionRig
```

---

## VARIABLES

---

## VM

### const URigVM VM

```
const URigVM VM CONTROL RIG IsControlSelected bool IsControlSelected(FName InControlName)const
```

ClearControlSelection

### bool ClearControlSelection

```
bool ClearControlSelection()
```

CurrentControlSelection

### TArray<FName> CurrentControlSelection

```
TArray<FName> CurrentControlSelection()const Execute
```

void Execute(

### EControlRigState 	State,

```
EControlRigState 	State, FName 	InEventName 	)
```

Execute

### GetAbsoluteTime

```
float32 GetAbsoluteTime()const
```

Gets the current absolute time

### GetCurrentFramesPerSecond

```
float32 GetCurrentFramesPerSecond()const
```

Returns the current frames per second (this may change over time)

### GetHierarchy

```
URigHierarchy GetHierarchy()
```

SelectControl

### void SelectControl

```
void SelectControl(FName InControlName, bool bSelect = true)
```

SetAbsoluteAndDeltaTime

### void SetAbsoluteAndDeltaTime

```
void SetAbsoluteAndDeltaTime(float32 InAbsoluteTime, float32 InDeltaTime)
```

Set the current absolute and delta times

### GetScriptAccessibleVariables

```
TArray<FName> GetScriptAccessibleVariables()const
```

Returns the names of variables accessible in scripting

### GetSupportedEvents

```
TArray<FName> GetSupportedEvents()const
```

GetVariableAsString

### FString GetVariableAsString

```
FString GetVariableAsString(FName InVariableName)const
```

Returns the value of a given variable as a string

### GetVariableType

```
FName GetVariableType(FName InVariableName)const
```

Returns the type of a given variable

### GetVM

```
URigVM GetVM()
```

CanExecute

### bool CanExecute

```
bool CanExecute()const
```

Is valid for execution

### RequestInit

```
void RequestInit()
```

Requests to perform an init during the next execution

### RequestSetup

```
void RequestSetup()
```

Requests to perform a setup during the next execution

### SetFramesPerSecond

```
void SetFramesPerSecond(float32 InFramesPerSecond)
```

Set the current fps

### SetAbsoluteTime

```
void SetAbsoluteTime(float32 InAbsoluteTime, bool InSetDeltaTimeZero = false)
```

Set the current absolute time

### SetDeltaTime

```
void SetDeltaTime(float32 InDeltaTime)
```

Set the current delta time

### SetVariableFromString

```
bool SetVariableFromString(FName InVariableName, FString InValue)
```

Returns the value of a given variable as a string

### SupportsEvent

```
bool SupportsEvent(FName InEventName)const
```

---

## CONTROLRIG

### FindControlRigs

```
static TArray<UControlRig> UControlRig::FindControlRigs(UObject Outer, TSubclassOf<UControlRig> OptionalClass)
```

---

## FUNCTIONS

### SetInteractionRigClass

```
void SetInteractionRigClass(TSubclassOf<UControlRig> InInteractionRigClass)
```

GetInteractionRig

### UControlRig GetInteractionRig

```
UControlRig GetInteractionRig()const GetInteractionRigClass
```

TSubclassOf<UControlRig> GetInteractionRigClass() const

### SetInteractionRig

```
void SetInteractionRig(UControlRig InInteractionRig)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UControlRig::StaticClass()
```
