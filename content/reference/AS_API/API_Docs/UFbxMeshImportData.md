# UFbxMeshImportData

**Visibility:** public

## Inheritance

UFbxAssetImportData → UFbxMeshImportData → UFbxSkeletalMeshImportData → UFbxStaticMeshImportData

## Description

Import data and options used when importing any mesh from FBX

## MATERIAL

### bReorderMaterialToFbxOrder

```
bool bReorderMaterialToFbxOrder
```

If checked, The material list will be reorder to the same order has the FBX file.

---

## MESH

### NormalImportMethod

```
EFBXNormalImportMethod NormalImportMethod
```

Enabling this option will read the tangents(tangent,binormal,normal) from FBX file instead of generating them automatically.

### NormalGenerationMethod

```
EFBXNormalGenerationMethod NormalGenerationMethod
```

Use the MikkTSpace tangent space generator for generating normals and tangents on the mesh

### bBakePivotInVertex

```
bool bBakePivotInVertex
```

Experimental

If this option is true the inverse node rotation pivot will be apply to the mesh vertices. The pivot from the DCC will then be the origin of the mesh. Note: "TransformVertexToAbsolute" must be false.

### bImportMeshLODs

```
bool bImportMeshLODs
```

If enabled, creates LOD models for Unreal meshes from LODs in the import file; If not enabled, only the base mesh from the LOD group is imported

### bComputeWeightedNormals

```
bool bComputeWeightedNormals
```

Enabling this option will use weighted normals algorithm (area and angle) when computing normals or tangents

### bTransformVertexToAbsolute

```
bool bTransformVertexToAbsolute
```

If this option is true the node absolute transform (transform, offset and pivot) will be apply to the mesh vertices.

---

## FUNCTIONS

### SetbImportMeshLODs

```
void SetbImportMeshLODs(bool Value)
```

GetbComputeWeightedNormals

### bool GetbComputeWeightedNormals

```
bool GetbComputeWeightedNormals()const SetbComputeWeightedNormals
```

void SetbComputeWeightedNormals(

### bool 	Value

```
bool 	Value 	)
```

GetbImportMeshLODs

### bool GetbImportMeshLODs

```
bool GetbImportMeshLODs()const STATIC FUNCTIONS
```

StaticClass

### static UClass UFbxMeshImportData::StaticClass

```
static UClass UFbxMeshImportData::StaticClass()
```
