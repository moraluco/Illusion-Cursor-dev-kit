# UStaticMeshEditorSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → UStaticMeshEditorSubsystem

## Description

UStaticMeshEditorSubsystem Subsystem for exposing static mesh functionality to scripts

EDITOR SCRIPTING | DATAPREP MergeStaticMeshActors bool MergeStaticMeshActors( TArray<AStaticMeshActor> 	ActorsToMerge, FMergeStaticMeshActorsOptions 	MergeOptions, AStaticMeshActor& 	OutMergedActor 	)

Merge the meshes into a unique mesh with the provided StaticMeshActors. There are multiple options on how to merge the meshes and their materials.  The ActorsToMerge need to be in the same Level.  This may have a high impact on performance depending of the MeshMergingSettings options.

Parameters ActorsToMerge TArray<AStaticMeshActor>

List of Actors to merge.

MergeOptions FMergeStaticMeshActorsOptions

Options on how to merge the actors.

OutMergedActor AStaticMeshActor&

The new created actor, if requested.

Returns

if the operation is successful.

JoinStaticMeshActors AActor JoinStaticMeshActors( TArray<AStaticMeshActor> 	ActorsToJoin, FJoinStaticMeshActorsOptions 	JoinOptions 	)

Create a new Actor in the level that contains a duplicate of all the Actors Static Meshes Component.  The ActorsToJoin need to be in the same Level.  This will have a low impact on performance but may help the edition by grouping the meshes under a single Actor.

Parameters ActorsToJoin TArray<AStaticMeshActor>

List of Actors to join.

JoinOptions FJoinStaticMeshActorsOptions

Options on how to join the actors.

Returns

The new created actor.

CreateProxyMeshActor bool CreateProxyMeshActor( TArray<AStaticMeshActor> 	ActorsToMerge, FCreateProxyMeshActorOptions 	MergeOptions, AStaticMeshActor& 	OutMergedActor 	)

Build a proxy mesh actor that can replace a set of mesh actors.

Parameters ActorsToMerge TArray<AStaticMeshActor>

List of actors to build a proxy for.

OutMergedActor AStaticMeshActor&

generated actor if requested

Returns

Success of the proxy creation

EDITOR SCRIPTING | STATICMESH GetLODGroup FName GetLODGroup( UStaticMesh 	StaticMesh 	)

Get the LODGroup for the specified static mesh

Returns

LODGroup

GetLodReductionSettings void GetLodReductionSettings( const 	UStaticMesh 	StaticMesh, 	int 	LodIndex, 	FMeshReductionSettings& 	OutReductionOptions 	)

Copy the reduction options with the specified LOD reduction settings.

Parameters StaticMesh const UStaticMesh

Mesh to process.

LodIndex int

The LOD we get the reduction settings.

OutReductionOptions FMeshReductionSettings&

The reduction settings where we copy the reduction options.

ImportLOD int ImportLOD( UStaticMesh 	BaseStaticMesh, int 	LODIndex, FString 	SourceFilename 	)

Import or re-import a LOD into the specified base mesh. If the LOD do not exist it will import it and add it to the base static mesh. If the LOD already exist it will re-import the specified LOD.

Returns

the index of the LOD that was imported or re-imported. Will return INDEX_NONE if anything goes bad.

SetLodBuildSettings void SetLodBuildSettings( UStaticMesh 	StaticMesh, int 	LodIndex, FMeshBuildSettings 	BuildOptions 	)

Set the LOD build options for the specified LOD index.

Parameters StaticMesh UStaticMesh

Mesh to process.

LodIndex int

The LOD we will apply the build settings.

BuildOptions FMeshBuildSettings

The build settings we want to apply to the LOD.

GetLodBuildSettings void GetLodBuildSettings( const 	UStaticMesh 	StaticMesh, 	int 	LodIndex, 	FMeshBuildSettings& 	OutBuildOptions 	)

Copy the build options with the specified LOD build settings.

Parameters StaticMesh const UStaticMesh

Mesh to process.

LodIndex int

The LOD we get the reduction settings.

OutBuildOptions FMeshBuildSettings&

The build settings where we copy the build options.

