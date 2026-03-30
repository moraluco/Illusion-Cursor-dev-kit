# UReverbEffect

**Visibility:** public

## Inheritance

UObject → UReverbEffect → EARLYREFLECTIONS → ReflectionsDelay

## Description

float32 ReflectionsDelay Reflections Delay

0.0 < 0.007 < 0.3 Seconds - the time between the listener receiving the direct path sound and the first reflection

GainHF float32 GainHF Reverb Gain High Frequency

0.0 < 0.89 < 1.0 - attenuates the high frequency reflected sound

ReflectionsGain float32 ReflectionsGain Reflections Gain

0.0 < 0.05 < 3.16 - controls the amount of initial reflections

bBypassEarlyReflections bool bBypassEarlyReflections

Bypasses early reflections

## LATEREFLECTIONS

### LateDelay

```
float32 LateDelay
```
### Delay

```
Late Reverb Delay
```

0.0 < 0.011 < 0.1 Seconds - time difference between late reverb and first reflections

### bBypassLateReflections

```
bool bBypassLateReflections
```

Bypasses late reflections.

### DecayTime

```
float32 DecayTime
```
### Time

```
Decay Time
```

0.1 < 1.49 < 20.0 Seconds - larger is more reverb

### Density

```
float32 Density
```

Density

0.0 < 1.0 < 1.0 - Coloration of the late reverb - lower value is more grainy

### Diffusion

```
float32 Diffusion
```

Diffusion

0.0 < 1.0 < 1.0 - Echo density in the reverberation decay - lower is more grainy

### AirAbsorptionGainHF

```
float32 AirAbsorptionGainHF
```
### Absorption

```
Air Absorption
```

0.0 < 0.994 < 1.0 - lower value means more absorption

### DecayHFRatio

```
float32 DecayHFRatio
```
### Ratio

```
Decay High Frequency Ratio
```

0.1 < 0.83 < 2.0 - how much the quicker or slower the high frequencies decay relative to the lower frequencies.

### LateGain

```
float32 LateGain
```
### Gain

```
Late Reverb Gain
```

0.0 < 1.26 < 10.0 - gain of the late reverb

### Gain

```
float32 Gain Reverb Gain
```

0.0 < 0.32 < 1.0 - overall reverb gain - master volume control

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UReverbEffect::StaticClass()
```
