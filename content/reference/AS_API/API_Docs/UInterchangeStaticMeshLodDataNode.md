# UInterchangeStaticMeshLodDataNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangeStaticMeshLodDataNode

## Description

namespace UE

INTERCHANGE | NODE | STATICMESHLODDATA MeshUidsCount const int MeshUidsCount

Mesh Uids: It can be either a scene or a mesh node uid. If its a scene it mean we want the mesh factory to bake the geo payload with the global transform of the scene node.

INTERCHANGE | NODE | STATICMESHLODDATA GetMeshUids void GetMeshUids( TArray<FString>& 	OutMeshNames 	) const GetMeshUidsCount int GetMeshUidsCount() const

Mesh Uids: It can be either a scene or a mesh node uid. If its a scene it mean we want the mesh factory to bake the geo payload with the global transform of the scene node.

RemoveAllMeshes bool RemoveAllMeshes() RemoveMeshUid bool RemoveMeshUid( FString 	MeshName 	) AddMeshUid bool AddMeshUid( FString 	MeshName 	) STATIC FUNCTIONS StaticClass static UClass UInterchangeStaticMeshLodDataNode::StaticClass()
