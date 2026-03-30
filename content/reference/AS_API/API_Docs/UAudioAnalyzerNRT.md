# UAudioAnalyzerNRT

**Visibility:** public

## Inheritance

UAudioAnalyzerAssetBase → UAudioAnalyzerNRT → UAudioSynesthesiaNRT

## Description

UAudioAnalyzerNRT

UAudioAnalyzerNRT applies an analyzer to a sound using specific settings, stores the results and exposes them via blueprints.

Subclasses of UAudioAnalyzerNRT must implement GetAnalyzerNRTFactoryName() to associate the UAudioAnalyzerNRT with an IAudioAnalyzerNRTFactory implementation.

To support blueprint access, subclasses can implement UFUNCTIONs to expose the data returned by GetResult().

## AUDIOANALYZER

### DurationInSeconds

```
float32 DurationInSeconds
```

The duration of the analyzed audio in seconds.

### Sound

```
USoundWave Sound
```

The USoundWave which is analyzed.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAudioAnalyzerNRT::StaticClass()
```
