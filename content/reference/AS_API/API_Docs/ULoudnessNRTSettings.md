# ULoudnessNRTSettings

**Visibility:** public

## Inheritance

UAudioSynesthesiaNRTSettings → ULoudnessNRTSettings

## Description

ULoudnessNRTSettings

Settings for a ULoudnessNRT analyzer.

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
ELoudnessNRTCurveTypeEnum CurveType
```

Type of equal loudness curve used in calculations

### NoiseFloorDb

```
float32 NoiseFloorDb
```

dB level to denote silence.  Used when calculating normalized loudness.

### AnalysisPeriod

```
float32 AnalysisPeriod
```

Number of seconds between loudness measurements

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULoudnessNRTSettings::StaticClass()
```
