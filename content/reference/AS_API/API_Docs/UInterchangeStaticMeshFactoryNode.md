# UInterchangeStaticMeshFactoryNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangeStaticMeshFactoryNode

## Description

namespace UE

INTERCHANGE | NODE | STATICMESH ObjectClass const UClass ObjectClass

Get the class this node want to create

LodDataCount const int LodDataCount

Return The number of LOD this static mesh has.

INTERCHANGE | NODE | STATICMESH GetObjectClass UClass GetObjectClass() const

Get the class this node want to create

GetCustomVertexColorIgnore bool GetCustomVertexColorIgnore( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomVertexColorOverride bool GetCustomVertexColorOverride( FColor& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomVertexColorReplace bool GetCustomVertexColorReplace( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetLodDataCount int GetLodDataCount() const

Return The number of LOD this static mesh has.

GetLodDataUniqueIds void GetLodDataUniqueIds( TArray<FString>& 	OutLodDataUniqueIds 	) const AddLodDataUniqueId bool AddLodDataUniqueId( FString 	LodDataUniqueId 	) InitializeStaticMeshNode void InitializeStaticMeshNode( FString 	UniqueID, FString 	DisplayLabel, FString 	InAssetClass 	)

Initialize node data

Parameters UniqueID FString

The uniqueId for this node

DisplayLabel FString

The name of the node

InAssetClass FString

The class the StaticMesh factory will create for this node.

RemoveLodDataUniqueId bool RemoveLodDataUniqueId( FString 	LodDataUniqueId 	) SetCustomVertexColorIgnore bool SetCustomVertexColorIgnore( const 	bool& 	AttributeValue 	) SetCustomVertexColorOverride bool SetCustomVertexColorOverride( FColor 	AttributeValue 	) SetCustomVertexColorReplace bool SetCustomVertexColorReplace( const 	bool& 	AttributeValue 	) STATIC FUNCTIONS StaticClass static UClass UInterchangeStaticMeshFactoryNode::StaticClass()
