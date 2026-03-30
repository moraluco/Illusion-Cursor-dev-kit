# UVoxelCSGMeshesToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UVoxelCSGMeshesToolProperties

## Description

Standard properties of the Voxel CSG operation

## OPTIONS

### VoxelCount

```
int VoxelCount
```

The size of the geometry bounding box major axis measured in voxels.

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

### Operation

```
EVoxelCSGOperation Operation
```

The type of operation

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVoxelCSGMeshesToolProperties::StaticClass()
```
