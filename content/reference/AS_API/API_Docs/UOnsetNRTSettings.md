# UOnsetNRTSettings

**Visibility:** public

## Inheritance

UAudioSynesthesiaNRTSettings → UOnsetNRTSettings

## Description

UOnsetNRTSettings

Settings for a UOnsetNRT analyzer.

## AUDIOANALYZER

### GranularityInSeconds

```
float32 GranularityInSeconds
```

Onset timestamp granularity onsets. Lower granularity takes longer to compute.

### Sensitivity

```
float32 Sensitivity
```

Sensitivity of onset detector. Higher sensitivity will find more onsets.

### MinimumFrequency

```
float32 MinimumFrequency
```

Starting frequency for onset anlaysis.

### MaximumFrequency

```
float32 MaximumFrequency
```

Starting frequency for onset anlaysis.

### bDownmixToMono

```
bool bDownmixToMono
```

If true, multichannel audio is downmixed to mono with equal amplitude scaling. If false, each channel gets it's own onset result.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UOnsetNRTSettings::StaticClass()
```
