# UInterchangePhysicsAssetFactoryNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangePhysicsAssetFactoryNode

## Description

INTERCHANGE | NODE | SKELETON ObjectClass const UClass ObjectClass

Get the class this node want to create

INTERCHANGE | NODE | SKELETON GetObjectClass UClass GetObjectClass() const

Get the class this node want to create

InitializePhysicsAssetNode void InitializePhysicsAssetNode( FString 	UniqueID, FString 	DisplayLabel, FString 	InAssetClass 	)

Initialize node data

Parameters DisplayLabel FString

The name of the node

InAssetClass FString

The class the Skeleton factory will create for this node.

SetCustomSkeletalMeshUid bool SetCustomSkeletalMeshUid( FString 	AttributeValue 	)

Set skeletalMesh asset Uid used to create the data in the post pipeline step.

GetCustomSkeletalMeshUid bool GetCustomSkeletalMeshUid( FString& 	AttributeValue 	) const

Get skeletalMesh asset Uid used to create the data in the post pipeline step.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangePhysicsAssetFactoryNode::StaticClass()
```
