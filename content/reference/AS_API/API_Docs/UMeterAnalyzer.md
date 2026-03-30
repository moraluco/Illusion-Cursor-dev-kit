# UMeterAnalyzer

**Visibility:** public

## Inheritance

UAudioAnalyzer → UMeterAnalyzer

## Description

UMeterAnalyzer

UMeterAnalyzer calculates the current amplitude of an audio bus in real-time.

## AUDIOANALYZER

### Settings

```
UMeterSettings Settings
```

The settings for the meter audio analyzer.

---

## VARIABLES

### OnPerChannelMeterResults

```
FOnPerChannelMeterResults OnPerChannelMeterResults
```

Delegate to receive all meter results, per-channel, since last delegate call.

### OnLatestOverallMeterResults

```
FOnLatestOverallMeterResults OnLatestOverallMeterResults
```

Delegate to receive the latest overall meter results.

### OnLatestPerChannelMeterResults

```
FOnLatestPerChannelMeterResults OnLatestPerChannelMeterResults
```

Delegate to receive the latest per-channel meter results.

### OnOverallMeterResults

```
FOnOverallMeterResults OnOverallMeterResults
```

Delegate to receive all overall meter results since last delegate call.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMeterAnalyzer::StaticClass()
```
