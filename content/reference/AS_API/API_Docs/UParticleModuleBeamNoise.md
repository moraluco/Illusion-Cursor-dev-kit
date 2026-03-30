# UParticleModuleBeamNoise

**Visibility:** public

## Inheritance

UParticleModuleBeamBase → UParticleModuleBeamNoise → LOWFREQ → NoiseLockTime

## Description

float32 NoiseLockTime How long the  noise points should be locked

0.0 indicates forever.

Frequency_LowRange int Frequency_LowRange

If not 0, then the frequency will select a random value in the range [Frequency_LowRange..Frequency]

NoiseRange FRawDistributionVector NoiseRange

The noise point ranges.

NoiseRangeScale FRawDistributionFloat NoiseRangeScale

A scale factor that will be applied to the noise range.

NoiseSpeed FRawDistributionVector NoiseSpeed

The speed with which to move each noise point.

NoiseLockRadius float32 NoiseLockRadius

Default target-point information to use if the beam method is endpoint.

Frequency int Frequency

The frequency of noise points.

NoiseTension float32 NoiseTension

The tension to apply to the tessellated noise line.

NoiseTangentStrength FRawDistributionFloat NoiseTangentStrength

The strength of noise tangents, if enabled.

NoiseTessellation int NoiseTessellation

The amount of tessellation between noise points.

FrequencyDistance float32 FrequencyDistance

The distance at which to deposit noise points.  If 0.0, then use the static frequency value.  If not, distribute noise points at the given distance, up to the static Frequency value.  At that point, evenly distribute them along the beam.

NoiseScale FRawDistributionFloat NoiseScale

The scale factor to apply to noise range.  The lookup value is determined by dividing the number of noise points present by the maximum number of noise points (Frequency).

## FUNCTIONS

### SetbNRScaleEmitterTime

```
void SetbNRScaleEmitterTime(bool Value)
```

SetbSmooth

### void SetbSmooth

```
void SetbSmooth(bool Value)
```

SetbOscillate

### void SetbOscillate

```
void SetbOscillate(bool Value)
```

SetbUseNoiseTangents

### void SetbUseNoiseTangents

```
void SetbUseNoiseTangents(bool Value)
```

SetbTargetNoise

### void SetbTargetNoise

```
void SetbTargetNoise(bool Value)
```

SetbApplyNoiseScale

### void SetbApplyNoiseScale

```
void SetbApplyNoiseScale(bool Value)
```

SetbLowFreq_Enabled

### void SetbLowFreq_Enabled

```
void SetbLowFreq_Enabled(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleBeamNoise::StaticClass()
```
