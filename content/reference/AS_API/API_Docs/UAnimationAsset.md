# UAnimationAsset

**Visibility:** public

## Inheritance

UObject → UAnimationAsset → UAnimSequenceBase → UBlendSpace → UPoseAsset → ANIMATION → AssetUserData

## Description

TArray<TObjectPtr<UAssetUserData>> AssetUserData

Array of user data stored with the asset

PlayLength const float32 PlayLength PreviewPoseAsset UPoseAsset PreviewPoseAsset The default skeletal mesh to use when previewing this asset

this only applies when you open Persona using this asset// @todo: note that this doesn't retarget right now

## METADATA

### MetaData

```
TArray<TObjectPtr<UAnimMetaData>> MetaData
```

Meta data that can be saved with the asset

### function

```
You can query by GetMetaData function
```

---

## THUMBNAIL

### ThumbnailInfo

```
UThumbnailInfo ThumbnailInfo
```

Information for thumbnail rendering

---

## ANIMATION

### SetPreviewSkeletalMesh

```
void SetPreviewSkeletalMesh(USkeletalMesh PreviewMesh)
```

Sets or updates the preview skeletal mesh

### GetPlayLength

```
float32 GetPlayLength()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimationAsset::StaticClass()
```