ReimportAllCustomLODs bool ReimportAllCustomLODs( UStaticMesh 	StaticMesh 	)

Re-import all the custom LODs present in the specified static mesh.

Returns

true if re-import all LODs works, false otherwise see log for explanation.

SetLodReductionSettings void SetLodReductionSettings( UStaticMesh 	StaticMesh, int 	LodIndex, FMeshReductionSettings 	ReductionOptions 	)

Set the LOD reduction for the specified LOD index.

Parameters StaticMesh UStaticMesh

Mesh to process.

LodIndex int

The LOD we will apply the reduction settings.

ReductionOptions FMeshReductionSettings

The reduction settings we want to apply to the LOD.

SetLODGroup bool SetLODGroup( UStaticMesh 	StaticMesh, FName 	LODGroup, bool 	bRebuildImmediately	 = 	true 	)

Set the LODGroup for the specified static mesh

Parameters StaticMesh UStaticMesh

Mesh to process.

LODGroup FName

Name of the LODGroup to apply

bRebuildImmediately bool

If true, rebuild the static mesh immediately

Returns

Success

### STATIC MESH UTILITIES

```
STATIC MESH UTILITIES GetConvexCollisionCount int GetConvexCollisionCount(UStaticMesh StaticMesh)
```

Get number of convex collisions present on a static mesh.

**Parameters**

StaticMesh
UStaticMesh

Mesh to query on.

**Returns**

An integer representing the number of convex collisions on the input static mesh. An negative value indicates that the command could not be executed. See log for explanation.

GenerateBoxUVChannel
bool GenerateBoxUVChannel(
UStaticMesh 	StaticMesh,
int 	LODIndex,
int 	UVChannelIndex,
FVector 	Position,
FRotator 	Orientation,
FVector 	Size
	)

Generates box UV mapping in the specified UV channel on the given LOD of a StaticMesh.

**Parameters**

StaticMesh
UStaticMesh

Static mesh on which to generate the UV mapping.

LODIndex
int

Index of the StaticMesh LOD.

UVChannelIndex
int

Channel where to save the UV mapping.

Position
FVector

Position of the center of the projection gizmo.

Orientation
FRotator

Rotation to apply to the projection gizmo.

Size
FVector

The size of the box projection gizmo.

**Returns**

true if the UV mapping was generated.

GetLodCount
int GetLodCount(
UStaticMesh 	StaticMesh
	)

Get number of LODs present on a static mesh.

**Parameters**

StaticMesh
UStaticMesh

Mesh to process.

**Returns**

the number of LODs present on the input mesh. An negative value indicates that the command could not be executed. See log for explanation.

GenerateCylindricalUVChannel
bool GenerateCylindricalUVChannel(
UStaticMesh 	StaticMesh,
int 	LODIndex,
int 	UVChannelIndex,
FVector 	Position,
FRotator 	Orientation,
FVector2D 	Tiling
	)

Generates cylindrical UV mapping in the specified UV channel on the given LOD of a StaticMesh.

**Parameters**

StaticMesh
UStaticMesh

Static mesh on which to generate the UV mapping.

LODIndex
int

Index of the StaticMesh LOD.

UVChannelIndex
int

Channel where to save the UV mapping.

Position
FVector

Position of the center of the projection gizmo.

Orientation
FRotator

Rotation to apply to the projection gizmo.

Tiling
FVector2D

The UV tiling to use to generate the UV mapping.

**Returns**

true if the UV mapping was generated.

EnableSectionCastShadow
void EnableSectionCastShadow(
UStaticMesh 	StaticMesh,
bool 	bCastShadow,
int 	LODIndex,
int 	SectionIndex
	)

Enables/disables mesh section shadow casting for a specific LOD.

**Parameters**

StaticMesh
UStaticMesh

Static mesh to Enables/disables shadow casting from.

bCastShadow
bool

If the section should cast shadow.

LODIndex
int

Index of the StaticMesh LOD.

SectionIndex
int

Index of the StaticMesh Section.

GetLODMaterialSlot
int GetLODMaterialSlot(
UStaticMesh 	StaticMesh,
int 	LODIndex,
int 	SectionIndex
	)

Gets the material slot used for a specific LOD section.

