# UFbxSceneImportOptionsSkeletalMesh

**Visibility:** public

## Inheritance

UObject → UFbxSceneImportOptionsSkeletalMesh → ANIMATION → CustomSampleRate

## Description

int CustomSampleRate

Sample fbx animation data at the specified sample rate, 0 find automaticaly the best sample rate

bUseDefaultSampleRate bool bUseDefaultSampleRate

If enabled, samples all animation curves to 30 FPS

bDeleteExistingCustomAttributeCurves bool bDeleteExistingCustomAttributeCurves

If true, all previous custom attribute curves will be deleted when doing a re-import.

AnimationLength EFBXAnimationLengthImportType AnimationLength

Type of asset to import from the FBX file

bPreserveLocalTransform bool bPreserveLocalTransform

Type of asset to import from the FBX file

bDeleteExistingMorphTargetCurves bool bDeleteExistingMorphTargetCurves

Type of asset to import from the FBX file

bImportCustomAttribute bool bImportCustomAttribute

Import if custom attribute as a curve within the animation

## IMPORTSETTINGS

### bDeleteExistingNonCurveCustomAttributes

```
bool bDeleteExistingNonCurveCustomAttributes
```

If true, all previous non-curve custom attributes will be deleted when doing a re-import.

---

## SKELETALMESH \| THRESHOLDS

### MorphThresholdPosition

```
float32 MorphThresholdPosition
```

Threshold to compare vertex position equality when computing morph target deltas.

### ThresholdUV

```
float32 ThresholdUV
```

Threshold to compare UV equality.

### ThresholdTangentNormal

```
float32 ThresholdTangentNormal
```

Threshold to compare normal, tangent or bi-normal equality.

### ThresholdPosition

```
float32 ThresholdPosition
```

Threshold to compare vertex position equality.

---

## FUNCTIONS

### SetbCreatePhysicsAsset

```
void SetbCreatePhysicsAsset(bool Value)
```

SetbPreserveSmoothingGroups

### void SetbPreserveSmoothingGroups

```
void SetbPreserveSmoothingGroups(bool Value)
```

SetbImportMeshesInBoneHierarchy

### void SetbImportMeshesInBoneHierarchy

```
void SetbImportMeshesInBoneHierarchy(bool Value)
```

SetbImportMorphTargets

### void SetbImportMorphTargets

```
void SetbImportMorphTargets(bool Value)
```

SetbImportAnimations

### void SetbImportAnimations

```
void SetbImportAnimations(bool Value)
```

SetbUpdateSkeletonReferencePose

### void SetbUpdateSkeletonReferencePose

```
void SetbUpdateSkeletonReferencePose(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFbxSceneImportOptionsSkeletalMesh::StaticClass()
```
