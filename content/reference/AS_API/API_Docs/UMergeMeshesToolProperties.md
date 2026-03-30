# UMergeMeshesToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UMergeMeshesToolProperties

## Description

Standard properties of the Merge Meshes operation

## OPTIONS

### MeshAdaptivity

```
float32 MeshAdaptivity
```

Remeshing adaptivity, prior to optional simplification

### OffsetDistance

```
float32 OffsetDistance
```

Offset when remeshing, note large offsets with high voxels counts will be slow

### bAutoSimplify

```
bool bAutoSimplify
```

Automatically simplify the result of voxel-based merge.

### VoxelCount

```
int VoxelCount
```

The size of the geometry bounding box major axis measured in voxels.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMergeMeshesToolProperties::StaticClass()
```
