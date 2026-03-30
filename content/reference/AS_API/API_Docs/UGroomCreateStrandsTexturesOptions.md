# UGroomCreateStrandsTexturesOptions

**Visibility:** public

## Inheritance

UObject → UGroomCreateStrandsTexturesOptions → OPTIONS → SkeletalMesh

## Description

USkeletalMesh SkeletalMesh

Mesh on which the groom strands will be projected on. If non empty, the skeletal mesh will be used for generating the textures.

TraceType EStrandsTexturesTraceType TraceType

Direction in which the tracing will be done: either from the mesh's surface to the outside, or from the mesh's surface to the inside.

TraceDistance float32 TraceDistance

Distance from the mesh surface until hair are projected onto the mesh.

MeshType EStrandsTexturesMeshType MeshType

Select which mesh should be used for tracing

StaticMesh UStaticMesh StaticMesh

Mesh on which the groom strands will be projected on. If non empty and if the skeletal mesh entry is empty, the static mesh will be used for generating the textures.

Resolution int Resolution

Resolution of the output texture maps (tangent, coverage, ...)

LODIndex int LODIndex

LOD of the mesh, on which the texture projection is done

SectionIndex int SectionIndex

Section of the mesh, on which the texture projection is done

UVChannelIndex int UVChannelIndex

UV channel to use

GroupIndex TArray<int> GroupIndex

Groom index which should be baked into the textures. When the array is empty, all groups will be included (Default).

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGroomCreateStrandsTexturesOptions::StaticClass()
```
