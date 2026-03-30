# UDynamicMeshReplacementChangeTarget

**Visibility:** public

## Inheritance

UObject → UDynamicMeshReplacementChangeTarget

## Description

Bare bones wrapper of FDynamicMesh3 that supports MeshReplacementChange-based updates.  Shares the mesh ptr with the MeshReplacementChange objects, so it must not be changed directly TODO: also support other MeshChange objects (by making a copy of the mesh when applying these changes)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDynamicMeshReplacementChangeTarget::StaticClass()
```
