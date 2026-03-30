# UStaticMesh

**Visibility:** public

## Inheritance

UStreamableRenderAsset → UStaticMesh

## Description

A StaticMesh is a piece of geometry that consists of a static set of polygons.  Static Meshes can be translated, rotated, and scaled, but they cannot have their vertices animated in any way. As such, they are more efficient to render than other types of geometry such as USkeletalMesh, and they are often the basic building block of levels created in the engine.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Engine​/Content​/Types​/StaticMeshes​/ @see AStaticMeshActor, UStaticMeshComponent

## COLLISION

### bCustomizedCollision

```
bool bCustomizedCollision
```

If the user has modified collision in any way or has custom collision imported. Used for determining if to auto generate collision on import

### ComplexCollisionMesh

```
UStaticMesh ComplexCollisionMesh
```

---

## IMPORTSETTINGS

### AssetImportData

```
UAssetImportData AssetImportData
```

Importing data and options used for this mesh

---

## LODSETTINGS

### LODGroup

```
FName LODGroup
```

The LOD group to which this mesh belongs.

---

## NANITESETTINGS

### NaniteSettings

```
FMeshNaniteSettings NaniteSettings
```

Settings related to building Nanite data.

---

## NAVIGATION

### NavCollision

```
UNavCollisionBase NavCollision STATICMESH LODForCollision int LODForCollision
```

Specifies which mesh LOD to use for complex (per-poly) collision.  Sometimes it can be desirable to use a lower poly representation for collision to reduce memory usage, improve performance and behaviour.  Collision representation does not change based on distance to camera.

### LightMapCoordinateIndex

```
int LightMapCoordinateIndex
```

The light map coordinate index

### BodySetup

```
UBodySetup BodySetup
```
### DistanceFieldSelfShadowBias

```
float32 DistanceFieldSelfShadowBias
```

Useful for reducing self shadowing from distance field methods when using world position offset to animate the mesh's vertices.

### ThumbnailInfo

```
UThumbnailInfo ThumbnailInfo
```

Information for thumbnail rendering

### NegativeBoundsExtension

```
FVector NegativeBoundsExtension
```
### AssetUserData

```
TArray<TObjectPtr<UAssetUserData>> AssetUserData
```

Array of user data stored with the asset

### LightMapResolution

```
int LightMapResolution
```

The light map resolution

### PositiveBoundsExtension

```
FVector PositiveBoundsExtension BoundingBox const FBox BoundingBox
```

Returns the bounding box, in local space including bounds extension(s), of the StaticMesh asset

### Bounds

```
const FBoxSphereBounds Bounds
```

Returns the number of bounds of the mesh.

NumLods

### NumLods

```
const int NumLods
```

Returns the number of LODs used by the mesh.

### StaticMaterials

```
TArray<FStaticMaterial> StaticMaterials STATICMESH GetStaticMeshDescription UStaticMeshDescription GetStaticMeshDescription(int LODIndex)
```

Return a new StaticMeshDescription referencing the MeshDescription of the given LOD

### AddSocket

```
void AddSocket(UStaticMeshSocket Socket)
```

Add a socket object in this StaticMesh.

### BuildFromStaticMeshDescriptions

```
void BuildFromStaticMeshDescriptions(
```

TArray<UStaticMeshDescription> 	StaticMeshDescriptions,

bool 	bBuildSimpleCollision	 = 	false,

bool 	bFastBuild	 = 	true

### )

```
)
```

Builds static mesh LODs from the array of StaticMeshDescriptions passed in

### FindSocket

```
UStaticMeshSocket FindSocket(FName InSocketName)const
```

Find a socket object in this StaticMesh by name.  Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.

### GetBoundingBox

```
FBox GetBoundingBox()const
```

Returns the bounding box, in local space including bounds extension(s), of the StaticMesh asset

### GetBounds

```
FBoxSphereBounds GetBounds()const
```

Returns the number of bounds of the mesh.

**Returns**

The bounding box represented as box origin with extents and also a sphere that encapsulates that box

GetMaterial
UMaterialInterface GetMaterial(
int 	MaterialIndex
	) const

Gets a Material given a Material Index and an LOD number

**Returns**

Requested material

GetMaterialIndex
int GetMaterialIndex(
FName 	MaterialSlotName
	) const

Gets a Material index given a slot name

**Returns**

Requested material

GetMinimumLODForPlatform
int GetMinimumLODForPlatform(
FName 	PlatformName
	) const
GetMinimumLODForPlatforms
void GetMinimumLODForPlatforms(
TMap<FName,int>& 	PlatformMinimumLODs
	) const
GetMinimumLODForQualityLevel
int GetMinimumLODForQualityLevel(
FName 	QualityLevel
	) const
GetMinimumLODForQualityLevels
void GetMinimumLODForQualityLevels(
TMap<FName,int>& 	QualityLevelMinimumLODs
	) const
GetNumLods
int GetNumLods() const

Returns the number of LODs used by the mesh.

GetNumSections
int GetNumSections(
int 	InLOD
	) const

Returns number of Sections that this StaticMesh has, in the supplied LOD (LOD 0 is the highest)

AddMaterial
FName AddMaterial(
UMaterialInterface 	Material
	)

Adds a new material and return its slot name

RemoveSocket
void RemoveSocket(
UStaticMeshSocket 	Socket
	)

Remove a socket object in this StaticMesh by providing it's pointer. Use FindSocket() if needed.

SetMaterial
void SetMaterial(
int 	MaterialIndex,
UMaterialInterface 	NewMaterial
	)

Sets a Material given a Material Index

SetMinimumLODForPlatform
void SetMinimumLODForPlatform(
FName 	PlatformName,
int 	InMinLOD
	)
SetMinimumLODForPlatforms
void SetMinimumLODForPlatforms(
TMap<FName,int> 	PlatformMinimumLODs
	)
SetNumSourceModels
void SetNumSourceModels(
int 	Num
	)
CreateStaticMeshDescription
static UStaticMeshDescription UStaticMesh::CreateStaticMeshDescription(
UObject 	Outer	 = 	nullptr
	)

Create an empty StaticMeshDescription object, to describe a static mesh at runtime

---

## FUNCTIONS

### SetStaticMaterials

```
void SetStaticMaterials(TArray<FStaticMaterial> InStaticMaterials)
```

GetStaticMaterials

### const TArray<FStaticMaterial>& GetStaticMaterials

```
const TArray<FStaticMaterial>& GetStaticMaterials()const SetbHasNavigationData
```

void SetbHasNavigationData(

### bool 	Value

```
bool 	Value 	)
```

SetbSupportUniformlyDistributedSampling

### void SetbSupportUniformlyDistributedSampling

```
void SetbSupportUniformlyDistributedSampling(bool Value)
```

SetbSupportPhysicalMaterialMasks

### void SetbSupportPhysicalMaterialMasks

```
void SetbSupportPhysicalMaterialMasks(bool Value)
```

SetbSupportRayTracing

### void SetbSupportRayTracing

```
void SetbSupportRayTracing(bool Value)
```

SetbAllowCPUAccess

### void SetbAllowCPUAccess

```
void SetbAllowCPUAccess(bool Value)
```

SetbSupportGpuUniformlyDistributedSampling

### void SetbSupportGpuUniformlyDistributedSampling

```
void SetbSupportGpuUniformlyDistributedSampling(bool Value)
```

SetbGenerateMeshDistanceField

### void SetbGenerateMeshDistanceField

```
void SetbGenerateMeshDistanceField(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UStaticMesh::StaticClass()
```
