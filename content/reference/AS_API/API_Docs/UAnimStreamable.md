# UAnimStreamable

**Visibility:** public

## Inheritance

UAnimSequenceBase → UAnimStreamable → ANIMATION → RetargetSource

## Description

FName RetargetSource

Base pose to use when retargeting

Interpolation EAnimInterpolationType Interpolation

This defines how values between keys are calculated

## COMPRESSION

### CurveCompressionSettings

```
UAnimCurveCompressionSettings CurveCompressionSettings
```

The curve compression settings used to compress curves in this sequence.

### BoneCompressionSettings

```
UAnimBoneCompressionSettings BoneCompressionSettings
```

The bone compression settings used to compress bones in this sequence.

---

## ROOTMOTION

### RootMotionRootLock

```
ERootMotionRootLock RootMotionRootLock
```

Root Bone will be locked to that position when extracting root motion.*

### bForceRootLock

```
bool bForceRootLock
```

Force Root Bone Lock even if Root Motion is not enabled

### bUseNormalizedRootMotionScale

```
bool bUseNormalizedRootMotionScale
```

If this is on, it will use a normalized scale value for the root motion extracted: FVector(1.0, 1.0, 1.0)

### bEnableRootMotion

```
bool bEnableRootMotion
```

If this is on, it will allow extracting of root motion

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimStreamable::StaticClass()
```
