# ULoudnessNRT

**Visibility:** public

## Inheritance

UAudioSynesthesiaNRT → ULoudnessNRT

## Description

ULoudnessNRT

ULoudnessNRT calculates the temporal evolution of perceptual loudness for a given sound. Loudness is available for individual channels or the overall sound asset. Normalized loudness values convert the range to 0.0 to 1.0 where 0.0 is the noise floor and 1.0 is the maximum loudness of the particular sound.

## AUDIOANALYZER

### Settings

```
ULoudnessNRTSettings Settings
```

The settings for the audio analyzer.

### AUDIO ANALYZER

```
AUDIO ANALYZER GetLoudnessAtTime void GetLoudnessAtTime(float32 InSeconds, float32& OutLoudness)const
```

Get the overall loudness of the analyzed sound at a given time.

### GetNormalizedChannelLoudnessAtTime

```
void GetNormalizedChannelLoudnessAtTime(float32 InSeconds, int InChannel, float32& OutLoudness)const
```

Get a specific channel normalized loudness of the analyzed sound at a given time. Normalized loudness is always between 0.0 to 1.0. 0.0 refers to the noise floor while 1.0 refers to the maximum loudness in the sound.

### GetNormalizedLoudnessAtTime

```
void GetNormalizedLoudnessAtTime(float32 InSeconds, float32& OutLoudness)const
```

Get the normalized overall loudness of the analyzed sound at a given time. Normalized loudness is always between 0.0 to 1.0. 0.0 refers to the noise floor while 1.0 refers to the maximum loudness in the sound.

### GetChannelLoudnessAtTime

```
void GetChannelLoudnessAtTime(float32 InSeconds, int InChannel, float32& OutLoudness)const
```

Get a specific channel loudness of the analyzed sound at a given time.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULoudnessNRT::StaticClass()
```
