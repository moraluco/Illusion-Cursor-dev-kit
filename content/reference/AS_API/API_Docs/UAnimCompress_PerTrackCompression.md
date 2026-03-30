# UAnimCompress_PerTrackCompression

**Visibility:** public

## Inheritance

UAnimCompress_RemoveLinearKeys → UAnimCompress_PerTrackCompression → ADAPTIVEERROR → ParentingDivisorExponent

## Description

float32 ParentingDivisorExponent

Reduces the error tolerance the further up the tree that a key occurs EffectiveErrorTolerance = Max(BaseErrorTolerance / Power(ParentingDivisor, Max(Height+Bias,0) * ParentingDivisorExponent), ZeroingThreshold) Only has an effect bUseAdaptiveError is true

ParentingDivisor float32 ParentingDivisor

Reduces the error tolerance the further up the tree that a key occurs EffectiveErrorTolerance = Max(BaseErrorTolerance / Power(ParentingDivisor, Max(Height+Bias,0) * ParentingDivisorExponent), ZeroingThreshold) Only has an effect bUseAdaptiveError is true

TrackHeightBias int TrackHeightBias

A bias added to the track height before using it to calculate the adaptive error

## ADAPTIVEERROR2

### MaxErrorPerTrackRatio

```
float32 MaxErrorPerTrackRatio
```

A fraction that determines how much of the total error budget can be introduced by any particular track

### TranslationErrorSourceRatio

```
float32 TranslationErrorSourceRatio
```

This ratio determines how much error in end effector translation can come from a given track's rotation error or translation error.  If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from translation error.

### RotationErrorSourceRatio

```
float32 RotationErrorSourceRatio
```

This ratio determines how much error in end effector rotation can come from a given track's rotation error or translation error.  If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from translation error.

### ScaleErrorSourceRatio

```
float32 ScaleErrorSourceRatio
```

This ratio determines how much error in end effector scale can come from a given track's rotation error or scale error.  If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from scale error.

---

## PERTRACK

### MaxPosDiffBitwise

```
float32 MaxPosDiffBitwise
```

Maximum position difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.

### AllowedTranslationFormats

```
TArray<AnimationCompressionFormat> AllowedTranslationFormats
```

Which encoding formats is the per-track compressor allowed to try on translation keys

### AllowedRotationFormats

```
TArray<AnimationCompressionFormat> AllowedRotationFormats
```

Which encoding formats is the per-track compressor allowed to try on rotation keys

### MaxAngleDiffBitwise

```
float32 MaxAngleDiffBitwise
```

Maximum angle difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.

### AllowedScaleFormats

```
TArray<AnimationCompressionFormat> AllowedScaleFormats
```

Which encoding formats is the per-track compressor allowed to try on scale keys

### MaxZeroingThreshold

```
float32 MaxZeroingThreshold
```

Maximum threshold to use when replacing a component with zero. Lower values retain more keys, but yield less compression.

### MaxScaleDiffBitwise

```
float32 MaxScaleDiffBitwise
```

Maximum position difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.

---

## RESAMPLING

### ResampledFramerate

```
float32 ResampledFramerate
```

When bResampleAnimation is true, this defines the desired framerate

### MinKeysForResampling

```
int MinKeysForResampling
```

Animations with fewer keys than MinKeysForResampling will not be resampled.

---

## FUNCTIONS

### SetbUseAdaptiveError

```
void SetbUseAdaptiveError(bool Value)
```

SetbUseOverrideForEndEffectors

### void SetbUseOverrideForEndEffectors

```
void SetbUseOverrideForEndEffectors(bool Value)
```

SetbUseAdaptiveError2

### void SetbUseAdaptiveError2

```
void SetbUseAdaptiveError2(bool Value)
```

SetbResampleAnimation

### void SetbResampleAnimation

```
void SetbResampleAnimation(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimCompress_PerTrackCompression::StaticClass()
```
