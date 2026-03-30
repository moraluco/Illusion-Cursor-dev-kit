# UMeterSettings

**Visibility:** public

## Inheritance

UAudioSynesthesiaSettings → UMeterSettings

## Description

UMeterSettings

Settings for a UMeterAnalyzer.

## AUDIOANALYZER

### PeakMode

```
EMeterPeakType PeakMode
```

Meter envelope type type

### MeterAttackTime

```
int MeterAttackTime
```

Meter attack time, in milliseconds

### MeterReleaseTime

```
int MeterReleaseTime
```

Meter release time, in milliseconds.

### PeakHoldTime

```
int PeakHoldTime
```

Peak hold time, in milliseconds

### ClippingThreshold

```
float32 ClippingThreshold
```

What volume threshold to throw clipping detection notifications.

### AnalysisPeriod

```
float32 AnalysisPeriod
```

Number of seconds between meter measurements

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMeterSettings::StaticClass()
```
