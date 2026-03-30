# UIKRetargeter

**Visibility:** public

## Inheritance

UObject → UIKRetargeter → POSEEDITSETTINGS → BoneDrawSize

## Description

float32 BoneDrawSize

The visual size of the bones in the viewport when editing the retarget pose.

## RETARGETPHASES

### bRetargetRoot

```
bool bRetargetRoot
```

When false, translational motion of skeleton root is not copied. Useful for debugging.

### bRetargetFK

```
bool bRetargetFK
```

When false, limbs are not copied via FK. Useful for debugging limb issues suspected to be caused by FK pose.

### bRetargetIK

```
bool bRetargetIK
```

When false, IK is not applied as part of retargeter. Useful for debugging limb issues suspected to be caused by IK.

---

## RIGS

### TargetPreviewMesh

```
USkeletalMesh TargetPreviewMesh
```

The Skeletal Mesh to preview the retarget on.

### TargetIKRigAsset

```
UIKRigDefinition TargetIKRigAsset
```

The rig to copy animation TO.

---

## TARGETACTORPREVIEW

### TargetActorScale

```
float32 TargetActorScale
```

Scale the target actor in the viewport for easier visualization next to the source actor.

### TargetActorOffset

```
float32 TargetActorOffset
```

Move the target actor in the viewport for easier visualization next to the source actor.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UIKRetargeter::StaticClass()
```
