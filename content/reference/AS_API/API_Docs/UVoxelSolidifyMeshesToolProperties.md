# UVoxelSolidifyMeshesToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UVoxelSolidifyMeshesToolProperties

## Description

Properties of the solidify operation

## OPTIONS

### ExtendBounds

```
float ExtendBounds
```

How far we allow bounds of solid surface to go beyond the bounds of the original input surface before clamping / cutting the surface off

### SurfaceSearchSteps

```
int SurfaceSearchSteps
```

How many binary search steps to take when placing vertices on the surface

### bSolidAtBoundaries

```
bool bSolidAtBoundaries
```

Whether to fill at the border of the bounding box, if the surface extends beyond the voxel boundaries

### ThickenShells

```
float ThickenShells
```

Thicken open-boundary surfaces (extrude them inwards) to ensure they are captured in the VoxWrap output. Units are in world space.

### WindingThreshold

```
float WindingThreshold
```

Winding number threshold to determine what is consider inside the mesh

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVoxelSolidifyMeshesToolProperties::StaticClass()
```
