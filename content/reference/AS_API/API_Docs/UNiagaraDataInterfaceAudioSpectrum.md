# UNiagaraDataInterfaceAudioSpectrum

**Visibility:** public

## Inheritance

UNiagaraDataInterfaceAudioSubmix → UNiagaraDataInterfaceAudioSpectrum

## Description

Data Interface allowing sampling of recent audio spectrum.

## SPECTRUM

### MinimumFrequency

```
float32 MinimumFrequency
```

The minimum frequency represented in the spectrum.

### MaximumFrequency

```
float32 MaximumFrequency
```

The maximum frequency represented in the spectrum.

### NoiseFloorDb

```
float32 NoiseFloorDb
```

The decibel level considered as silence. This is used to scale the output of the spectrum.

### Resolution

```
int Resolution
```

The number of spectrum samples to pass to the GPU

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceAudioSpectrum::StaticClass()
```
