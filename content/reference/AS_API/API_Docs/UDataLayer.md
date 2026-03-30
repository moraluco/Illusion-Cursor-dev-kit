# UDataLayer

**Visibility:** public

## Inheritance

UObject → UDataLayer

## Description

DATA LAYER|ADVANCED|RUNTIME DebugColor FColor DebugColor InitialRuntimeState EDataLayerRuntimeState InitialRuntimeState

## VARIABLES

### DataLayerLabel

```
const FName DataLayerLabel
```

The display name of the Data Layer

### DATA LAYER

```
DATA LAYER GetDataLayerLabel FName GetDataLayerLabel()const
```

Equals

### bool Equals

```
bool Equals(FActorDataLayer ActorDataLayer)const
```

DATA LAYER|EDITOR

### IsVisible

```
bool IsVisible()const
```

IsEffectiveVisible

### bool IsEffectiveVisible

```
bool IsEffectiveVisible()const IsInitiallyVisible
```

bool IsInitiallyVisible() const

### DATA LAYER|RUNTIME

```
DATA LAYER|RUNTIME IsRuntime bool IsRuntime()const
```

GetDebugColor

### FColor GetDebugColor

```
FColor GetDebugColor()const GetInitialRuntimeState
```

EDataLayerRuntimeState GetInitialRuntimeState() const

---

## FUNCTIONS

### SetbIsInitiallyVisible

```
void SetbIsInitiallyVisible(bool Value)
```

SetbIsInitiallyLoadedInEditor

### void SetbIsInitiallyLoadedInEditor

```
void SetbIsInitiallyLoadedInEditor(bool Value)
```

SetbIsRuntime

### void SetbIsRuntime

```
void SetbIsRuntime(bool Value)
```

SetInitialRuntimeState

### void SetInitialRuntimeState

```
void SetInitialRuntimeState(const EDataLayerRuntimeState& Value)
```

SetDebugColor

### void SetDebugColor

```
void SetDebugColor(FColor Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDataLayer::StaticClass()
```
