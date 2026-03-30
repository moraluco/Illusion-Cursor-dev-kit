# USubmixEffectFilterPreset

**Visibility:** public

## Inheritance

USoundEffectSubmixPreset → USubmixEffectFilterPreset

## Description

USubmixEffectFilterPreset Class which processes audio streams and uses parameters defined in the preset class.

## SUBMIXEFFECTPRESET

### Settings

```
FSubmixEffectFilterSettings Settings AUDIO|EFFECTS|FILTER SetFilterQMod void SetFilterQMod(float32 InQ)
```

Sets the filter Q

### SetFilterCutoffFrequency

```
void SetFilterCutoffFrequency(float32 InFrequency)
```

Sets the base filter cutoff frequency

### SetFilterCutoffFrequencyMod

```
void SetFilterCutoffFrequencyMod(float32 InFrequency)
```

Sets the mod filter cutoff frequency

### SetFilterQ

```
void SetFilterQ(float32 InQ)
```

Sets the filter Q

### SetFilterAlgorithm

```
void SetFilterAlgorithm(ESubmixFilterAlgorithm InAlgorithm)
```

Sets the filter algorithm

### SetFilterType

```
void SetFilterType(ESubmixFilterType InType)
```

Sets the filter type

### SetSettings

```
void SetSettings(FSubmixEffectFilterSettings InSettings)
```

Set all filter effect settings

---

## FUNCTIONS

### GetSettings

```
const FSubmixEffectFilterSettings& GetSettings()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USubmixEffectFilterPreset::StaticClass()
```
