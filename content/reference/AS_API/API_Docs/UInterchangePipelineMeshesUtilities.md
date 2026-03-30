# UInterchangePipelineMeshesUtilities

**Visibility:** public

## Inheritance

UObject → UInterchangePipelineMeshesUtilities

## Description

INTERCHANGE | PIPELINE | MESHES GetMeshGeometryByUid const FInterchangeMeshGeometry& GetMeshGeometryByUid( FString 	MeshGeometryUid 	) const

Get the geometry mesh from the unique ids.

GetAllMeshGeometryNotInstanced void GetAllMeshGeometryNotInstanced( TArray<FString>& 	MeshGeometryUids 	) const

Get all not instanced mesh geometry unique ids.

GetAllMeshInstanceUids void GetAllMeshInstanceUids( TArray<FString>& 	MeshInstanceUids 	) const

Get all mesh instance unique ids.

GetAllMeshInstanceUidsUsingMeshGeometryUid void GetAllMeshInstanceUidsUsingMeshGeometryUid( FString 	MeshGeometryUid, TArray<FString>& 	MeshInstanceUids 	) const

Get all instanced mesh uids using the mesh geometry unique ids.

GetAllSkinnedMeshGeometry void GetAllSkinnedMeshGeometry( TArray<FString>& 	MeshGeometryUids 	) const

Get all skinned mesh geometry unique ids.

GetAllSkinnedMeshInstance void GetAllSkinnedMeshInstance( TArray<FString>& 	MeshInstanceUids 	) const

Get all skinned mesh instance unique ids.

GetAllStaticMeshGeometry void GetAllStaticMeshGeometry( TArray<FString>& 	MeshGeometryUids 	) const

Get all static mesh geometry unique ids.

GetAllStaticMeshInstance void GetAllStaticMeshInstance( TArray<FString>& 	MeshInstanceUids 	) const

Get all static mesh instance unique ids.

GetAllMeshGeometry void GetAllMeshGeometry( TArray<FString>& 	MeshGeometryUids 	) const

Get all mesh geometry unique ids.

GetMeshGeometrySkeletonRootUid FString GetMeshGeometrySkeletonRootUid( FString 	MeshGeometryUid 	) const

Return the skeleton root node Uid, this is the uid for a UInterchangeSceneNode that has a "Joint" specialized type.  Return an empty string if the MeshGeometryUid parameter point on nothing.

GetMeshInstanceByUid const FInterchangeMeshInstance& GetMeshInstanceByUid( FString 	MeshInstanceUid 	) const

Get the instanced mesh from the unique ids.

GetMeshInstanceSkeletonRootUid FString GetMeshInstanceSkeletonRootUid( FString 	MeshInstanceUid 	) const

Return the skeleton root node Uid, this is the uid for a UInterchangeSceneNode that has a "Joint" specialized type.  Return an empty string if the MeshInstanceUid parameter point on nothing.

IsValidMeshGeometryUid bool IsValidMeshGeometryUid( FString 	MeshGeometryUid 	) const

Return true if there is an existing FInterchangeMeshGeometry matching the MeshInstanceUid key.

IsValidMeshInstanceUid bool IsValidMeshInstanceUid( FString 	MeshInstanceUid 	) const

Return true if there is an existing FInterchangeMeshInstance matching the MeshInstanceUid key.

CreateInterchangePipelineMeshesUtilities static UInterchangePipelineMeshesUtilities UInterchangePipelineMeshesUtilities::CreateInterchangePipelineMeshesUtilities(

### UInterchangeBaseNodeContainer 	BaseNodeContainer

```
UInterchangeBaseNodeContainer 	BaseNodeContainer
```

)

### Create an instance of UInterchangePipelineMeshesUtilities.

```
Create an instance of UInterchangePipelineMeshesUtilities.
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangePipelineMeshesUtilities::StaticClass()
```
