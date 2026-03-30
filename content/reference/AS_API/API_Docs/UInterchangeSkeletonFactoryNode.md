# UInterchangeSkeletonFactoryNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangeSkeletonFactoryNode

## Description

INTERCHANGE | NODE | SKELETON ObjectClass const UClass ObjectClass

Get the class this node want to create

INTERCHANGE | NODE | SKELETON GetObjectClass UClass GetObjectClass() const

Get the class this node want to create

InitializeSkeletonNode void InitializeSkeletonNode( FString 	UniqueID, FString 	DisplayLabel, FString 	InAssetClass 	)

Initialize node data

Parameters DisplayLabel FString

The name of the node

InAssetClass FString

The class the Skeleton factory will create for this node.

SetCustomRootJointUid bool SetCustomRootJointUid( FString 	AttributeValue 	) GetCustomRootJointUid bool GetCustomRootJointUid( FString& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangeSkeletonFactoryNode::StaticClass()
```
