# UAudioImpulseResponse

**Visibility:** public

## Inheritance

UObject → UAudioImpulseResponse

## Description

UAudioImpulseResponse UAsset used to represent Imported Impulse Responses

## SUBMIXEFFECTPRESET

### bTrueStereo

```
bool bTrueStereo
```

If true, impulse response channels are interpreted as true stereo which allows channel crosstalk. If false, impulse response channels are interpreted as independent channel impulses.

### NormalizationVolumeDb

```
float32 NormalizationVolumeDb
```

Used to account for energy added by convolution with "loud" Impulse Responses.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAudioImpulseResponse::StaticClass()
```
