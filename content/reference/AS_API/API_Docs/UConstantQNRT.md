# UConstantQNRT

**Visibility:** public

## Inheritance

UAudioSynesthesiaNRT → UConstantQNRT

## Description

UConstantQNRT

UConstantQNRT calculates the temporal evolution of constant q transform for a given sound. ConstantQ is available for individual channels or the overall sound asset.

## AUDIOANALYZER

### Settings

```
UConstantQNRTSettings Settings
```

The settings for the audio analyzer.

### AUDIO ANALYZER

```
AUDIO ANALYZER GetNormalizedChannelConstantQAtTime void GetNormalizedChannelConstantQAtTime(float32 InSeconds, int InChannel, TArray<float32>& OutConstantQ)const
```

Get a specific channel cqt of the analyzed sound at a given time.

### GetChannelConstantQAtTime

```
void GetChannelConstantQAtTime(float32 InSeconds, int InChannel, TArray<float32>& OutConstantQ)const
```

Get a specific channel cqt of the analyzed sound at a given time.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UConstantQNRT::StaticClass()
```
