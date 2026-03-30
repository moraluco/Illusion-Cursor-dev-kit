# UOnsetNRT

**Visibility:** public

## Inheritance

UAudioSynesthesiaNRT → UOnsetNRT

## Description

UOnsetNRT

UOnsetNRT calculates the temporal evolution of constant q transform for a given sound. Onset is available for individual channels or the overall sound asset.

## AUDIOANALYZER

### Settings

```
UOnsetNRTSettings Settings
```

The settings for the audio analyzer.

### AUDIO ANALYZER

```
AUDIO ANALYZER GetNormalizedChannelOnsetsBetweenTimes void GetNormalizedChannelOnsetsBetweenTimes(float32 InStartSeconds, float32 InEndSeconds, int InChannel, TArray<float32>& OutOnsetTimestamps, TArray<float32>& OutOnsetStrengths)const
```

Get a specific channel cqt of the analyzed sound at a given time.

### GetChannelOnsetsBetweenTimes

```
void GetChannelOnsetsBetweenTimes(float32 InStartSeconds, float32 InEndSeconds, int InChannel, TArray<float32>& OutOnsetTimestamps, TArray<float32>& OutOnsetStrengths)const
```

Returns onsets which occured between start and end timestamps.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UOnsetNRT::StaticClass()
```
