# UInterchangeMaterialFactoryNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangeMaterialFactoryNode

## Description

INTERCHANGE | NODE | MATERIALFACTORY TextureDependeciesCount const int TextureDependeciesCount

This function allow to retrieve the number of Texture dependencies for this object.

ObjectClass const UClass ObjectClass

Get the class this node want to create

INTERCHANGE | NODE | MATERIALFACTORY InitializeMaterialNode void InitializeMaterialNode( FString 	UniqueID, FString 	DisplayLabel, FString 	InAssetClass 	)

Initialize node data

Parameters DisplayLabel FString

The name of the node

InAssetClass FString

The class the material factory will create for this node.

GetCustomMaterialUsage bool GetCustomMaterialUsage( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomTranslatedMaterialNodeUid bool GetCustomTranslatedMaterialNodeUid( FString& 	AttributeValue 	) const

Get the translated texture node unique ID.

GetObjectClass UClass GetObjectClass() const

Get the class this node want to create

GetTextureDependeciesCount int GetTextureDependeciesCount() const

This function allow to retrieve the number of Texture dependencies for this object.

GetTextureDependencies void GetTextureDependencies( TArray<FString>& 	OutDependencies 	) const

This function allow to retrieve the Texture dependency for this object.

GetTextureDependency void GetTextureDependency( int 	Index, FString& 	OutDependency 	) const

This function allow to retrieve one Texture dependency for this object.

GetCustomBlendMode bool GetCustomBlendMode( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

RemoveTextureDependencyUid bool RemoveTextureDependencyUid( FString 	DependencyUid 	)

Remove one Texture dependency from this object.

SetCustomBlendMode bool SetCustomBlendMode( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomMaterialUsage bool SetCustomMaterialUsage( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomTranslatedMaterialNodeUid bool SetCustomTranslatedMaterialNodeUid( FString 	AttributeValue 	)

Set the translated texture node unique ID. This is the reference to the node that was create by the translator and this node is needed to get the texture payload.

SetTextureDependencyUid bool SetTextureDependencyUid( FString 	DependencyUid 	)

Add one Texture dependency to this object.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangeMaterialFactoryNode::StaticClass()
```
