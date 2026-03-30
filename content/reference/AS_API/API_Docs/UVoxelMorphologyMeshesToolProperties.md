# UVoxelMorphologyMeshesToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UVoxelMorphologyMeshesToolProperties

## Description

Properties of the morphology tool

## MORPHOLOGY

### Distance

```
float Distance
```
### Operation

```
EMorphologyOperation Operation
```

---

## VOXWRAPPREPROCESS

### bRemoveInternalsAfterVoxWrap

```
bool bRemoveInternalsAfterVoxWrap
```

Remove internal surfaces from the VoxWrap output, before computing the morphology.

### ThickenShells

```
float ThickenShells
```

Thicken open-boundary surfaces (extrude them inwards) before VoxWrapping them. Units are in world space. If 0, no extrusion is applied.

### bVoxWrap

```
bool bVoxWrap
```

Apply a "VoxWrap" operation to input mesh(es) before computing the morphology.  Fixes results for inputs with holes and/or self-intersections.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVoxelMorphologyMeshesToolProperties::StaticClass()
```
