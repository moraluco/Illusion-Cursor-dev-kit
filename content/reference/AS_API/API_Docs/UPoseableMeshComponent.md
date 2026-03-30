# UPoseableMeshComponent

**Visibility:** public

## Inheritance

USkinnedMeshComponent → UPoseableMeshComponent

## Description

UPoseableMeshComponent that allows bone transforms to be driven by blueprint.

## COMPONENTS \| POSEABLEMESH

### SetBoneRotationByName

```
void SetBoneRotationByName(FName BoneName, FRotator InRotation, EBoneSpaces BoneSpace)
```

GetBoneLocationByName

### FVector GetBoneLocationByName

```
FVector GetBoneLocationByName(FName BoneName, EBoneSpaces BoneSpace)
```

GetBoneRotationByName

### FRotator GetBoneRotationByName

```
FRotator GetBoneRotationByName(FName BoneName, EBoneSpaces BoneSpace)
```

GetBoneScaleByName

### FVector GetBoneScaleByName

```
FVector GetBoneScaleByName(FName BoneName, EBoneSpaces BoneSpace)
```

GetBoneTransformByName

### FTransform GetBoneTransformByName

```
FTransform GetBoneTransformByName(FName BoneName, EBoneSpaces BoneSpace)
```

ResetBoneTransformByName

### void ResetBoneTransformByName

```
void ResetBoneTransformByName(FName BoneName)
```

SetBoneLocationByName

### void SetBoneLocationByName

```
void SetBoneLocationByName(FName BoneName, FVector InLocation, EBoneSpaces BoneSpace)
```

CopyPoseFromSkeletalComponent

### void CopyPoseFromSkeletalComponent

```
void CopyPoseFromSkeletalComponent(USkeletalMeshComponent InComponentToCopy)
```

SetBoneScaleByName

### void SetBoneScaleByName

```
void SetBoneScaleByName(FName BoneName, FVector InScale3D, EBoneSpaces BoneSpace)
```

SetBoneTransformByName

### void SetBoneTransformByName

```
void SetBoneTransformByName(FName BoneName, FTransform InTransform, EBoneSpaces BoneSpace)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPoseableMeshComponent UPoseableMeshComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPoseableMeshComponent UPoseableMeshComponent::GetOrCreate

```
static UPoseableMeshComponent UPoseableMeshComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPoseableMeshComponent UPoseableMeshComponent::Create

```
static UPoseableMeshComponent UPoseableMeshComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPoseableMeshComponent::StaticClass

```
static UClass UPoseableMeshComponent::StaticClass()
```
