# UControlRigPoseAsset

**Visibility:** public

## Inheritance

UObject → UControlRigPoseAsset

## Description

An individual Pose made of Control Rig Controls

## POSE

### ControlNames

```
const TArray<FName> ControlNames Pose FControlRigControlPose Pose POSE GetControlNames TArray<FName> GetControlNames()const
```

GetCurrentPose

### void GetCurrentPose

```
void GetCurrentPose(UControlRig InControlRig, FControlRigControlPose& OutPose)
```

PastePose

### void PastePose

```
void PastePose(UControlRig InControlRig, bool bDoKey = false, bool bDoMirror = false)
```

ReplaceControlName

### void ReplaceControlName

```
void ReplaceControlName(FName CurrentName, FName NewName)
```

SavePose

### void SavePose

```
void SavePose(UControlRig InControlRig, bool bUseAll)
```

SelectControls

### void SelectControls

```
void SelectControls(UControlRig InControlRig, bool bDoMirror = false)
```

DoesMirrorMatch

### bool DoesMirrorMatch

```
bool DoesMirrorMatch(UControlRig ControlRig, FName ControlName)const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UControlRigPoseAsset::StaticClass()
```
