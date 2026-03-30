# USubmixEffectTapDelayPreset

**Visibility:** public

## Inheritance

USoundEffectSubmixPreset → USubmixEffectTapDelayPreset

## Description

UTapDelaySubmixPreset Class which processes audio streams and uses parameters defined in the preset class.

## AUDIO \| EFFECTS \| TAPDELAY

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
FSubmixEffectTapDelaySettings Settings AUDIO|EFFECTS|TAPDELAY SetInterpolationTime void SetInterpolationTime(float32 Time)
```

Set the time it takes to interpolate between parameters, in milliseconds.

### GetMaxDelayInMilliseconds

```
float32 GetMaxDelayInMilliseconds()
```

Get the maximum delay possible.

### GetTap

```
void GetTap(int TapId, FTapDelayInfo& TapInfo)
```

Get the current info about a specific tap.

### GetTapIds

```
void GetTapIds(TArray<int>& TapIds)
```

Retrieve an array of all tap ids for the submix effect.

### RemoveTap

```
void RemoveTap(int TapId)
```

Remove the tap from the preset.

### AddTap

```
void AddTap(int& TapId)
```

Adds a dynamic tap delay with the given settings. Returns the tap id.

### SetSettings

```
void SetSettings(FSubmixEffectTapDelaySettings InSettings)
```

Set all tap delay setting. This will replace any dynamically added or modified taps.

### SetTap

```
void SetTap(int TapId, FTapDelayInfo TapInfo)
```

Modify a specific tap.

---

## FUNCTIONS

### GetSettings

```
const FSubmixEffectTapDelaySettings& GetSettings()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USubmixEffectTapDelayPreset::StaticClass()
```
