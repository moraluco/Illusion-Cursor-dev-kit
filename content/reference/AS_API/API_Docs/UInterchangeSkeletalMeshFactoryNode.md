# UInterchangeSkeletalMeshFactoryNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangeSkeletalMeshFactoryNode

## Description

ns UE

INTERCHANGE | NODE | SKELETALMESH ObjectClass const UClass ObjectClass

Get the class this node want to create

LodDataCount const int LodDataCount

Return The number of LOD this skeletalmesh has.

INTERCHANGE | NODE | SKELETALMESH GetObjectClass UClass GetObjectClass() const

Get the class this node want to create

GetCustomCreatePhysicsAsset bool GetCustomCreatePhysicsAsset( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomImportMorphTarget bool GetCustomImportMorphTarget( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomPhysicAssetSoftObjectPath bool GetCustomPhysicAssetSoftObjectPath( FSoftObjectPath& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomSkeletonSoftObjectPath bool GetCustomSkeletonSoftObjectPath( FSoftObjectPath& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomVertexColorIgnore bool GetCustomVertexColorIgnore( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomVertexColorOverride bool GetCustomVertexColorOverride( FColor& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomVertexColorReplace bool GetCustomVertexColorReplace( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetLodDataCount int GetLodDataCount() const

Return The number of LOD this skeletalmesh has.

GetLodDataUniqueIds void GetLodDataUniqueIds( TArray<FString>& 	OutLodDataUniqueIds 	) const AddLodDataUniqueId bool AddLodDataUniqueId( FString 	LodDataUniqueId 	) InitializeSkeletalMeshNode void InitializeSkeletalMeshNode( FString 	UniqueID, FString 	DisplayLabel, FString 	InAssetClass 	)

Initialize node data

Parameters DisplayLabel FString

The name of the node

InAssetClass FString

The class the SkeletalMesh factory will create for this node.

RemoveLodDataUniqueId bool RemoveLodDataUniqueId( FString 	LodDataUniqueId 	) SetCustomCreatePhysicsAsset bool SetCustomCreatePhysicsAsset( const 	bool& 	AttributeValue 	) SetCustomImportMorphTarget bool SetCustomImportMorphTarget( const 	bool& 	AttributeValue 	) SetCustomPhysicAssetSoftObjectPath bool SetCustomPhysicAssetSoftObjectPath( FSoftObjectPath 	AttributeValue 	) SetCustomSkeletonSoftObjectPath bool SetCustomSkeletonSoftObjectPath( FSoftObjectPath 	AttributeValue 	) SetCustomVertexColorIgnore bool SetCustomVertexColorIgnore( const 	bool& 	AttributeValue 	) SetCustomVertexColorOverride bool SetCustomVertexColorOverride( FColor 	AttributeValue 	) SetCustomVertexColorReplace bool SetCustomVertexColorReplace( const 	bool& 	AttributeValue 	) STATIC FUNCTIONS StaticClass static UClass UInterchangeSkeletalMeshFactoryNode::StaticClass()
