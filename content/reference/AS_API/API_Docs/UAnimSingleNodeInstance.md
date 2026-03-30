# UAnimSingleNodeInstance

**Visibility:** public

## Inheritance

UAnimInstance → UAnimSingleNodeInstance → UAnimPreviewInstance → ANIMATION → Length

## Description

const float32 Length MirrorDataTable const UMirrorDataTable MirrorDataTable AnimationAsset const UAnimationAsset AnimationAsset

Get the currently used asset

## ANIMATION

### SetPlaying

```
void SetPlaying(bool bIsPlaying)
```

GetLength

### float32 GetLength

```
float32 GetLength()
```

GetMirrorDataTable

### const UMirrorDataTable GetMirrorDataTable

```
const UMirrorDataTable GetMirrorDataTable()
```

PlayAnim

### void PlayAnim

```
void PlayAnim(bool bIsLooping = false, float32 InPlayRate = 1.000000, float32 InStartPosition = 0.000000)
```

### For AnimSequence specific

```
For AnimSequence specific
```

SetAnimationAsset

### void SetAnimationAsset

```
void SetAnimationAsset(UAnimationAsset NewAsset, bool bIsLooping = true, float32 InPlayRate = 1.000000)
```

### Set New Asset

```
Set New Asset
```

calls InitializeAnimation, for now we need MeshComponent

### SetBlendSpacePosition

```
void SetBlendSpacePosition(FVector InPosition)
```

SetLooping

### void SetLooping

```
void SetLooping(bool bIsLooping)
```

SetMirrorDataTable

### void SetMirrorDataTable

```
void SetMirrorDataTable(const UMirrorDataTable MirrorDataTable)
```

GetAnimationAsset

### UAnimationAsset GetAnimationAsset

```
UAnimationAsset GetAnimationAsset()const
```

Get the currently used asset

### SetPlayRate

```
void SetPlayRate(float32 InPlayRate)
```

SetPosition

### void SetPosition

```
void SetPosition(float32 InPosition, bool bFireNotifies = true)
```

SetPositionWithPreviousTime

### void SetPositionWithPreviousTime

```
void SetPositionWithPreviousTime(float32 InPosition, float32 InPreviousTime, bool bFireNotifies = true)
```

SetPreviewCurveOverride

### void SetPreviewCurveOverride

```
void SetPreviewCurveOverride(FName PoseName, float32 Value, bool bRemoveIfZero)
```

Set pose value

### SetReverse

```
void SetReverse(bool bInReverse)
```

StopAnim

### void StopAnim

```
void StopAnim()
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimSingleNodeInstance::StaticClass()
```
