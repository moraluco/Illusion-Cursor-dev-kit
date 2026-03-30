# UPlayerInput

**Visibility:** public

## Inheritance

UObject → UPlayerInput

## Description

Object within PlayerController that processes player input.  Only exists on the client in network games.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Gameplay​/Input​/index​.html

## VARIABLES

### MouseSensitivityY

```
const float32 MouseSensitivityY MouseSensitivityX const float32 MouseSensitivityX FUNCTIONS GetMouseSensitivityX float32 GetMouseSensitivityX()
```

AddAxisMapping

### void AddAxisMapping

```
void AddAxisMapping(FInputAxisKeyMapping KeyMapping)
```

ForceRebuildingKeyMaps

### void ForceRebuildingKeyMaps

```
void ForceRebuildingKeyMaps(bool bRestoreDefaults = false)
```

GetEngineDefinedActionMappings

### const TArray<FInputActionKeyMapping>& GetEngineDefinedActionMappings

```
const TArray<FInputActionKeyMapping>& GetEngineDefinedActionMappings(const FName ActionName)
```

GetEngineDefinedAxisMappings

### const TArray<FInputAxisKeyMapping>& GetEngineDefinedAxisMappings

```
const TArray<FInputAxisKeyMapping>& GetEngineDefinedAxisMappings(const FName AxisName)
```

GetKeysForAction

### const TArray<FInputActionKeyMapping>& GetKeysForAction

```
const TArray<FInputActionKeyMapping>& GetKeysForAction(const FName ActionName)
```

GetKeysForAxis

### const TArray<FInputAxisKeyMapping>& GetKeysForAxis

```
const TArray<FInputAxisKeyMapping>& GetKeysForAxis(const FName AxisName)
```

AddActionMapping

### void AddActionMapping

```
void AddActionMapping(FInputActionKeyMapping KeyMapping)
```

GetMouseSensitivityY

### float32 GetMouseSensitivityY

```
float32 GetMouseSensitivityY()
```

InvertAxis

### void InvertAxis

```
void InvertAxis(const FName AxisName)
```

RemoveActionMapping

### void RemoveActionMapping

```
void RemoveActionMapping(FInputActionKeyMapping KeyMapping)
```

RemoveAxisMapping

### void RemoveAxisMapping

```
void RemoveAxisMapping(FInputAxisKeyMapping KeyMapping)
```

SetMouseSensitivity

### void SetMouseSensitivity

```
void SetMouseSensitivity(float32 Sensitivity)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPlayerInput::StaticClass()
```
