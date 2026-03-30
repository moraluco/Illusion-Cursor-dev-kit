# UAnimSequence

**Visibility:** public

## Inheritance

UAnimSequenceBase → UAnimSequence → ADDITIVESETTINGS → RefPoseSeq

## Description

UAnimSequence RefPoseSeq Additive reference animation if it's relevant

i.e. AnimScaled or AnimFrame

RefFrameIndex int RefFrameIndex

Additve reference frame if RefPoseType == AnimFrame

RefPoseType EAdditiveBasePoseType RefPoseType

Additive refrerence pose type. Refer above enum type

AdditiveAnimType EAdditiveAnimationType AdditiveAnimType

Additive animation type.

## ANIMATION

### RetargetSource

```
FName RetargetSource
```

Base pose to use when retargeting

### Interpolation

```
EAnimInterpolationType Interpolation
```

This defines how values between keys are calculated

### RetargetSourceAsset

```
TSoftObjectPtr<USkeletalMesh> RetargetSourceAsset
```

If RetargetSource is set to Default (None), this is asset for the base pose to use when retargeting. Transform data will be saved in RetargetSourceAssetReferencePose.

---

## COMPRESSION

### bAllowFrameStripping

```
bool bAllowFrameStripping
```

Allow frame stripping to be performed on this animation if the platform requests it Can be disabled if animation has high frequency movements that are being lost.

### CompressionErrorThresholdScale

```
float32 CompressionErrorThresholdScale
```

Set a scale for error threshold on compression. This is useful if the animation will be played back at a different scale (e.g. if you know the animation will be played on an actor/component that is scaled up by a factor of 10, set this value to 10)

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

## IMPORTSETTINGS

### AssetImportData

```
UAssetImportData AssetImportData
```

Importing data and options used for this mesh

---

## ROOTMOTION

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

### RootMotionRootLock

```
ERootMotionRootLock RootMotionRootLock
```

Root Bone will be locked to that position when extracting root motion.*

### bEnableRootMotion

```
bool bEnableRootMotion
```

If this is on, it will allow extracting of root motion

---

## CUSTOMATTRIBUTES

### AddBoneIntegerCustomAttribute

```
void AddBoneIntegerCustomAttribute(FName BoneName, FName AttributeName, TArray<float32> TimeKeys, TArray<int> ValueKeys)
```

AddBoneStringCustomAttribute

### void AddBoneStringCustomAttribute

```
void AddBoneStringCustomAttribute(FName BoneName, FName AttributeName, TArray<float32> TimeKeys, TArray<FString> ValueKeys)
```

RemoveAllCustomAttributes

### void RemoveAllCustomAttributes

```
void RemoveAllCustomAttributes()
```

RemoveAllCustomAttributesForBone

### void RemoveAllCustomAttributesForBone

```
void RemoveAllCustomAttributesForBone(FName BoneName)
```

RemoveCustomAttribute

### void RemoveCustomAttribute

```
void RemoveCustomAttribute(FName BoneName, FName AttributeName)
```

AddBoneFloatCustomAttribute

### void AddBoneFloatCustomAttribute

```
void AddBoneFloatCustomAttribute(FName BoneName, FName AttributeName, TArray<float32> TimeKeys, TArray<float32> ValueKeys)
```

---

## FUNCTIONS

### SetbDoNotOverrideCompression

```
void SetbDoNotOverrideCompression(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimSequence::StaticClass()
```
