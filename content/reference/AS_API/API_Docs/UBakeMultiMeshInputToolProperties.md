# UBakeMultiMeshInputToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UBakeMultiMeshInputToolProperties → BAKEINPUT → SourceMeshes

## Description

TArray<FBakeMultiMeshDetailProperties> SourceMeshes

Source meshes and textures to sample from

ProjectionDistance float32 ProjectionDistance

Maximum allowed distance for the projection from target mesh to source mesh for the sample to be considered valid.  This is only relevant if a separate source mesh is provided.

TargetUVLayer FString TargetUVLayer

UV channel to use for the target mesh

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBakeMultiMeshInputToolProperties::StaticClass()
```
