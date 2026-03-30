# USubmixEffectDynamicsProcessorPreset

**Visibility:** public

## Inheritance

USoundEffectSubmixPreset → USubmixEffectDynamicsProcessorPreset → SUBMIXEFFECTPRESET → Settings

## Description

FSubmixEffectDynamicsProcessorSettings Settings

## AUDIO \| EFFECTS

### SetAudioBus

```
void SetAudioBus(UAudioBus AudioBus)
```

Sets the source key input as the provided AudioBus' output.  If no object is provided, key is set to effect's input.

### SetExternalSubmix

```
void SetExternalSubmix(USoundSubmix Submix)
```

Sets the source key input as the provided Submix's output.  If no object is provided, key is set to effect's input.

### SetSettings

```
void SetSettings(FSubmixEffectDynamicsProcessorSettings Settings)
```

ResetKey

### void ResetKey

```
void ResetKey()
```

---

## FUNCTIONS

### GetSettings

```
const FSubmixEffectDynamicsProcessorSettings& GetSettings()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USubmixEffectDynamicsProcessorPreset::StaticClass()
```
