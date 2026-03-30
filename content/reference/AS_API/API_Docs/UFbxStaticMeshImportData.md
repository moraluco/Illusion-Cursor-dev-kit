# UFbxStaticMeshImportData

**Visibility:** public

## Inheritance

UFbxMeshImportData → UFbxStaticMeshImportData → MESH

## Description

bBuildReversedIndexBuffer bool bBuildReversedIndexBuffer VertexColorImportOption EVertexColorImportOption VertexColorImportOption

Specify how vertex colors should be imported

VertexOverrideColor FColor VertexOverrideColor

Specify override color in the case that VertexColorImportOption is set to Override

DistanceFieldResolutionScale float32 DistanceFieldResolutionScale

Specify override color in the case that VertexColorImportOption is set to Override

bRemoveDegenerates bool bRemoveDegenerates

Disabling this option will keep degenerate triangles found.  In general you should leave this option on.

StaticMeshLODGroup FName StaticMeshLODGroup

The LODGroup to associate with this mesh when it is imported

bBuildNanite bool bBuildNanite

If enabled, allows to render objects with Nanite

bGenerateLightmapUVs bool bGenerateLightmapUVs bOneConvexHullPerUCX bool bOneConvexHullPerUCX

If checked, one convex hull per UCX_ prefixed collision mesh will be generated instead of decomposing into multiple hulls

bAutoGenerateCollision bool bAutoGenerateCollision

If checked, collision will automatically be generated (ignored if custom collision is imported or used).

bCombineMeshes bool bCombineMeshes

If enabled, combines all meshes into a single mesh

## FUNCTIONS

### SetbGenerateLightmapUVs

```
void SetbGenerateLightmapUVs(bool Value)
```

SetbRemoveDegenerates

### void SetbRemoveDegenerates

```
void SetbRemoveDegenerates(bool Value)
```

GetbBuildReversedIndexBuffer

### bool GetbBuildReversedIndexBuffer

```
bool GetbBuildReversedIndexBuffer()const SetbBuildReversedIndexBuffer
```

void SetbBuildReversedIndexBuffer(

### bool 	Value

```
bool 	Value 	)
```

GetbBuildNanite

### bool GetbBuildNanite

```
bool GetbBuildNanite()const SetbBuildNanite
```

void SetbBuildNanite(

### bool 	Value

```
bool 	Value 	)
```

GetbGenerateLightmapUVs

### bool GetbGenerateLightmapUVs

```
bool GetbGenerateLightmapUVs()const GetbRemoveDegenerates
```

bool GetbRemoveDegenerates() const

### GetbOneConvexHullPerUCX

```
bool GetbOneConvexHullPerUCX()const
```

SetbOneConvexHullPerUCX

### void SetbOneConvexHullPerUCX

```
void SetbOneConvexHullPerUCX(bool Value)
```

GetbAutoGenerateCollision

### bool GetbAutoGenerateCollision

```
bool GetbAutoGenerateCollision()const SetbAutoGenerateCollision
```

void SetbAutoGenerateCollision(

### bool 	Value

```
bool 	Value 	)
```

GetbCombineMeshes

### bool GetbCombineMeshes

```
bool GetbCombineMeshes()const SetbCombineMeshes
```

void SetbCombineMeshes(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFbxStaticMeshImportData::StaticClass()
```
