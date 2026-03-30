# USkeletalMesh

**Visibility:** public

## Inheritance

UStreamableRenderAsset → USkeletalMesh

## Description

SkeletalMesh is geometry bound to a hierarchical skeleton of bones which can be animated for the purpose of deforming the mesh.  Skeletal Meshes are built up of two parts; a set of polygons composed to make up the surface of the mesh, and a hierarchical skeleton which can be used to animate the polygons.  The 3D models, rigging, and animations are created in an external modeling and animation application (3DSMax, Maya, Softimage, etc).

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Engine​/Content​/Types​/SkeletalMeshes​/

## ANIMATION

### NodeMappingData

```
TArray<UNodeMappingContainer> NodeMappingData
```

---

## ANIMATIONRIG

### DefaultAnimatingRig

```
TSoftObjectPtr<UObject> DefaultAnimatingRig
```

---

## CLOTHING

### MeshClothingAssets

```
TArray<UClothingAssetBase> MeshClothingAssets
```

---

## IMPORTSETTINGS

### AssetImportData

```
UAssetImportData AssetImportData
```

---

## LEVELOFDETAIL

### LODInfo

```
TArray<FSkeletalMeshLODInfo> LODInfo
```

---

## LIGHTING

### ShadowPhysicsAsset

```
UPhysicsAsset ShadowPhysicsAsset
```

---

## LODSETTINGS

### MinLod

```
FPerPlatformInt MinLod
```
### DisableBelowMinLodStripping

```
FPerPlatformBool DisableBelowMinLodStripping
```
### MaxNumStreamedLODs

```
FPerPlatformInt MaxNumStreamedLODs
```
### MaxNumOptionalLODs

```
FPerPlatformInt MaxNumOptionalLODs
```
### LODSettings

```
const USkeletalMeshLODSettings LODSettings
```
### bOverrideLODStreamingSettings

```
bool bOverrideLODStreamingSettings
```
### bSupportLODStreaming

```
FPerPlatformBool bSupportLODStreaming
```

---

## MESH

### NegativeBoundsExtension

```
FVector NegativeBoundsExtension
```
### Skeleton

```
const USkeleton Skeleton
```
### PositiveBoundsExtension

```
FVector PositiveBoundsExtension MorphTargets TArray<UMorphTarget> MorphTargets Bounds const FBoxSphereBounds Bounds
```

Get the extended bounds of this mesh (imported bounds plus bounds extension)

---

## MIRRORING

### SkelMirrorFlipAxis

```
EAxis SkelMirrorFlipAxis
```
### SkelMirrorTable

```
TArray<FBoneMirrorInfo> SkelMirrorTable
```
### SkelMirrorAxis

```
EAxis SkelMirrorAxis
```

---

## PHYSICS

### PhysicsAsset

```
UPhysicsAsset PhysicsAsset
```

---

## RAYTRACING

### ClothLODBiasMode

```
EClothLODBiasMode ClothLODBiasMode
```
### RayTracingMinLOD

```
int RayTracingMinLOD
```

---

## SAMPLING

### SamplingInfo

```
FSkeletalMeshSamplingInfo SamplingInfo
```

---

## SKELETALMESH

### Materials

```
TArray<FSkeletalMaterial> Materials
```
### AssetUserData

```
TArray<TObjectPtr<UAssetUserData>> AssetUserData
```

Array of user data stored with the asset

### PostProcessAnimBlueprint

```
TSubclassOf<UAnimInstance> PostProcessAnimBlueprint
```

---

## SKINWEIGHTS

### SkinWeightProfiles

```
TArray<FSkinWeightProfileInfo> SkinWeightProfiles
```

---

## THUMBNAIL

### ThumbnailInfo

```
UThumbnailInfo ThumbnailInfo
```

---

## VARIABLES

### AllMorphTargetNames

```
const TArray<FString> AllMorphTargetNames ImportedBounds const FBoxSphereBounds ImportedBounds ANIMATION GetSocketByIndex USkeletalMeshSocket GetSocketByIndex(int Index)const
```

Returns a socket by index. Max index is NumSockets(). The meshes sockets are accessed first, then the skeletons.

### FindSocketAndIndex

```
USkeletalMeshSocket FindSocketAndIndex(FName InSocketName, int& OutIndex)const
```

Find a socket object in this SkeletalMesh by name.  Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.  Also returns the index for the socket allowing for future fast access via GetSocketByIndex()

### FindSocketInfo

```
USkeletalMeshSocket FindSocketInfo(FName InSocketName, FTransform& OutTransform, int& OutBoneIndex, int& OutIndex)const
```

