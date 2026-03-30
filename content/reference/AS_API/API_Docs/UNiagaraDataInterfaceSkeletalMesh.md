# UNiagaraDataInterfaceSkeletalMesh

**Visibility:** public

## Inheritance

UNiagaraDataInterface → UNiagaraDataInterfaceSkeletalMesh

## Description

Data Interface allowing sampling of skeletal meshes.

EXPERIMENTAL - UV MAPPING UvSetIndex int UvSetIndex

## MESH

### Source

```
AActor Source
```

The source actor from which to sample. Takes precedence over the direct mesh. Note that this can only be set when used as a user variable on a component in the world.

### MeshUserParameter

```
FNiagaraUserParameterBinding MeshUserParameter
```

Reference to a user parameter if we're reading one.

### SkinningMode

```
ENDISkeletalMesh_SkinningMode SkinningMode
```

Selects which skinning mode to use, for most cases Skin On The Fly will cover your requirements, see individual tooltips for more information.

### SamplingRegions

```
TArray<FName> SamplingRegions
```

Sampling regions on the mesh from which to sample. Leave this empty to sample from the whole mesh.

### SourceMode

```
ENDISkeletalMesh_SourceMode SourceMode
```

Controls how to retrieve the Skeletal Mesh Component to attach to.

### PreviewMesh

```
TSoftObjectPtr<USkeletalMesh> PreviewMesh
```

Mesh used to sample from when not overridden by a source actor from the scene. Only available in editor for previewing. This is removed in cooked builds.

### WholeMeshLOD

```
int WholeMeshLOD
```

If no regions are specified, we'll sample the whole mesh at this LODIndex. -1 indicates to use the last LOD.

---

## PERFORMANCE

### bRequireCurrentFrameData

```
bool bRequireCurrentFrameData
```

When this option is disabled, we use the previous frame's data for the skeletal mesh and can often issue the simulation early. This greatly reduces overhead and allows the game thread to run faster, but comes at a tradeoff if the dependencies might leave gaps or other visual artifacts.

---

## SKELETON

### FilteredBones

```
TArray<FName> FilteredBones
```

Set of filtered bones that can be used for sampling. Select from these with GetFilteredBoneAt and RandomFilteredBone.

### ExcludeBoneName

```
FName ExcludeBoneName
```

Optionally remove a single bone from Random / Random Unfiltered access.  You can still include this bone in filtered list and access using the direct index functionality.

### FilteredSockets

```
TArray<FName> FilteredSockets
```

Set of filtered sockets that can be used for sampling. Select from these with GetFilteredSocketAt and RandomFilteredSocket.

---

## FUNCTIONS

### SetbExcludeBone

```
void SetbExcludeBone(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceSkeletalMesh::StaticClass()
```
