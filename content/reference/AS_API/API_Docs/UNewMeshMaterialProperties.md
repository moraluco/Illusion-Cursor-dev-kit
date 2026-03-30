# UNewMeshMaterialProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UNewMeshMaterialProperties

## Description

Standard material property settings for tools that generate new meshes

## MATERIAL

### bWorldSpaceUVScale

```
bool bWorldSpaceUVScale
```

If true, UV scale will be relative to world space. This means objects of different sizes created with the same UV scale have the same average texel size.

### bShowWireframe

```
bool bShowWireframe
```

If true, overlays preview with wireframe

### UVScale

```
float32 UVScale
```

Scale factor for generated UVs

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNewMeshMaterialProperties::StaticClass()
```
