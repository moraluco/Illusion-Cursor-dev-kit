# USkeletalMeshEditorSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → USkeletalMeshEditorSubsystem

## Description

USkeletalMeshEditorSubsystem Subsystem for exposing skeletal mesh functionality to scripts

EDITOR SCRIPTING | SKELETALMESH ImportLOD static int USkeletalMeshEditorSubsystem::ImportLOD( USkeletalMesh 	BaseMesh, int 	LODIndex, FString 	SourceFilename 	)

Import or re-import a LOD into the specified base mesh. If the LOD do not exist it will import it and add it to the base static mesh. If the LOD already exist it will re-import the specified LOD.

Returns

The index of the LOD that was imported or re-imported. Will return INDEX_NONE if anything goes bad.

GetLODCount static int USkeletalMeshEditorSubsystem::GetLODCount( USkeletalMesh 	SkeletalMesh 	)

Retrieve the number of LOD contain in the specified skeletal mesh.

Returns

The LOD number.

CreatePhysicsAsset static UPhysicsAsset USkeletalMeshEditorSubsystem::CreatePhysicsAsset( USkeletalMesh 	SkeletalMesh 	)

This function creates a PhysicsAsset for the given SkeletalMesh with the same settings as if it were created through FBX import

GetLodBuildSettings static void USkeletalMeshEditorSubsystem::GetLodBuildSettings(

const 	USkeletalMesh 	SkeletalMesh, 	int 	LodIndex, 	FSkeletalMeshBuildSettings& 	OutBuildOptions

)

Copy the build options with the specified LOD build settings.

Parameters SkeletalMesh const USkeletalMesh

Mesh to process.

LodIndex int

The LOD we get the reduction settings.

OutBuildOptions FSkeletalMeshBuildSettings&

The build settings where we copy the build options.

SetLodBuildSettings static void USkeletalMeshEditorSubsystem::SetLodBuildSettings(

USkeletalMesh 	SkeletalMesh, int 	LodIndex, FSkeletalMeshBuildSettings 	BuildOptions

)

Set the LOD build options for the specified LOD index.

Parameters SkeletalMesh USkeletalMesh

Mesh to process.

LodIndex int

The LOD we will apply the build settings.

BuildOptions FSkeletalMeshBuildSettings

The build settings we want to apply to the LOD.

ReimportAllCustomLODs static bool USkeletalMeshEditorSubsystem::ReimportAllCustomLODs( USkeletalMesh 	SkeletalMesh 	)

Re-import the specified skeletal mesh and all the custom LODs.

Returns

true if re-import works, false otherwise see log for explanation.

### SKELETAL MESH UTILITIES

```
SKELETAL MESH UTILITIES GetNumSections int GetNumSections(USkeletalMesh SkeletalMesh, int LODIndex)
```

Get number of sections for a LOD of a Skeletal Mesh

**Parameters**

SkeletalMesh
USkeletalMesh

Mesh to get number of vertices from.

LODIndex
int

Index of the mesh LOD.

**Returns**

Number of sections. Returns INDEX_NONE if invalid mesh or LOD index.

GetLODMaterialSlot
int GetLODMaterialSlot(
USkeletalMesh 	SkeletalMesh,
int 	LODIndex,
int 	SectionIndex
	)

Gets the material slot used for a specific LOD section.

**Parameters**

SkeletalMesh
USkeletalMesh

SkeletalMesh to get the material index from.

LODIndex
int

Index of the StaticMesh LOD.

SectionIndex
int

Index of the StaticMesh Section.

**Returns**

MaterialSlotIndex  Index of the material slot used by the section or INDEX_NONE in case of error.

RenameSocket
static bool USkeletalMeshEditorSubsystem::RenameSocket(
USkeletalMesh 	SkeletalMesh,
FName 	OldName,
FName 	NewName
	)

Rename a socket within a skeleton

**Parameters**

SkeletalMesh
USkeletalMesh

The mesh inside which we are renaming a socket

OldName
FName

The old name of the socket

NewName
FName

The new name of the socket

**Returns**

true if the renaming succeeded.

GetNumVerts
int GetNumVerts(
USkeletalMesh 	SkeletalMesh,
int 	LODIndex
	)

Get number of mesh vertices for an LOD of a Skeletal Mesh

**Parameters**

SkeletalMesh
USkeletalMesh

Mesh to get number of vertices from.

LODIndex
int

Index of the mesh LOD.

**Returns**

Number of vertices. Returns 0 if invalid mesh or LOD index.

RegenerateLOD
static bool USkeletalMeshEditorSubsystem::RegenerateLOD(

USkeletalMesh 	SkeletalMesh,
int 	NewLODCount	 = 	0,
bool 	bRegenerateEvenIfImported	 = 	false,
bool 	bGenerateBaseLOD	 = 	false

)

Regenerate LODs of the mesh

**Parameters**

SkeletalMesh
USkeletalMesh

The mesh that will regenerate LOD

NewLODCount
int

Set valid value (>0) if you want to change LOD count. Otherwise, it will use the current LOD and regenerate

bRegenerateEvenIfImported
bool

If this is true, it only regenerate even if this LOD was imported before If false, it will regenerate for only previously auto generated ones

bGenerateBaseLOD
bool

If this is true and there is some reduction data, the base LOD will be reduce according to the settings

**Returns**

true if succeed. If mesh reduction is not available this will return false.

STATIC FUNCTIONS
Get
static USkeletalMeshEditorSubsystem USkeletalMeshEditorSubsystem::Get()
StaticClass
static UClass USkeletalMeshEditorSubsystem::StaticClass()
