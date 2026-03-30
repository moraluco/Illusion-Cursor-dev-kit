# UAssetTagsSubsystem

**Visibility:** public

## Inheritance

UEngineSubsystem → UAssetTagsSubsystem → ASSETTAGS → Collections

## Description

const TArray<FName> Collections

Get the names of all available collections.

## ASSETTAGS

### GetCollectionsContainingAsset

```
TArray<FName> GetCollectionsContainingAsset(const FName AssetPathName)
```

Get the names of the collections that contain the given asset.

**Parameters**

AssetPathName
const FName

Asset to test (its path name, eg) /Game/MyFolder/MyAsset.MyAsset).

**Returns**

Names of the collections that contain the asset.

AddAssetDataToCollection
bool AddAssetDataToCollection(
const 	FName 	Name,
	FAssetData 	AssetData
	)

Add the given asset to the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetData
FAssetData

Asset to add.

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

AddAssetPtrsToCollection
bool AddAssetPtrsToCollection(
const 	FName 	Name,
	TArray<UObject> 	AssetPtrs
	)

Add the given assets to the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetPtrs
TArray<UObject>

Assets to add.

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

AddAssetPtrToCollection
bool AddAssetPtrToCollection(
const 	FName 	Name,
const 	UObject 	AssetPtr
	)

Add the given asset to the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetPtr
const UObject

Asset to add.

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

AddAssetsToCollection
bool AddAssetsToCollection(
const 	FName 	Name,
	TArray<FName> 	AssetPathNames
	)

Add the given assets to the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetPathNames
TArray<FName>

Assets to add (their path names, eg) /Game/MyFolder/MyAsset.MyAsset).

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

AddAssetToCollection
bool AddAssetToCollection(
const 	FName 	Name,
const 	FName 	AssetPathName
	)

Add the given asset to the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetPathName
const FName

Asset to add (its path name, eg) /Game/MyFolder/MyAsset.MyAsset).

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

CollectionExists
bool CollectionExists(
const 	FName 	Name
	)

Check whether the given collection exists.

**Parameters**

Name
const FName

Name of the collection to test.

**Returns**

True if the collection exists, false otherwise.

CreateCollection
bool CreateCollection(
const 	FName 	Name,
	ECollectionScriptingShareType 	ShareType
	)

Create a new collection with the given name and share type.

**Parameters**

Name
const FName

Name to give to the collection.

ShareType
ECollectionScriptingShareType

Whether the collection should be local, private, or shared?

**Returns**

True if the collection was created, false otherwise (see the output log for details on error).

DestroyCollection
bool DestroyCollection(
const 	FName 	Name
	)

Destroy the given collection.

**Parameters**

Name
const FName

Name of the collection to destroy.

**Returns**

True if the collection was destroyed, false otherwise (see the output log for details on error).

EmptyCollection
bool EmptyCollection(
const 	FName 	Name
	)

Remove all assets from the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

GetAssetsInCollection
TArray<FAssetData> GetAssetsInCollection(
const 	FName 	Name
	)

Get the assets in the given collection.

**Parameters**

Name
const FName

Name of the collection to test.

**Returns**

Assets in the given collection.

GetCollections
TArray<FName> GetCollections()

Get the names of all available collections.

**Returns**

Names of all available collections.

AddAssetDatasToCollection
bool AddAssetDatasToCollection(
const 	FName 	Name,
	TArray<FAssetData> 	AssetDatas
	)

Add the given assets to the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetDatas
TArray<FAssetData>

Assets to add.

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

GetCollectionsContainingAssetData
TArray<FName> GetCollectionsContainingAssetData(
FAssetData 	AssetData
	)

Get the names of the collections that contain the given asset.

**Parameters**

AssetData
FAssetData

Asset to test.

**Returns**

Names of the collections that contain the asset.

GetCollectionsContainingAssetPtr
TArray<FName> GetCollectionsContainingAssetPtr(
const 	UObject 	AssetPtr
	)

Get the names of the collections that contain the given asset.

**Parameters**

AssetPtr
const UObject

Asset to test.

**Returns**

Names of the collections that contain the asset.

RemoveAssetDataFromCollection
bool RemoveAssetDataFromCollection(
const 	FName 	Name,
	FAssetData 	AssetData
	)

Remove the given asset from the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetData
FAssetData

Asset to remove.

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

RemoveAssetDatasFromCollection
bool RemoveAssetDatasFromCollection(
const 	FName 	Name,
	TArray<FAssetData> 	AssetDatas
	)

Remove the given assets from the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetDatas
TArray<FAssetData>

Assets to remove.

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

RemoveAssetFromCollection
bool RemoveAssetFromCollection(
const 	FName 	Name,
const 	FName 	AssetPathName
	)

Remove the given asset from the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetPathName
const FName

Asset to remove (its path name, eg) /Game/MyFolder/MyAsset.MyAsset).

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

RemoveAssetPtrFromCollection
bool RemoveAssetPtrFromCollection(
const 	FName 	Name,
const 	UObject 	AssetPtr
	)

Remove the given asset from the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetPtr
const UObject

Asset to remove.

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

RemoveAssetPtrsFromCollection
bool RemoveAssetPtrsFromCollection(
const 	FName 	Name,
	TArray<UObject> 	AssetPtrs
	)

Remove the given assets from the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetPtrs
TArray<UObject>

Assets to remove.

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

RemoveAssetsFromCollection
bool RemoveAssetsFromCollection(
const 	FName 	Name,
	TArray<FName> 	AssetPathNames
	)

Remove the given assets from the given collection.

**Parameters**

Name
const FName

Name of the collection to modify.

AssetPathNames
TArray<FName>

Assets to remove (their path names, eg) /Game/MyFolder/MyAsset.MyAsset).

**Returns**

True if the collection was modified, false otherwise (see the output log for details on error).

RenameCollection
bool RenameCollection(
const 	FName 	Name,
const 	FName 	NewName
	)

Rename the given collection.

**Parameters**

Name
const FName

Name of the collection to rename.

NewName
const FName

Name to give to the collection.

**Returns**

True if the collection was renamed, false otherwise (see the output log for details on error).

ReparentCollection
bool ReparentCollection(
const 	FName 	Name,
const 	FName 	NewParentName
	)

Re-parent the given collection.

**Parameters**

Name
const FName

Name of the collection to re-parent.

NewParentName
const FName

Name of the new parent collection, or None to have the collection become a root collection.

**Returns**

True if the collection was renamed, false otherwise (see the output log for details on error).

STATIC FUNCTIONS
Get
static UAssetTagsSubsystem UAssetTagsSubsystem::Get()
StaticClass
static UClass UAssetTagsSubsystem::StaticClass()
