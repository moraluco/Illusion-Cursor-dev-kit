# UFbxSceneImportOptionsStaticMesh

**Visibility:** public

## Inheritance

UObject → UFbxSceneImportOptionsStaticMesh → STATICMESH → VertexOverrideColor

## Description

FColor VertexOverrideColor

Specify override color in the case that VertexColorImportOption is set to Override

NormalImportMethod EFBXSceneNormalImportMethod NormalImportMethod

Enabling this option will read the tangents(tangent,binormal,normal) from FBX file instead of generating them automatically.

NormalGenerationMethod EFBXSceneNormalGenerationMethod NormalGenerationMethod

Use the MikkTSpace tangent space generator for generating normals and tangents on the mesh

VertexColorImportOption EFbxSceneVertexColorImportOption VertexColorImportOption

Specify how vertex colors should be imported

## FUNCTIONS

### SetbRemoveDegenerates

```
void SetbRemoveDegenerates(bool Value)
```

SetbBuildReversedIndexBuffer

### void SetbBuildReversedIndexBuffer

```
void SetbBuildReversedIndexBuffer(bool Value)
```

SetbGenerateLightmapUVs

### void SetbGenerateLightmapUVs

```
void SetbGenerateLightmapUVs(bool Value)
```

SetbOneConvexHullPerUCX

### void SetbOneConvexHullPerUCX

```
void SetbOneConvexHullPerUCX(bool Value)
```

SetbAutoGenerateCollision

### void SetbAutoGenerateCollision

```
void SetbAutoGenerateCollision(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFbxSceneImportOptionsStaticMesh::StaticClass()
```
