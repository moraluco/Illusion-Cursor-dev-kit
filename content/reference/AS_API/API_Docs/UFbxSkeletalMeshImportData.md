# UFbxSkeletalMeshImportData

**Visibility:** public

## Inheritance

UFbxMeshImportData → UFbxSkeletalMeshImportData

## Description

Import data and options used when importing a static mesh from fbx Notes: - Meta data ImportType i.e.  meta = (ImportType = "SkeletalMesh|GeoOnly") - SkeletalMesh : the property will be shown when importing skeletalmesh - GeoOnly: The property will be hide if we import skinning only - RigOnly: The property will be hide if we import geo only - RigAndGeo: The property will be show only if we import both skinning and geometry, it will be hiden otherwise

## MESH

### VertexColorImportOption

```
EVertexColorImportOption VertexColorImportOption
```

Specify how vertex colors should be imported

### VertexOverrideColor

```
FColor VertexOverrideColor
```

Specify override color in the case that VertexColorImportOption is set to Override

### ThresholdPosition

```
float32 ThresholdPosition
```

Threshold to compare vertex position equality.

### ThresholdTangentNormal

```
float32 ThresholdTangentNormal
```

Threshold to compare normal, tangent or bi-normal equality.

### ThresholdUV

```
float32 ThresholdUV
```

Threshold to compare UV equality.

### MorphThresholdPosition

```
float32 MorphThresholdPosition
```

Threshold to compare vertex position equality when computing morph target deltas.

### ImportContentType

```
EFBXImportContentType ImportContentType
```

Filter the content we want to import from the incoming FBX skeletal mesh.

---

## FUNCTIONS

### SetbUseT0AsRefPose

```
void SetbUseT0AsRefPose(bool Value)
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

SetbUpdateSkeletonReferencePose

### void SetbUpdateSkeletonReferencePose

```
void SetbUpdateSkeletonReferencePose(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFbxSkeletalMeshImportData::StaticClass()
```
