# UInterchangeSkeletalMeshLodDataNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangeSkeletalMeshLodDataNode

## Description

ns UE

INTERCHANGE | NODE | SKELETALMESHLODDATA MeshUidsCount const int MeshUidsCount

Mesh Uids: It can be either a scene or a mesh node uid. If its a scene it mean we want the mesh factory to bake the geo payload with the global transform of the scene node.

INTERCHANGE | NODE | SKELETALMESHLODDATA GetCustomSkeletonUid bool GetCustomSkeletonUid( FString& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetMeshUids void GetMeshUids( TArray<FString>& 	OutBlendShapeNames 	) const GetMeshUidsCount int GetMeshUidsCount() const

Mesh Uids: It can be either a scene or a mesh node uid. If its a scene it mean we want the mesh factory to bake the geo payload with the global transform of the scene node.

RemoveAllMeshes bool RemoveAllMeshes() RemoveMeshUid bool RemoveMeshUid( FString 	BlendShapeName 	) SetCustomSkeletonUid bool SetCustomSkeletonUid( FString 	AttributeValue 	) AddMeshUid bool AddMeshUid( FString 	BlendShapeName 	) STATIC FUNCTIONS StaticClass static UClass UInterchangeSkeletalMeshLodDataNode::StaticClass()