Find a socket object and asscociated info in this SkeletalMesh by name.  Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.  Also returns the index for the socket allowing for future fast access via GetSocketByIndex() Also rteturns the socket loca transform and the bone index (if any)

### NumSockets

```
int NumSockets()const
```

Returns the number of sockets available. Both on this mesh and it's skeleton.

### FindSocket

```
USkeletalMeshSocket FindSocket(FName InSocketName)const
```

Find a socket object in this SkeletalMesh by name.  Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.

### GetNodeMappingContainer

```
UNodeMappingContainer GetNodeMappingContainer(UBlueprint SourceAsset)const
```

### CLOTHING SIMULATION

```
CLOTHING SIMULATION IsSectionUsingCloth bool IsSectionUsingCloth(int InSectionIndex, bool bCheckCorrespondingSections = true)const
```

Checks whether the provided section is using APEX cloth. if bCheckCorrespondingSections is true disabled sections will defer to correspond sections to see if they use cloth (non-cloth sections are disabled and another section added when cloth is enabled, using this flag allows for a check on the original section to succeed)

**Parameters**

InSectionIndex
int

Index to check

bCheckCorrespondingSections
bool

Whether to check corresponding sections for disabled sections

---

## MESH

### GetImportedBounds

```
FBoxSphereBounds GetImportedBounds()const
```

Get the original imported bounds of the skel mesh

### GetAllMorphTargetNames

```
TArray<FString> GetAllMorphTargetNames()const
```

Returns the list of all morph targets of this skeletal mesh

**Returns**

The list of morph targets

GetBounds
FBoxSphereBounds GetBounds() const

Get the extended bounds of this mesh (imported bounds plus bounds extension)

---

## FUNCTIONS

### GetNodeMappingData

```
const TArray<UNodeMappingContainer>& GetNodeMappingData()const
```

GetPhysicsAsset

### UPhysicsAsset GetPhysicsAsset

```
UPhysicsAsset GetPhysicsAsset()const GetShadowPhysicsAsset
```

UPhysicsAsset GetShadowPhysicsAsset() const

### GetSkeleton

```
const USkeleton GetSkeleton()const
```

GetMaterials

### const TArray<FSkeletalMaterial>& GetMaterials

```
const TArray<FSkeletalMaterial>& GetMaterials()const GetLODSettings
```

const USkeletalMeshLODSettings GetLODSettings() const

### GetMeshClothingAssets

```
const TArray<UClothingAssetBase>& GetMeshClothingAssets()const
```

SetLODSettings

### void SetLODSettings

```
void SetLODSettings(USkeletalMeshLODSettings InLODSettings)
```

GetDefaultAnimatingRig

### TSoftObjectPtr<UObject> GetDefaultAnimatingRig

```
TSoftObjectPtr<UObject> GetDefaultAnimatingRig()const SetDefaultAnimatingRig
```

void SetDefaultAnimatingRig(

### TSoftObjectPtr<UObject> 	InAnimatingRig

```
TSoftObjectPtr<UObject> 	InAnimatingRig 	)
```

GetMorphTargets

### const TArray<UMorphTarget>& GetMorphTargets

```
const TArray<UMorphTarget>& GetMorphTargets()const SetMaterials
```

void SetMaterials(

### TArray<FSkeletalMaterial> 	InMaterials

```
TArray<FSkeletalMaterial> 	InMaterials 	)
```

SetMeshClothingAssets

### void SetMeshClothingAssets

```
void SetMeshClothingAssets(TArray<UClothingAssetBase> InMeshClothingAssets)
```

SetMorphTargets

### void SetMorphTargets

```
void SetMorphTargets(TArray<UMorphTarget> InMorphTargets)
```

SetSkeleton

### void SetSkeleton

```
void SetSkeleton(USkeleton InSkeleton)
```

SetbEnablePerPolyCollision

### void SetbEnablePerPolyCollision

```
void SetbEnablePerPolyCollision(bool Value)
```

SetPhysicsAsset

### void SetPhysicsAsset

```
void SetPhysicsAsset(UPhysicsAsset Value)
```

SetShadowPhysicsAsset

### void SetShadowPhysicsAsset

```
void SetShadowPhysicsAsset(UPhysicsAsset Value)
```

SetNodeMappingData

### void SetNodeMappingData

```
void SetNodeMappingData(TArray<TObjectPtr<UNodeMappingContainer>> Value)
```

SetbSupportRayTracing

### void SetbSupportRayTracing

```
void SetbSupportRayTracing(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USkeletalMesh::StaticClass()
```
