# UAudioAnalyzer

**Visibility:** public

## Inheritance

UObject → UAudioAnalyzer → ULoudnessAnalyzer → UMeterAnalyzer

## Description

UAudioAnalyzer

UAudioAnalyzer performs analysis on an audio bus using specific settings and exposes the results via blueprints.

Subclasses of UAudioAnalyzer must implement GetAnalyzerFactoryName() to associate the UAudioAnalyzer asset with an IAudioAnalyzerFactory implementation.

To support blueprint access, subclasses can implement UFUNCTIONs to expose the data returned by GetResult().

## AUDIOANALYZER

### StopAnalyzing

```
void StopAnalyzing()
```

Stops analyzing audio.

### StartAnalyzing

```
void StartAnalyzing(UAudioBus AudioBusToAnalyze)
```

Starts analyzing audio from the given audio bus. Optionally override the audio bus desired to analyze.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAudioAnalyzer::StaticClass()
```
