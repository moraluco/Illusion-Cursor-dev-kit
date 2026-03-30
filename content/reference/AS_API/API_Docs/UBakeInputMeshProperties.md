# UBakeInputMeshProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UBakeInputMeshProperties

## Description

Bake tool property sets

## BAKEINPUT

### bHideSourceMesh

```
bool bHideSourceMesh
```

If true, hide the source mesh

### SourceNormalMap

```
UTexture2D SourceNormalMap
```

Source mesh normal map; if empty, the geometric normals will be used

### SourceNormalMapUVLayer

```
FString SourceNormalMapUVLayer
```

UV channel to use for the source mesh normal map; only relevant if a source normal map is set

### ProjectionDistance

```
float32 ProjectionDistance
```

Maximum allowed distance for the projection from target mesh to source mesh for the sample to be considered valid.  This is only relevant if a separate source mesh is provided.

### bProjectionInWorldSpace

```
bool bProjectionInWorldSpace
```

If true, uses the world space positions for the projection from target mesh to source mesh, otherwise it uses their object space positions.  This is only relevant if a separate source mesh is provided.

### TargetUVLayer

```
FString TargetUVLayer
```

UV channel to use for the target mesh

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBakeInputMeshProperties::StaticClass()
```
