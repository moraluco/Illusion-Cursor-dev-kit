# UNiagaraDataInterfaceStaticMesh

**Visibility:** public

## Inheritance

UNiagaraDataInterface → UNiagaraDataInterfaceStaticMesh

## Description

Data Interface allowing sampling of static meshes.

## MESH

### PreviewMesh

```
TSoftObjectPtr<UStaticMesh> PreviewMesh
```

Mesh used to sample from when not overridden by a source actor from the scene. Only available in editor for previewing. This is removed in cooked builds.

### DefaultMesh

```
UStaticMesh DefaultMesh
```

Mesh used to sample from when not overridden by a source actor from the scene. This mesh is NOT removed from cooked builds.

### Source

```
AActor Source
```

The source actor from which to sample. Takes precedence over the direct mesh. Note that this can only be set when used as a user variable on a component in the world.

### SectionFilter

```
FNDIStaticMeshSectionFilter SectionFilter
```

Array of filters the can be used to limit sampling to certain sections of the mesh.

### bUsePhysicsBodyVelocity

```
bool bUsePhysicsBodyVelocity
```

If true then the mesh velocity is taken from the mesh component's physics data. Otherwise it will be calculated by diffing the component transforms between ticks, which is more reliable but won't work on the first frame.

### FilteredSockets

```
TArray<FName> FilteredSockets
```

List of filtered sockets to use.

### SourceMode

```
ENDIStaticMesh_SourceMode SourceMode
```

Controls how to retrieve the Static Mesh Component to attach to.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceStaticMesh::StaticClass()
```
