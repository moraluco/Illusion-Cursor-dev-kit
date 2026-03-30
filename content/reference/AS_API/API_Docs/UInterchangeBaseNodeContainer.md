# UInterchangeBaseNodeContainer

**Visibility:** public

## Inheritance

UObject → UInterchangeBaseNodeContainer

## Description

Interchange UInterchangeBaseNode graph is a format used to feed asset/scene import/reimport/export factories/writer.  This container hold a flat list of all nodes that have been translated from the source data.

Translators are filling this container and the Import/Export managers are reading it to execute the import/export process

INTERCHANGE | NODE CONTAINER GetRoots void GetRoots( TArray<FString>& 	RootNodes 	) const

Return all nodes that do not have any parent

GetNode UInterchangeBaseNode GetNode( FString 	NodeUniqueID 	)

Get an node pointer

GetNodeChildren UInterchangeBaseNode GetNodeChildren( FString 	NodeUniqueID, int 	ChildIndex 	)

Get the node nth const children

GetNodeChildrenCount int GetNodeChildrenCount( FString 	NodeUniqueID 	) const

Get the node children count

GetNodeChildrenUids TArray<FString> GetNodeChildrenUids( FString 	NodeUniqueID 	) const

Get all children Uid

GetNodes void GetNodes( const 	UClass 	ClassNode, 	TArray<FString>& 	OutNodes 	) const

Return all nodes that are of the ClassNode type

AddNode FString AddNode( UInterchangeBaseNode 	Node 	)

Add a node in the container, the node will be add into a TMap.

Parameters Node UInterchangeBaseNode

a pointer on the node you want to add

Returns return the node unique ID of the added item. If the node already exist it will return the existing ID. Return InvalidNodeUid if the node cannot be added. IsNodeUidValid bool IsNodeUidValid( FString 	NodeUniqueID 	) const

Return true if the node unique ID exist in the container

LoadFromFile void LoadFromFile( FString 	Filename 	)

Serialize the node container from the specified file.

SaveToFile void SaveToFile( FString 	Filename 	)

Serialize the node container into the specified file.

SetNodeParentUid bool SetNodeParentUid( FString 	NodeUniqueID, FString 	NewParentNodeUid 	)

Set node ParentUid

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangeBaseNodeContainer::StaticClass()
```