**Parameters**

StaticMesh
UStaticMesh

Static mesh to get the material index from.

LODIndex
int

Index of the StaticMesh LOD.

SectionIndex
int

Index of the StaticMesh Section.

**Returns**

MaterialSlotIndex  Index of the material slot used by the section or INDEX_NONE in case of error.

BulkSetConvexDecompositionCollisionsWithNotification
bool BulkSetConvexDecompositionCollisionsWithNotification(
TArray<UStaticMesh> 	StaticMeshes,
int 	HullCount,
int 	MaxHullVerts,
int 	HullPrecision,
bool 	bApplyChanges
	)

Compute convex collisions for a set of static meshes.  Any existing collisions will be removed from the static meshes.  This method replicates what is done when invoking menu entry "Collision > Auto Convex Collision" in the Mesh Editor.

**Parameters**

StaticMeshes
TArray<UStaticMesh>

Set of Static mesh to add convex collision on.

HullCount
int

Maximum number of convex pieces that will be created. Must be positive.

MaxHullVerts
int

Maximum number of vertices allowed for any generated convex hull.

HullPrecision
int

Number of voxels to use when generating collision. Must be positive.

bApplyChanges
bool

Indicates if changes must be apply or not.

**Returns**

A boolean indicating if the addition was successful or not.

GeneratePlanarUVChannel
bool GeneratePlanarUVChannel(
UStaticMesh 	StaticMesh,
int 	LODIndex,
int 	UVChannelIndex,
FVector 	Position,
FRotator 	Orientation,
FVector2D 	Tiling
	)

Generates planar UV mapping in the specified UV channel on the given LOD of a StaticMesh.

**Parameters**

StaticMesh
UStaticMesh

Static mesh on which to generate the UV mapping.

LODIndex
int

Index of the StaticMesh LOD.

UVChannelIndex
int

Channel where to save the UV mapping.

Position
FVector

Position of the center of the projection gizmo.

Orientation
FRotator

Rotation to apply to the projection gizmo.

Tiling
FVector2D

The UV tiling to use to generate the UV mapping.

**Returns**

true if the UV mapping was generated.

GetNumberMaterials
int GetNumberMaterials(
UStaticMesh 	StaticMesh
	)

Get number of Materials for a StaticMesh

GetNumberVerts
int GetNumberVerts(
UStaticMesh 	StaticMesh,
int 	LODIndex
	)

Get number of StaticMesh verts for an LOD

BulkSetConvexDecompositionCollisions
bool BulkSetConvexDecompositionCollisions(
TArray<UStaticMesh> 	StaticMeshes,
int 	HullCount,
int 	MaxHullVerts,
int 	HullPrecision
	)

Same as SetConvexDecompositionCollisionsWithNotification but changes are automatically applied.

GetNaniteSettings
FMeshNaniteSettings GetNaniteSettings(
UStaticMesh 	StaticMesh
	)

Get the Nanite Settings for the mesh

**Parameters**

StaticMesh
UStaticMesh

Mesh to access

**Returns**

FMeshNaniteSettings struct for the given static mesh

GetCollisionComplexity
ECollisionTraceFlag GetCollisionComplexity(
UStaticMesh 	StaticMesh
	)

Get the Collision Trace behavior of a static mesh

**Parameters**

StaticMesh
UStaticMesh

Mesh to query on.

**Returns**

the Collision Trace behavior.

HasVertexColors
bool HasVertexColors(
UStaticMesh 	StaticMesh
	)

Check whether a static mesh has vertex colors

EnableSectionCollision
void EnableSectionCollision(
UStaticMesh 	StaticMesh,
bool 	bCollisionEnabled,
int 	LODIndex,
int 	SectionIndex
	)

Enables/disables mesh section collision for a specific LOD.

**Parameters**

StaticMesh
UStaticMesh

Static mesh to Enables/disables collisions from.

bCollisionEnabled
bool

If the collision is enabled or not.

LODIndex
int

Index of the StaticMesh LOD.

SectionIndex
int

Index of the StaticMesh Section.

GetLodScreenSizes
TArray<float32> GetLodScreenSizes(
UStaticMesh 	StaticMesh
	)

