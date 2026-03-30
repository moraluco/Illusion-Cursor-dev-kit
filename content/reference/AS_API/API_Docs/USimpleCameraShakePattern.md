# USimpleCameraShakePattern

**Visibility:** public

## Inheritance

UCameraShakePattern → USimpleCameraShakePattern → UConstantCameraShakePattern → UPerlinNoiseCameraShakePattern → UWaveOscillatorCameraShakePattern

## Description

A base class for a simple camera shake.

## TIMING

### BlendInTime

```
float32 BlendInTime
```

Blend-in time for this shake. Zero or less means no blend-in.

### BlendOutTime

```
float32 BlendOutTime
```

Blend-out time for this shake. Zero or less means no blend-out.

### Duration

```
float32 Duration
```

Duration in seconds of this shake. Zero or less means infinite.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USimpleCameraShakePattern::StaticClass()
```
