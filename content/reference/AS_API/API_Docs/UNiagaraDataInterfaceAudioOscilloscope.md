# UNiagaraDataInterfaceAudioOscilloscope

**Visibility:** public

## Inheritance

UNiagaraDataInterface → UNiagaraDataInterfaceAudioOscilloscope

## Description

Data Interface allowing sampling of recent audio data.

## OSCILLOSCOPE

### Resolution

```
int Resolution
```

The number of samples of audio to pass to the GPU. Audio will be resampled to fit this resolution.  Increasing this number will increase the resolution of the waveform, but will also increase usage of the GPU memory bus, potentially causing issues across the application.

### ScopeInMilliseconds

```
float32 ScopeInMilliseconds
```

The number of milliseconds of audio to show.

### Submix

```
USoundSubmix Submix STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceAudioOscilloscope::StaticClass()
```