Get an array of LOD screen sizes for evaluation.

**Parameters**

StaticMesh
UStaticMesh

Mesh to process.

**Returns**

array of LOD screen sizes.

AddSimpleCollisions
int AddSimpleCollisions(
UStaticMesh 	StaticMesh,
EScriptCollisionShapeType 	ShapeType
	)

Same as AddSimpleCollisionsWithNotification but changes are automatically applied.

IsSectionCollisionEnabled
bool IsSectionCollisionEnabled(
UStaticMesh 	StaticMesh,
int 	LODIndex,
int 	SectionIndex
	)

Checks if a specific LOD mesh section has collision.

**Parameters**

StaticMesh
UStaticMesh

Static mesh to remove collisions from.

LODIndex
int

Index of the StaticMesh LOD.

SectionIndex
int

Index of the StaticMesh Section.

**Returns**

True is the collision is enabled for the specified LOD of the StaticMesh section.

AddUVChannel
bool AddUVChannel(
UStaticMesh 	StaticMesh,
int 	LODIndex
	)

Adds an empty UV channel at the end of the existing channels on the given LOD of a StaticMesh.

**Parameters**

StaticMesh
UStaticMesh

Static mesh on which to add a UV channel.

LODIndex
int

Index of the StaticMesh LOD.

**Returns**

true if a UV channel was added.

AddSimpleCollisionsWithNotification
int AddSimpleCollisionsWithNotification(
UStaticMesh 	StaticMesh,
EScriptCollisionShapeType 	ShapeType,
bool 	bApplyChanges
	)

Add simple collisions to a static mesh.  This method replicates what is done when invoking menu entries "Collision > Add [...] Simplified Collision" in the Mesh Editor.

**Parameters**

StaticMesh
UStaticMesh

Mesh to generate simple collision for.

ShapeType
EScriptCollisionShapeType

Options on which simple collision to add to the mesh.

bApplyChanges
bool

Indicates if changes must be apply or not.

**Returns**

An integer indicating the index of the collision newly created. A negative value indicates the addition failed.

GetNumUVChannels
int GetNumUVChannels(
UStaticMesh 	StaticMesh,
int 	LODIndex
	)

Returns the number of UV channels for the given LOD of a StaticMesh.

**Parameters**

StaticMesh
UStaticMesh

Static mesh to query.

LODIndex
int

Index of the StaticMesh LOD.

**Returns**

the number of UV channels.

RemoveCollisions
bool RemoveCollisions(
UStaticMesh 	StaticMesh
	)

Same as RemoveCollisionsWithNotification but changes are applied.

RemoveCollisionsWithNotification
bool RemoveCollisionsWithNotification(
UStaticMesh 	StaticMesh,
bool 	bApplyChanges
	)

Remove collisions from a static mesh.  This method replicates what is done when invoking menu entries "Collision > Remove Collision" in the Mesh Editor.

**Parameters**

StaticMesh
UStaticMesh

Static mesh to remove collisions from.

bApplyChanges
bool

Indicates if changes must be apply or not.

**Returns**

A boolean indicating if the removal was successful or not.

RemoveLods
bool RemoveLods(
UStaticMesh 	StaticMesh
	)

Remove LODs on a static mesh except LOD 0.

**Parameters**

StaticMesh
UStaticMesh

Mesh to remove LOD from.

**Returns**

A boolean indicating if the removal was successful, true, or not.

RemoveUVChannel
bool RemoveUVChannel(
UStaticMesh 	StaticMesh,
int 	LODIndex,
int 	UVChannelIndex
	)

Removes the UV channel at the specified channel index on the given LOD of a StaticMesh.

**Parameters**

StaticMesh
UStaticMesh

Static mesh on which to remove the UV channel.

LODIndex
int

Index of the StaticMesh LOD.

UVChannelIndex
int

Index where to remove the UV channel.

**Returns**

true if the UV channel was removed.

ReplaceMeshComponentsMaterials
void ReplaceMeshComponentsMaterials(
TArray<UMeshComponent> 	MeshComponents,
UMaterialInterface 	MaterialToBeReplaced,
UMaterialInterface 	NewMaterial
	)

