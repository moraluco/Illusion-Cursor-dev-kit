# UStaticMeshDescription

**Visibility:** public

## Inheritance

UMeshDescriptionBase → UStaticMeshDescription

## Description

A wrapper for MeshDescription, customized for static meshes

## MESHDESCRIPTION

### GetVertexInstanceUV

```
FVector2D GetVertexInstanceUV(FVertexInstanceID VertexInstanceID, int UVIndex = 0)const
```

SetPolygonGroupMaterialSlotName

### void SetPolygonGroupMaterialSlotName

```
void SetPolygonGroupMaterialSlotName(FPolygonGroupID PolygonGroupID, FName SlotName)
```

SetVertexInstanceUV

### void SetVertexInstanceUV

```
void SetVertexInstanceUV(FVertexInstanceID VertexInstanceID, FVector2D UV, int UVIndex = 0)
```

CreateCube

### void CreateCube

```
void CreateCube(FVector Center, FVector HalfExtents, FPolygonGroupID PolygonGroup, FPolygonID& PolygonID_PlusX, FPolygonID& PolygonID_MinusX, FPolygonID& PolygonID_PlusY, FPolygonID& PolygonID_MinusY, FPolygonID& PolygonID_PlusZ, FPolygonID& PolygonID_MinusZ)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UStaticMeshDescription::StaticClass()
```
