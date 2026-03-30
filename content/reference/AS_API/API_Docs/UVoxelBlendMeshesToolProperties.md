# UVoxelBlendMeshesToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UVoxelBlendMeshesToolProperties

## Description

Properties of the blend operation

## BLEND

### BlendFalloff

```
float BlendFalloff
```

Blend falloff controls the size of the blend region

### Operation

```
EVoxelBlendOperation Operation
```

How to combine the shapes

### BlendPower

```
float BlendPower
```

Blend power controls the shape of the blend between shapes

---

## VOXWRAPPREPROCESS

### bRemoveInternalsAfterVoxWrap

```
bool bRemoveInternalsAfterVoxWrap
```

Remove internal surfaces from the VoxWrap output, before computing the blend.

### ThickenShells

```
float ThickenShells
```

Thicken open-boundary surfaces (extrude them inwards) before VoxWrapping them. Units are in world space. If 0 then no extrusion is applied.

### bVoxWrap

```
bool bVoxWrap
```

Apply a "VoxWrap" operation to input mesh(es) before computing the blend.  Fixes results for inputs with holes and/or self-intersections.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVoxelBlendMeshesToolProperties::StaticClass()
```
