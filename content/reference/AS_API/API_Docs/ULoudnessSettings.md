# ULoudnessSettings

**Visibility:** public

## Inheritance

UAudioSynesthesiaSettings → ULoudnessSettings

## Description

ULoudnessSettings

Settings for a ULoudness analyzer.

## AUDIOANALYZER

### MinimumFrequency

```
float32 MinimumFrequency
```

Minimum analysis frequency for calculating loudness.

### MaximumFrequency

```
float32 MaximumFrequency
```

Maximum analysis frequency for calculating loudness.

### CurveType

```
ELoudnessCurveTypeEnum CurveType
```

Type of equal loudness curve used in calculations

### NoiseFloorDb

```
float32 NoiseFloorDb
```

dB level to denote silence.  Used when calculating normalized loudness.

### ExpectedMaxLoudness

```
float32 ExpectedMaxLoudness
```

dB level to denote silence.  Used when calculating normalized loudness.

### AnalysisPeriod

```
float32 AnalysisPeriod
```

Number of seconds between loudness measurements

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULoudnessSettings::StaticClass()
```