Find the references of the material MaterialToReplaced on all the MeshComponents provided and replace it by NewMaterial.

**Parameters**

MeshComponents
TArray<UMeshComponent>

List of MeshComponent to search from.

MaterialToBeReplaced
UMaterialInterface

Material we want to replace.

NewMaterial
UMaterialInterface

Material to replace MaterialToBeReplaced by.

ReplaceMeshComponentsMaterialsOnActors
void ReplaceMeshComponentsMaterialsOnActors(
TArray<AActor> 	Actors,
UMaterialInterface 	MaterialToBeReplaced,
UMaterialInterface 	NewMaterial
	)

Find the references of the material MaterialToReplaced on all the MeshComponents of all the Actors provided and replace it by NewMaterial.

**Parameters**

Actors
TArray<AActor>

List of Actors to search from.

MaterialToBeReplaced
UMaterialInterface

Material we want to replace.

NewMaterial
UMaterialInterface

Material to replace MaterialToBeReplaced by.

ReplaceMeshComponentsMeshes
void ReplaceMeshComponentsMeshes(
TArray<UStaticMeshComponent> 	MeshComponents,
UStaticMesh 	MeshToBeReplaced,
UStaticMesh 	NewMesh
	)

Find the references of the mesh MeshToBeReplaced on all the MeshComponents provided and replace it by NewMesh.  The editor should not be in play in editor mode.

**Parameters**

MeshComponents
TArray<UStaticMeshComponent>

List of MeshComponent to search from.

MeshToBeReplaced
UStaticMesh

Mesh we want to replace.

NewMesh
UStaticMesh

Mesh to replace MeshToBeReplaced by.

ReplaceMeshComponentsMeshesOnActors
void ReplaceMeshComponentsMeshesOnActors(
TArray<AActor> 	Actors,
UStaticMesh 	MeshToBeReplaced,
UStaticMesh 	NewMesh
	)

Find the references of the mesh MeshToBeReplaced on all the MeshComponents of all the Actors provided and replace it by NewMesh.

**Parameters**

Actors
TArray<AActor>

List of Actors to search from.

MeshToBeReplaced
UStaticMesh

Mesh we want to replace.

NewMesh
UStaticMesh

Mesh to replace MeshToBeReplaced by.

SetAllowCPUAccess
void SetAllowCPUAccess(
UStaticMesh 	StaticMesh,
bool 	bAllowCPUAccess
	)

Sets StaticMeshFlag bAllowCPUAccess

SetConvexDecompositionCollisions
bool SetConvexDecompositionCollisions(
UStaticMesh 	StaticMesh,
int 	HullCount,
int 	MaxHullVerts,
int 	HullPrecision
	)

Same as SetConvexDecompositionCollisionsWithNotification but changes are automatically applied.

SetConvexDecompositionCollisionsWithNotification
bool SetConvexDecompositionCollisionsWithNotification(
UStaticMesh 	StaticMesh,
int 	HullCount,
int 	MaxHullVerts,
int 	HullPrecision,
bool 	bApplyChanges
	)

Add a convex collision to a static mesh.  Any existing collisions will be removed from the static mesh.  This method replicates what is done when invoking menu entry "Collision > Auto Convex Collision" in the Mesh Editor.

**Parameters**

StaticMesh
UStaticMesh

Static mesh to add convex collision on.

HullCount
int

Maximum number of convex pieces that will be created. Must be positive.

MaxHullVerts
int

Maximum number of vertices allowed for any generated convex hull.

HullPrecision
int

Number of voxels to use when generating collision. Must be positive.

bApplyChanges
bool

Indicates if changes must be apply or not.

**Returns**

A boolean indicating if the addition was successful or not.

SetGenerateLightmapUv
bool SetGenerateLightmapUv(
UStaticMesh 	StaticMesh,
bool 	bGenerateLightmapUVs
	)

Set Generate Lightmap UVs for StaticMesh

GetSimpleCollisionCount
int GetSimpleCollisionCount(
UStaticMesh 	StaticMesh
	)

Get number of simple collisions present on a static mesh.

**Parameters**

StaticMesh
UStaticMesh

Mesh to query on.

