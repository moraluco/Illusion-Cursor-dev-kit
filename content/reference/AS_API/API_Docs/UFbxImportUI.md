# UFbxImportUI

**Visibility:** public

## Inheritance

UObject → UFbxImportUI → ANIMATION

## Description

bImportAnimations bool bImportAnimations

True to import animations from the FBX File

AnimSequenceImportData UFbxAnimSequenceImportData AnimSequenceImportData

Import data used when importing animations

OverrideAnimationName FString OverrideAnimationName

Override for the name of the animation to import. By default, it will be the name of FBX

## LODSETTINGS

### MinimumLodNumber

```
int MinimumLodNumber
```

Set the minimum LOD used for rendering. Setting the value to 0 will use the default value of LOD0.

### LodDistance6

```
float32 LodDistance6
```

Set a screen size value for LOD 6

### LodDistance7

```
float32 LodDistance7
```

Set a screen size value for LOD 7

### LodDistance3

```
float32 LodDistance3
```

Set a screen size value for LOD 3

### LodDistance1

```
float32 LodDistance1
```

Set a screen size value for LOD 1

### LodNumber

```
int LodNumber
```

Set the number of LODs for the editor to import. Setting the value to 0 imports the number of LODs found in the file (up to the maximum).

### LodDistance0

```
float32 LodDistance0
```

Set a screen size value for LOD 0

### LodDistance4

```
float32 LodDistance4
```

Set a screen size value for LOD 4

### LodDistance5

```
float32 LodDistance5
```

Set a screen size value for LOD 5

### bAutoComputeLodDistances

```
bool bAutoComputeLodDistances
```

If checked, the editor will automatically compute screen size values for the static mesh's LODs. If unchecked, the user can enter custom screen size values for each LOD.

### LodDistance2

```
float32 LodDistance2
```

Set a screen size value for LOD 2

---

## MATERIAL

### bImportMaterials

```
bool bImportMaterials
```

If no existing materials are found, whether to automatically create Unreal materials for materials found in the FBX scene

### bResetToFbxOnMaterialConflict

```
bool bResetToFbxOnMaterialConflict
```

If true, the imported material sections will automatically be reset to the imported data in case of a reimport conflict.

### TextureImportData

```
UFbxTextureImportData TextureImportData
```

Import data used when importing textures

### bImportTextures

```
bool bImportTextures
```

Whether or not we should import textures. This option is disabled when we are importing materials because textures are always imported in that case.

---

## MESH

### bImportMesh

```
bool bImportMesh
```

Whether to import the mesh. Allows animation only import when importing a skeletal mesh.

### StaticMeshImportData

```
UFbxStaticMeshImportData StaticMeshImportData
```

Import data used when importing static meshes

### SkeletalMeshImportData

```
UFbxSkeletalMeshImportData SkeletalMeshImportData
```

Import data used when importing skeletal meshes

### PhysicsAsset

```
UPhysicsAsset PhysicsAsset
```

If this is set, use this PhysicsAsset. It is possible bCreatePhysicsAsset == false, and PhysicsAsset == NULL. It is possible they do not like to create anything.

### Skeleton

```
USkeleton Skeleton
```

Skeleton to use for imported asset. When importing a mesh, leaving this as "None" will create a new skeleton. When importing an animation this MUST be specified to import the asset.

### bImportAsSkeletal

```
bool bImportAsSkeletal
```

Whether to import the incoming FBX as a skeletal object

### bCreatePhysicsAsset

```
bool bCreatePhysicsAsset
```

If checked, create new PhysicsAsset if it doesn't have it

---

## MISCELLANEOUS

### OriginalImportType

```
EFBXImportType OriginalImportType
```

The original detected type of this import

### bImportRigidMesh

```
bool bImportRigidMesh
```

Enables importing of 'rigid skeletalmesh' (unskinned, hierarchy-based animation) from this FBX file, no longer shown, used behind the scenes

### bAutomatedImportShouldDetectType

```
bool bAutomatedImportShouldDetectType
```

If true the automated import path should detect the import type.  If false the import type was specified by the user

### MeshTypeToImport

```
EFBXImportType MeshTypeToImport
```

Type of asset to import from the FBX file

### bIsObjImport

```
bool bIsObjImport
```

Whether or not the imported file is in OBJ format

### bOverrideFullName

```
bool bOverrideFullName
```

Use the string in "Name" field as full name of mesh. The option only works when the scene contains one mesh.

---

## MISCELLANEOUS

### ResetToDefault

```
void ResetToDefault()
```

---

## FUNCTIONS

### SetbOverrideFullName

```
void SetbOverrideFullName(bool Value)
```

GetbCreatePhysicsAsset

### bool GetbCreatePhysicsAsset

```
bool GetbCreatePhysicsAsset()const GetbOverrideFullName
```

bool GetbOverrideFullName() const

### SetbCreatePhysicsAsset

```
void SetbCreatePhysicsAsset(bool Value)
```

GetbAutoComputeLodDistances

### bool GetbAutoComputeLodDistances

```
bool GetbAutoComputeLodDistances()const SetbAutoComputeLodDistances
```

void SetbAutoComputeLodDistances(

### bool 	Value

```
bool 	Value 	)
```

GetbImportAnimations

### bool GetbImportAnimations

```
bool GetbImportAnimations()const SetbImportAnimations
```

void SetbImportAnimations(

### bool 	Value

```
bool 	Value 	)
```

GetbImportRigidMesh

### bool GetbImportRigidMesh

```
bool GetbImportRigidMesh()const SetbImportRigidMesh
```

void SetbImportRigidMesh(

### bool 	Value

```
bool 	Value 	)
```

GetbImportMaterials

### bool GetbImportMaterials

```
bool GetbImportMaterials()const SetbImportMaterials
```

void SetbImportMaterials(

### bool 	Value

```
bool 	Value 	)
```

GetbImportTextures

### bool GetbImportTextures

```
bool GetbImportTextures()const SetbImportTextures
```

void SetbImportTextures(

### bool 	Value

```
bool 	Value 	)
```

GetbResetToFbxOnMaterialConflict

### bool GetbResetToFbxOnMaterialConflict

```
bool GetbResetToFbxOnMaterialConflict()const SetbResetToFbxOnMaterialConflict
```

void SetbResetToFbxOnMaterialConflict(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFbxImportUI::StaticClass()
```
