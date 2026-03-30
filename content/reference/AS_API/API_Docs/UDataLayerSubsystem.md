# UDataLayerSubsystem

**Visibility:** public

## Inheritance

UWorldSubsystem → UDataLayerSubsystem → VARIABLES → OnDataLayerRuntimeStateChanged

## Description

FOnDataLayerRuntimeStateChanged OnDataLayerRuntimeStateChanged

Called when a Data Layer changes state.

## DATALAYERS

### GetDataLayerRuntimeState

```
EDataLayerRuntimeState GetDataLayerRuntimeState(FActorDataLayer InDataLayer)const
```

Get the Data Layer state using its name.

### GetDataLayerEffectiveRuntimeState

```
EDataLayerRuntimeState GetDataLayerEffectiveRuntimeState(FActorDataLayer InDataLayer)const
```

Get the Data Layer effective state using its name.

### GetDataLayerEffectiveRuntimeStateByLabel

```
EDataLayerRuntimeState GetDataLayerEffectiveRuntimeStateByLabel(FName InDataLayerLabel)const
```

Get the Data Layer effective state using its label.

### GetDataLayerFromLabel

```
UDataLayer GetDataLayerFromLabel(FName InDataLayerLabel)const
```

Find a Data Layer by label.

### GetDataLayerFromName

```
UDataLayer GetDataLayerFromName(FName InDataLayerName)const
```

Find a Data Layer by name.

### GetDataLayer

```
UDataLayer GetDataLayer(FActorDataLayer InDataLayer)const
```

Find a Data Layer by name.

### GetDataLayerRuntimeStateByLabel

```
EDataLayerRuntimeState GetDataLayerRuntimeStateByLabel(FName InDataLayerLabel)const
```

Get the Data Layer state using its label.

### SetDataLayerRuntimeState

```
void SetDataLayerRuntimeState(FActorDataLayer InDataLayer, EDataLayerRuntimeState InState, bool bInIsRecursive = false)
```

Set the Data Layer state using its name.

### SetDataLayerRuntimeStateByLabel

```
void SetDataLayerRuntimeStateByLabel(FName InDataLayerLabel, EDataLayerRuntimeState InState, bool bInIsRecursive = false)
```

Set the Data Layer state using its label.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UDataLayerSubsystem UDataLayerSubsystem::Get()
```

StaticClass

### static UClass UDataLayerSubsystem::StaticClass

```
static UClass UDataLayerSubsystem::StaticClass()
```
