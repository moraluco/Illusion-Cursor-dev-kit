# UConstantQNRTSettings

**Visibility:** public

## Inheritance

UAudioSynesthesiaNRTSettings → UConstantQNRTSettings

## Description

UConstantQNRTSettings

Settings for a UConstantQNRT analyzer.

## AUDIOANALYZER

### FFTSize

```
EConstantQFFTSizeEnum FFTSize
```

Size of FFT.

### NumBands

```
int NumBands
```

Total number of resulting constant Q bands.

### NumBandsPerOctave

```
float32 NumBandsPerOctave
```

Number of bands within an octave.

### AnalysisPeriod

```
float32 AnalysisPeriod
```

Number of seconds between cqt measurements

### bDownmixToMono

```
bool bDownmixToMono
```

If true, multichannel audio is downmixed to mono with equal amplitude scaling. If false, each channel gets it's own CQT result.

### StartingFrequency

```
float32 StartingFrequency
```

Starting frequency for first bin of CQT

### WindowType

```
EFFTWindowType WindowType
```

Type of window to be applied to input audio

### SpectrumType

```
EAudioSpectrumType SpectrumType
```

Type of spectrum to use.

### BandWidthStretch

```
float32 BandWidthStretch
```

Stretching factor to control overlap of adjacent bands.

### CQTNormalization

```
EConstantQNormalizationEnum CQTNormalization
```

Normalization scheme used to generate band windows.

### NoiseFloorDb

```
float32 NoiseFloorDb
```

Noise floor to use when normalizing CQT

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UConstantQNRTSettings::StaticClass()
```
