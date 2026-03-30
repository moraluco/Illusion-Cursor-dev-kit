# UAnimGraphNode_PoseDriver

**Visibility:** public

## Inheritance

UAnimGraphNode_PoseHandler → UAnimGraphNode_PoseDriver → DEBUGGING → AxisLength

## Description

float32 AxisLength

Length of axis in world units used for debug drawing

ConeSubdivision int ConeSubdivision

Number of subdivisions / lines used when debug drawing a cone

bDrawDebugCones bool bDrawDebugCones

If checked the cones will be drawn in 3d for debugging

## POSEDRIVER

### OnlyDriveSelectedBones

```
bool OnlyDriveSelectedBones
```

PoseDriverOutput EPoseDriverOutput& PoseDriverOutput PoseDriverSource EPoseDriverSource& PoseDriverSource RBFParameters FRBFParams& RBFParameters

---

## SETTINGS

### Node

```
FAnimNode_PoseDriver Node POSEDRIVER SetDrivingBones void SetDrivingBones(TArray<FName> BoneNames)
```

Set the pose-driver its driven bones by name

### GetDrivingBoneNames

```
void GetDrivingBoneNames(TArray<FName>& BoneNames)
```

Returns the pose-driver its driven bones by name

### GetOnlyDriveSelectedBones

```
bool GetOnlyDriveSelectedBones()
```

GetPoseDriverOutput

### EPoseDriverOutput& GetPoseDriverOutput

```
EPoseDriverOutput& GetPoseDriverOutput()
```

GetPoseDriverSource

### EPoseDriverSource& GetPoseDriverSource

```
EPoseDriverSource& GetPoseDriverSource()
```

GetRBFParameters

### FRBFParams& GetRBFParameters

```
FRBFParams& GetRBFParameters()
```

GetSourceBoneNames

### void GetSourceBoneNames

```
void GetSourceBoneNames(TArray<FName>& BoneNames)
```

Returns the pose-driver its source bones by name

### CopyTargetsFromPoseAsset

```
void CopyTargetsFromPoseAsset()
```

Util to replace current contents of PoseTargets with info from assigned PoseAsset

### SetOnlyDriveSelectedBones

```
void SetOnlyDriveSelectedBones(bool bOnlyDriveSelectedBones)
```

SetPoseDriverOutput

### void SetPoseDriverOutput

```
void SetPoseDriverOutput(EPoseDriverOutput DriverOutput)
```

SetPoseDriverSource

### void SetPoseDriverSource

```
void SetPoseDriverSource(EPoseDriverSource DriverSource)
```

SetRBFParameters

### void SetRBFParameters

```
void SetRBFParameters(FRBFParams Parameters)
```

SetSourceBones

### void SetSourceBones

```
void SetSourceBones(TArray<FName> BoneNames)
```

Sets the pose-driver its source bones by name

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimGraphNode_PoseDriver::StaticClass()
```
