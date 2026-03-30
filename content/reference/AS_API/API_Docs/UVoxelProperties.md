# UVoxelProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UVoxelProperties → VOXELSETTINGS

## Description

bAutoSimplify bool bAutoSimplify

Automatically simplify the result of voxel-based meshes.

bRemoveInternalSurfaces bool bRemoveInternalSurfaces

Remove internal, occluded geometry

SimplifyMaxErrorFactor float SimplifyMaxErrorFactor

The max error (as a multiple of the voxel size) to accept when simplifying the output

CubeRootMinComponentVolume float CubeRootMinComponentVolume

Automatically remove components smaller than this (to clean up any isolated floating bits)

VoxelCount int VoxelCount

The size of the geometry bounding box major axis measured in voxels

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVoxelProperties::StaticClass()
```
