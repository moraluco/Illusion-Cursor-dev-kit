# USubmixEffectMultibandCompressorPreset

**Visibility:** public

## Inheritance

USoundEffectSubmixPreset → USubmixEffectMultibandCompressorPreset → SUBMIXEFFECTPRESET → Settings

## Description

FSubmixEffectMultibandCompressorSettings Settings

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
void SetSettings(FSubmixEffectMultibandCompressorSettings InSettings)
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
const FSubmixEffectMultibandCompressorSettings& GetSettings()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USubmixEffectMultibandCompressorPreset::StaticClass()
```
