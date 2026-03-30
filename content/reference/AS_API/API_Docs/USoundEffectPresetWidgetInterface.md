# USoundEffectPresetWidgetInterface

**Visibility:** public

## Inheritance

UAudioPanelWidgetInterface → USoundEffectPresetWidgetInterface → VARIABLES → Class

## Description

const TSubclassOf<USoundEffectPreset> Class

Returns the class of Preset the widget supports

## FUNCTIONS

### OnConstructed

```
void OnConstructed(USoundEffectPreset Preset)
```

Called when the preset widget is constructed

### OnPropertyChanged

```
void OnPropertyChanged(USoundEffectPreset Preset, FName PropertyName)
```

Called when the preset object is changed

### GetClass

```
TSubclassOf<USoundEffectPreset> GetClass()
```

Returns the class of Preset the widget supports

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundEffectPresetWidgetInterface::StaticClass()
```
