# UNiagaraEditorSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UNiagaraEditorSettings → EXPERIMENTAL

## Description

bEnableBaker bool bEnableBaker

Enables the Niagara Baker to be used within the system editor.

## NIAGARA

### DefaultFunctionScript

```
FSoftObjectPath DefaultFunctionScript
```

Niagara script to duplicate as the base of all new script assets created.

### DefaultModuleScript

```
FSoftObjectPath DefaultModuleScript
```

Niagara script to duplicate as the base of all new script assets created.

### RequiredSystemUpdateScript

```
FSoftObjectPath RequiredSystemUpdateScript
```

Niagara script which is required in the system update script to control system state.

### GraphCreationShortcuts

```
TArray<FNiagaraSpawnShortcut> GraphCreationShortcuts
```

Shortcut key bindings that if held down while doing a mouse click, will spawn the specified type of Niagara node.

### DefaultDynamicInputScript

```
FSoftObjectPath DefaultDynamicInputScript
```

Niagara script to duplicate as the base of all new script assets created.

### bAutoCompile

```
bool bAutoCompile
```

Whether or not auto-compile is enabled in the editors.

### CurveTemplates

```
TArray<FNiagaraCurveTemplate> CurveTemplates
```
### DefaultScript

```
FSoftObjectPath DefaultScript
```

Niagara script to duplicate as the base of all new script assets created.

### PlaybackSpeeds

```
TArray<float32> PlaybackSpeeds
```

Speeds used for slowing down and speeding up the playback speeds

### bDisplayAdvancedParameterPanelCategories

```
bool bDisplayAdvancedParameterPanelCategories
```

Whether or not to display advanced categories for the parameter panel.

### COLORS

```
NIAGARA COLORS
```
### ActionColors

```
FNiagaraActionColors ActionColors
```

---

## SIMULATIONOPTIONS

### bResetDependentSystemsWhenEditingEmitters

```
bool bResetDependentSystemsWhenEditingEmitters
```

Whether or not to reset all components that include the system currently being reset.

### bResimulateOnChangeWhilePaused

```
bool bResimulateOnChangeWhilePaused
```

Whether or not to rerun the simulation to the current time when making modifications while paused.

### bResetSimulationOnChange

```
bool bResetSimulationOnChange
```

Whether or not the simulation should reset when a value on the emitter or system is changed.

### bAutoPlay

```
bool bAutoPlay
```

Whether or not simulations should start playing automatically when the emitter or system editor is opened, or when the data is changed in the editor.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraEditorSettings::StaticClass()
```