**Returns**

An integer representing the number of simple collisions on the input static mesh. An negative value indicates that the command could not be executed. See log for explanation.

SetLodFromStaticMesh
int SetLodFromStaticMesh(
UStaticMesh 	DestinationStaticMesh,
int 	DestinationLodIndex,
UStaticMesh 	SourceStaticMesh,
int 	SourceLodIndex,
bool 	bReuseExistingMaterialSlots
	)

Adds or create a LOD at DestinationLodIndex using the geometry from SourceStaticMesh SourceLodIndex

**Parameters**

DestinationStaticMesh
UStaticMesh

The static mesh to set the LOD in.

DestinationLodIndex
int

The index of the LOD to set.

SourceStaticMesh
UStaticMesh

The static mesh to get the LOD from.

SourceLodIndex
int

The index of the LOD to get.

bReuseExistingMaterialSlots
bool

If true, sections from SourceStaticMesh will be remapped to match the material slots of DestinationStaticMesh when they have the same material assigned. If false, all material slots of SourceStaticMesh will be appended in DestinationStaticMesh.

**Returns**

The index of the LOD that was set. It can be different than DestinationLodIndex if it wasn't a valid index. A negative value indicates that the LOD was not set. See log for explanation.

HasInstanceVertexColors
bool HasInstanceVertexColors(
UStaticMeshComponent 	StaticMeshComponent
	)

Check whether a static mesh component has vertex colors

SetLODMaterialSlot
void SetLODMaterialSlot(
UStaticMesh 	StaticMesh,
int 	MaterialSlotIndex,
int 	LODIndex,
int 	SectionIndex
	)

Sets the material slot for a specific LOD.

**Parameters**

StaticMesh
UStaticMesh

Static mesh to Enables/disables shadow casting from.

MaterialSlotIndex
int

Index of the material slot to use.

LODIndex
int

Index of the StaticMesh LOD.

SectionIndex
int

Index of the StaticMesh Section.

InsertUVChannel
bool InsertUVChannel(
UStaticMesh 	StaticMesh,
int 	LODIndex,
int 	UVChannelIndex
	)

Inserts an empty UV channel at the specified channel index on the given LOD of a StaticMesh.

**Parameters**

StaticMesh
UStaticMesh

Static mesh on which to insert a UV channel.

LODIndex
int

Index of the StaticMesh LOD.

UVChannelIndex
int

Index where to insert the UV channel.

**Returns**

true if a UV channel was added.

SetLods
int SetLods(
UStaticMesh 	StaticMesh,
FStaticMeshReductionOptions 	ReductionOptions
	)

Same as SetLodsWithNotification but changes are applied.

SetLodsWithNotification
int SetLodsWithNotification(
UStaticMesh 	StaticMesh,
FStaticMeshReductionOptions 	ReductionOptions,
bool 	bApplyChanges
	)

Remove then add LODs on a static mesh.  The static mesh must have at least LOD 0.  The LOD 0 of the static mesh is kept after removal.  The build settings of LOD 0 will be applied to all subsequent LODs.

**Parameters**

StaticMesh
UStaticMesh

Mesh to process.

ReductionOptions
FStaticMeshReductionOptions

Options on how to generate LODs on the mesh.

bApplyChanges
bool

Indicates if change must be notified.

**Returns**

the number of LODs generated on the input mesh. An negative value indicates that the reduction could not be performed. See log for explanation. No action will be performed if ReductionOptions.ReductionSettings is empty

SetNaniteSettings
void SetNaniteSettings(
UStaticMesh 	StaticMesh,
FMeshNaniteSettings 	NaniteSettings,
bool 	bApplyChanges	 = 	true
	)

Get the Nanite Settings for the mesh

**Parameters**

StaticMesh
UStaticMesh

Mesh to up[date nanite settings for

NaniteSettings
FMeshNaniteSettings

Settings with which to update the mesh

bApplyChanges
bool

Indicates if changes must be applied or not.

STATIC FUNCTIONS
Get
static UStaticMeshEditorSubsystem UStaticMeshEditorSubsystem::Get()
StaticClass
static UClass UStaticMeshEditorSubsystem::StaticClass()
