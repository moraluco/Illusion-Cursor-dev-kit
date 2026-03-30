# USubmixEffectConvolutionReverbPreset

**Visibility:** public

## Inheritance

USoundEffectSubmixPreset → USubmixEffectConvolutionReverbPreset → SUBMIXEFFECTPRESET

## Description

bEnableHardwareAcceleration bool bEnableHardwareAcceleration

Opt into hardware acceleration of the convolution reverb (if available)

ImpulseResponse UAudioImpulseResponse ImpulseResponse

The impulse response used for convolution.

Settings FSubmixEffectConvolutionReverbSettings Settings

ConvolutionReverbPreset Preset Settings.

BlockSize ESubmixEffectConvolutionReverbBlockSize BlockSize

Set the internal block size. This can effect latency and performance. Higher values will result in lower CPU costs while lower values will result higher CPU costs. Latency may be affected depending on the interplay between audio engines buffer sizes and this effects block size. Generally, higher values result in higher latency, and lower values result in lower latency.

## AUDIO \| EFFECTS

### SetSettings

```
void SetSettings(FSubmixEffectConvolutionReverbSettings InSettings)
```

Set the convolution reverb settings

### SetImpulseResponse

```
void SetImpulseResponse(UAudioImpulseResponse InImpulseResponse)
```

Set the convolution reverb impulse response

---

## FUNCTIONS

### GetSettings

```
const FSubmixEffectConvolutionReverbSettings& GetSettings()const
```

GetImpulseResponse

### UAudioImpulseResponse GetImpulseResponse

```
UAudioImpulseResponse GetImpulseResponse()const STATIC FUNCTIONS
```

StaticClass

### static UClass USubmixEffectConvolutionReverbPreset::StaticClass

```
static UClass USubmixEffectConvolutionReverbPreset::StaticClass()
```
