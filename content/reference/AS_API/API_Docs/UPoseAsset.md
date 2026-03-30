# UPoseAsset

**Visibility:** public

## Inheritance

UAnimationAsset → UPoseAsset

## Description

Pose Asset that can be blended by weight of curves

## ANIMATION

### RetargetSourceAsset

```
TSoftObjectPtr<USkeletalMesh> RetargetSourceAsset
```

If RetargetSource is set to Default (None), this is asset for the base pose to use when retargeting. Transform data will be saved in RetargetSourceAssetReferencePose.

### RetargetSource

```
FName RetargetSource
```

Base pose to use when retargeting

---

## SOURCE

### SourceAnimation

```
UAnimSequence SourceAnimation POSEASSET RenamePose void RenamePose(FName OriginalPoseName, FName NewPoseName)
```

Renames a specific pose

### UpdatePoseFromAnimation

```
void UpdatePoseFromAnimation(UAnimSequence AnimSequence)
```

Contained poses are re-generated from the provided Animation Sequence

### GetPoseNames

```
void GetPoseNames(TArray<FName>& PoseNames)const
```

Returns the name of all contained poses

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPoseAsset::StaticClass()
```
