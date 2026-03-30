# USubmixEffectDelayPreset

**Visibility:** public

## Inheritance

USoundEffectSubmixPreset → USubmixEffectDelayPreset

## Description

USubmixEffectDelayPreset Class which processes audio streams and uses parameters defined in the preset class.

## AUDIO \| EFFECTS \| DELAY

MaxDelayInMilliseconds

### MaxDelayInMilliseconds

```
const float32 MaxDelayInMilliseconds
```

Get the maximum delay possible.

---

## SUBMIXEFFECTPRESET

### Settings

```
FSubmixEffectDelaySettings Settings AUDIO|EFFECTS|DELAY SetDefaultSettings void SetDefaultSettings(FSubmixEffectDelaySettings InSettings)
```

Sets object's default settings. This will update both the default UObject settings (and mark it as dirty), as well as any dynamically set settings.

### SetDelay

```
void SetDelay(float32 Length)
```

Set how long the delay actually is, in milliseconds.

### SetInterpolationTime

```
void SetInterpolationTime(float32 Time)
```

Set the time it takes to interpolate between parameters, in milliseconds.

### SetSettings

```
void SetSettings(FSubmixEffectDelaySettings InSettings)
```

Sets runtime delay settings. This will replace any dynamically added or modified settings without modifying the original UObject.

### GetMaxDelayInMilliseconds

```
float32 GetMaxDelayInMilliseconds()const
```

Get the maximum delay possible.

---

## FUNCTIONS

### GetSettings

```
const FSubmixEffectDelaySettings& GetSettings()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USubmixEffectDelayPreset::StaticClass()
```
