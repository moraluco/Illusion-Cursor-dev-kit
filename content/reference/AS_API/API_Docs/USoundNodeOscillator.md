# USoundNodeOscillator

**Visibility:** public

## Inheritance

USoundNode → USoundNodeOscillator

## Description

Defines how a sound oscillates

## OSCILLATOR

### AmplitudeMax

```
float32 AmplitudeMax
```

An amplitude of 0.25 would oscillate between 0.75 and 1.25.

### FrequencyMin

```
float32 FrequencyMin
```

A frequency of 20 would oscillate at 10Hz.

### FrequencyMax

```
float32 FrequencyMax
```

A frequency of 20 would oscillate at 10Hz.

### OffsetMin

```
float32 OffsetMin
```

Offset into the sine wave. Value modded by 2 * PI.

### OffsetMax

```
float32 OffsetMax
```

Offset into the sine wave. Value modded by 2 * PI.

### CenterMin

```
float32 CenterMin
```

A center of 0.5 would oscillate around 0.5.

### CenterMax

```
float32 CenterMax
```

A center of 0.5 would oscillate around 0.5.

### AmplitudeMin

```
float32 AmplitudeMin
```

An amplitude of 0.25 would oscillate between 0.75 and 1.25.

---

## FUNCTIONS

### SetbModulatePitch

```
void SetbModulatePitch(bool Value)
```

SetbModulateVolume

### void SetbModulateVolume

```
void SetbModulateVolume(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundNodeOscillator::StaticClass()
```
