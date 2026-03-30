# UInterchangeBaseNode

**Visibility:** public

## Inheritance

UObject → UInterchangeBaseNode → UInterchangeActorFactoryNode → UInterchangeCameraNode → UInterchangeLightNode → UInterchangeMaterialFactoryNode

## Description

and 11 other children

This struct is used to store and retrieve key value attributes. The attributes are store in a generic FAttributeStorage which serialize the value in a TArray64<uint8> See UE::Interchange::EAttributeTypes to know the supported template types This is an abstract class. This is the base class of the interchange node graph format, all class in this format should derive from this class

INTERCHANGE | NODE DisplayLabel FString DisplayLabel

Return the display label.

FactoryDependenciesCount const int FactoryDependenciesCount

This function allow to retrieve the number of factory dependencies for this object.

NodeContainerType const EInterchangeNodeContainerType NodeContainerType

Return the node container type which define the purpose of the node (Factory node, translated scene node or translated asset node).

ParentUid FString ParentUid

Return the parent unique id. In case the attribute does not exist it will return InvalidNodeUid()

TargetNodeCount const int TargetNodeCount

Get number of target assets relating to this object.

UniqueID const FString UniqueID

Return the unique id pass in the constructor.

AssetName FString AssetName

Optional, Any node that can import/export an asset should set the proper name we will give to the asset.  If the attribute was never set, it will return GetDisplayLabel.

INTERCHANGE | NODE GetParentUid FString GetParentUid() const

Return the parent unique id. In case the attribute does not exist it will return InvalidNodeUid()

AddFactoryDependencyUid bool AddFactoryDependencyUid( FString 	DependencyUid 	)

Add one dependency to this object.

AddFloatAttribute bool AddFloatAttribute( 	FString 	NodeAttributeKey, const 	float32& 	Value 	)

Add a float attribute to this node. Return false if the attribute do not exist or if we cannot add it

AddInt32Attribute bool AddInt32Attribute( 	FString 	NodeAttributeKey, const 	int& 	Value 	)

Add a int32 attribute to this node. Return false if the attribute do not exist or if we cannot add it

AddStringAttribute bool AddStringAttribute( FString 	NodeAttributeKey, FString 	Value 	)

Add a string attribute to this node. Return false if the attribute do not exist or if we cannot add it

AddTargetNodeUid bool AddTargetNodeUid( FString 	AssetUid 	) const

Add asset node UID relating to this object.

GetAssetName FString GetAssetName() const

Optional, Any node that can import/export an asset should set the proper name we will give to the asset.  If the attribute was never set, it will return GetDisplayLabel.

GetBooleanAttribute bool GetBooleanAttribute( FString 	NodeAttributeKey, bool& 	OutValue 	)

Get a boolean attribute from this node. Return false if the attribute do not exist

GetDisplayLabel FString GetDisplayLabel() const

Return the display label.

GetFactoryDependencies void GetFactoryDependencies( TArray<FString>& 	OutDependencies 	) const

This function allow to retrieve the dependency for this object.

GetFactoryDependenciesCount int GetFactoryDependenciesCount() const

This function allow to retrieve the number of factory dependencies for this object.

GetFactoryDependency void GetFactoryDependency( int 	Index, FString& 	OutDependency 	) const

This function allow to retrieve one dependency for this object.

GetFloatAttribute bool GetFloatAttribute( FString 	NodeAttributeKey, float32& 	OutValue 	)

Get a float attribute from this node. Return false if the attribute do not exist

GetInt32Attribute bool GetInt32Attribute( FString 	NodeAttributeKey, int& 	OutValue 	)

Get a int32 attribute from this node. Return false if the attribute do not exist

GetNodeContainerType EInterchangeNodeContainerType GetNodeContainerType() const

Return the node container type which define the purpose of the node (Factory node, translated scene node or translated asset node).

AddBooleanAttribute bool AddBooleanAttribute( 	FString 	NodeAttributeKey, const 	bool& 	Value 	)

Add a boolean attribute to this node. Return false if the attribute do not exist or if we cannot add it

GetStringAttribute bool GetStringAttribute( FString 	NodeAttributeKey, FString& 	OutValue 	)

Get a string attribute from this node. Return false if the attribute do not exist

GetTargetNodeCount int GetTargetNodeCount() const

Get number of target assets relating to this object.

GetTargetNodeUids void GetTargetNodeUids( TArray<FString>& 	OutTargetAssets 	) const

Get target assets relating to this object.

GetUniqueID FString GetUniqueID() const

Return the unique id pass in the constructor.

InitializeNode void InitializeNode( FString 	UniqueID, FString 	DisplayLabel, EInterchangeNodeContainerType 	NodeContainerType 	)

Initialize the base data of the node

Parameters UniqueID FString

The uniqueId for this node

DisplayLabel FString

The name of the node

IsEnabled bool IsEnabled() const

IsEnable true mean that the node will be import/export, if false it will be discarded.  Return false if this node was disabled. Return true if the attribute is not there or if it was enabled.

RemoveAttribute bool RemoveAttribute( FString 	NodeAttributeKey 	)

Remove any attribute from this node. Return false if we cannot remove it. If the attribute do not exist it will return true.

RemoveFactoryDependencyUid bool RemoveFactoryDependencyUid( FString 	DependencyUid 	)

Remove one dependency from this object.

RemoveTargetNodeUid bool RemoveTargetNodeUid( FString 	AssetUid 	) const

Remove asset node UID relating to this object.

SetAssetName bool SetAssetName( FString 	AssetName 	)

Set the name we want for the imported asset this node represent. The asset factory will call GetAssetName()

SetDisplayLabel bool SetDisplayLabel( FString 	DisplayName 	)

Change the display label.

SetEnabled bool SetEnabled( bool 	bIsEnabled 	)

Set the IsEnable attribute to determine if this node should be part of the import/export process

Parameters bIsEnabled bool

The enabled state we want to set this node. True will import/export the node, fals will not.

Returns

true if it was able to set the attribute, false otherwise.

SetParentUid bool SetParentUid( FString 	ParentUid 	)

Set the parent unique id.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangeBaseNode::StaticClass()
```
