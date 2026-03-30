# EditorAsset

## Inheritance

EditorAsset

## Description

EDITOR SCRIPTING | ASSET CheckoutAsset static bool EditorAsset::CheckoutAsset( FString 	AssetToCheckout 	)

Checkout the asset from the Content Browser.

Parameters AssetToCheckout FString

Asset Path of the asset that we want to checkout.

Returns

True if the operation succeeds.

CheckoutDirectory static bool EditorAsset::CheckoutDirectory( FString 	DirectoryPath, bool 	bRecursive	 = 	true 	)

Checkout assets from the Content Browser. It will load the assets if needed.  All objects that are in the directory will be checkout. Assets will be loaded before being checkout.

Parameters DirectoryPath FString

Directory of the assets that to checkout.

bRecursive bool

If the AssetPath is a folder, the search will be recursive and will checkout the asset in the sub folders.

Returns

True if the operation succeeds.

CheckoutLoadedAsset static bool EditorAsset::CheckoutLoadedAsset( UObject 	AssetToCheckout 	)

Checkout the asset from the Content Browser.

Parameters AssetToCheckout UObject

Asset to checkout.

Returns

True if the operation succeeds.

CheckoutLoadedAssets static bool EditorAsset::CheckoutLoadedAssets( TArray<UObject> 	AssetsToCheckout 	)

Checkout the assets from the Content Browser.

Returns

True if the operation succeeds.

ConsolidateAssets static bool EditorAsset::ConsolidateAssets( UObject 	AssetToConsolidateTo, TArray<UObject> 	AssetsToConsolidate 	)

Consolidates an asset by replacing all references/uses of the provided AssetsToConsolidate with references to AssetToConsolidateTo.  This is useful when you want all references of assets to be replaced by a single asset.  The function first attempts to directly replace all relevant references located within objects that are already loaded and in memory.  Next, it deletes the AssetsToConsolidate, leaving behind object redirectors to AssetToConsolidateTo.

Parameters AssetToConsolidateTo UObject

Asset to which all references of the AssetsToConsolidate will instead refer to after this operation completes.

AssetsToConsolidate TArray<UObject>

All references to these assets will be modified to reference AssetToConsolidateTo instead.

Returns

True if the operation succeeds.

DeleteAsset static bool EditorAsset::DeleteAsset( FString 	AssetPathToDelete 	)

Delete the package the assets live in. All objects that live in the package will be deleted.  This is a Force Delete. It doesn't check if the asset has references in other Levels or by Actors.  It will close all the asset editors and may clear the Transaction buffer (Undo History).  Will try to mark the file as deleted. The Asset will be loaded before being deleted.

Parameters AssetPathToDelete FString

Asset Path of the asset that we want to delete.

Returns

True if the operation succeeds.

DeleteDirectory static bool EditorAsset::DeleteDirectory( FString 	DirectoryPath 	)

Delete the packages inside a directory. If the directory is then empty, delete the directory.  This is a Force Delete. It doesn't check if the assets have references in other Levels or by Actors.  It will close all the asset editors and may clear the Transaction buffer (Undo History).  Will try to mark the file as deleted. Assets will be loaded before being deleted.  The search is always recursive. It will try to delete the sub folders.

Parameters DirectoryPath FString

Directory that will be mark for delete and deleted.

Returns

True if the operation succeeds.

DeleteLoadedAsset static bool EditorAsset::DeleteLoadedAsset( UObject 	AssetToDelete 	)

Delete an asset from the Content Browser that is already loaded.  This is a Force Delete. It doesn't check if the asset has references in other Levels or by Actors.  It will close all the asset editors and may clear the Transaction buffer (Undo History).  Will try to mark the file as deleted.

Parameters AssetToDelete UObject

Asset that we want to delete.

Returns

True if the operation succeeds.

DeleteLoadedAssets static bool EditorAsset::DeleteLoadedAssets( TArray<UObject> 	AssetsToDelete 	)

Delete assets from the Content Browser that are already loaded.  This is a Force Delete. It doesn't check if the assets have references in other Levels or by Actors.  It will close all the asset editors and may clear the Transaction buffer (Undo History).  Will try to mark the files as deleted.

Parameters AssetsToDelete TArray<UObject>

Assets that we want to delete.

Returns

True if the operation succeeds.

DoAssetsExist static bool EditorAsset::DoAssetsExist( TArray<FString> 	AssetPaths 	)

Check if the assets exist in the Content Browser.

Parameters AssetPaths TArray<FString>

Asset Path of the assets (that are not a level).

Returns

True if they exist and it is valid.

DoesAssetExist static bool EditorAsset::DoesAssetExist( FString 	AssetPath 	)

Check if the asset exists in the Content Browser.

Parameters AssetPath FString

Asset Path of the asset (that is not a level).

Returns

True if it does exist and it is valid.

DoesDirectoryExist static bool EditorAsset::DoesDirectoryExist( FString 	DirectoryPath 	)

Check is the directory exist in the Content Browser.

Parameters DirectoryPath FString

Long Path Name of the directory.

Returns

True if it does exist and it is valid.

DoesDirectoryHaveAssets static bool EditorAsset::DoesDirectoryHaveAssets( FString 	DirectoryPath, bool 	bRecursive	 = 	true 	)

Check if there any asset that exist in the directory.

Parameters DirectoryPath FString

Long Path Name of the directory.

Returns

True if there is any assets.

DuplicateAsset static UObject EditorAsset::DuplicateAsset( FString 	SourceAssetPath, FString 	DestinationAssetPath 	)

Duplicate an asset from the Content Browser. Will try to checkout the file. The Asset will be loaded before being duplicated.

Parameters SourceAssetPath FString

Asset Path of the asset that we want to copy from.

DestinationAssetPath FString

Asset Path of the duplicated asset.

Returns

The duplicated object if the operation succeeds.

DuplicateDirectory static bool EditorAsset::DuplicateDirectory( FString 	SourceDirectoryPath, FString 	DestinationDirectoryPath 	)

Duplicate asset from the Content Browser that are in the folder.  Will try to checkout the files. The Assets will be loaded before being duplicated.

Parameters SourceDirectoryPath FString

Directory of the assets that we want to duplicate from.

DestinationDirectoryPath FString

Directory of the duplicated asset.

Returns

The duplicated object if the operation succeeds.

DuplicateLoadedAsset static UObject EditorAsset::DuplicateLoadedAsset( UObject 	SourceAsset, FString 	DestinationAssetPath 	)

Duplicate an asset from the Content Browser that is already loaded. Will try to checkout the file.

Parameters SourceAsset UObject

Asset that we want to copy from.

DestinationAssetPath FString

Asset Path of the duplicated asset.

Returns

The duplicated object if the operation succeeds

FindAssetData static FAssetData EditorAsset::FindAssetData( FString 	AssetPath 	)

Return the AssetData for the Asset that can then be used with the more complex lib AssetRegistryHelpers.

Parameters AssetPath FString

Asset Path we are trying to find.

Returns

The AssetData found.

FindPackageReferencersForAsset static TArray<FString> EditorAsset::FindPackageReferencersForAsset(

FString 	AssetPath, bool 	bLoadAssetsToConfirm	 = 	false

)

Find Package Referencers for an asset. Only Soft and Hard dependencies would be looked for.  Soft are dependencies which don't need to be loaded for the object to be used.  Had are dependencies which are required for correct usage of the source asset and must be loaded at the same time.  Other references may exist. The asset may be currently used in memory by another asset, by the editor or by code.  Package dependencies are cached with the asset. False positive can happen until all the assets are loaded and re-saved.

Parameters AssetPath FString

Asset Path of the asset that we are looking for (that is not a level).

bLoadAssetsToConfirm bool

The asset and the referencers will be loaded (if not a level) to confirm the dependencies.

Returns

The package path of the referencers.

MakeDirectory static bool EditorAsset::MakeDirectory( FString 	DirectoryPath 	)

Create the directory on disk and in the Content Browser.

Parameters DirectoryPath FString

Long Path Name of the directory.

Returns

True if the operation succeeds.

SaveLoadedAssets static bool EditorAsset::SaveLoadedAssets( TArray<UObject> 	AssetsToSave, bool 	bOnlyIfIsDirty	 = 	true 	)

Save the packages the assets live in. All objects that live in the package will be saved. Will try to checkout the files.

Parameters bOnlyIfIsDirty bool

Only checkout asset that are dirty.

Returns

True if the operation succeeds.

GetPathNameForLoadedAsset static FString EditorAsset::GetPathNameForLoadedAsset( UObject 	LoadedAsset 	)

Return a valid AssetPath for a loaded asset. The asset need to be a valid asset in the Content Browser.  Similar to GetPathName(). The format will be: /Game/MyFolder/MyAsset.MyAsset

Parameters LoadedAsset UObject

Loaded Asset that exist in the Content Browser.

Returns

If valid, the asset Path of the loaded asset.

GetTagValues static TMap<FName,FString> EditorAsset::GetTagValues( FString 	AssetPath 	)

Gets all TagValues (from Asset Registry) associated with an (unloaded) asset as strings value.

Parameters AssetPath FString

Asset Path we are trying to find.

Returns

The list of all TagName & TagValue.

ListAssetByTagValue static TArray<FString> EditorAsset::ListAssetByTagValue( FName 	TagName, FString 	TagValue 	)

Return the list of all the assets that have the pair of Tag/Value.

Parameters TagName FName

The tag associated with the assets requested.

TagValue FString

The value associated with the assets requested.

Returns

The list of asset found.

ListAssets static TArray<FString> EditorAsset::ListAssets( FString 	DirectoryPath, bool 	bRecursive	 = 	true, bool 	bIncludeFolder	 = 	false 	)

Return the list of all the assets found in the DirectoryPath.

Parameters DirectoryPath FString

Directory path of the asset we want the list from.

bRecursive bool

The search will be recursive and will look in sub folders.

bIncludeFolder bool

The result will include folders name.

Returns

The list of asset found.

LoadAsset static UObject EditorAsset::LoadAsset( FString 	AssetPath 	)

Load an asset from the Content Browser. It will verify if the object is already loaded and only load it if it's necessary.

Parameters AssetPath FString

Asset Path of the asset (that is not a level).

Returns

Found or loaded asset.

LoadBlueprintClass static UClass EditorAsset::LoadBlueprintClass( FString 	AssetPath 	)

Load a Blueprint asset from the Content Browser and return its generated class. It will verify if the object is already loaded and only load it if it's necessary.

Parameters AssetPath FString

Asset Path of the Blueprint asset.

Returns

Found or loaded class.

SaveDirectory static bool EditorAsset::SaveDirectory( FString 	DirectoryPath, bool 	bOnlyIfIsDirty	 = 	true, bool 	bRecursive	 = 	true 	)

Save the packages the assets live in inside the directory. All objects that are in the directory will be saved.  Will try to checkout the file first. Assets will be loaded before being saved.

Parameters DirectoryPath FString

Directory that will be checked out and saved.

bOnlyIfIsDirty bool

Only checkout asset that are dirty.

bRecursive bool

The search will be recursive and it will save the asset in the sub folders.

Returns

True if the operation succeeds.

RenameAsset static bool EditorAsset::RenameAsset( FString 	SourceAssetPath, FString 	DestinationAssetPath 	)

Rename an asset from the Content Browser. Equivalent to a Move operation.  Will try to checkout the file. The Asset will be loaded before being renamed.

Parameters SourceAssetPath FString

Asset Path of the asset that we want to copy from.

DestinationAssetPath FString

Asset Path of the renamed asset.

Returns

True if the operation succeeds.

RenameDirectory static bool EditorAsset::RenameDirectory( FString 	SourceDirectoryPath, FString 	DestinationDirectoryPath 	)

Rename assets from the Content Browser that are in the folder.  Equivalent to a Move operation. Will try to checkout the files. The Assets will be loaded before being renamed.

Parameters SourceDirectoryPath FString

Directory of the assets that we want to rename from.

DestinationDirectoryPath FString

Directory of the renamed asset.

Returns

True if the operation succeeds.

RenameLoadedAsset static bool EditorAsset::RenameLoadedAsset( UObject 	SourceAsset, FString 	DestinationAssetPath 	)

Rename an asset from the Content Browser that is already loaded.  Equivalent to a Move operation. Will try to checkout the files.

Parameters SourceAsset UObject

Asset that we want to copy from.

DestinationAssetPath FString

Asset Path of the duplicated asset.

Returns

The if the operation succeeds.

SaveAsset static bool EditorAsset::SaveAsset( FString 	AssetToSave, bool 	bOnlyIfIsDirty	 = 	true 	)

Save the packages the assets live in. All objects that live in the package will be saved.  Will try to checkout the file first. The Asset will be loaded before being saved.

Parameters bOnlyIfIsDirty bool

Only checkout/save the asset if it's dirty.

Returns

True if the operation succeeds.

SaveLoadedAsset static bool EditorAsset::SaveLoadedAsset( UObject 	AssetToSave, bool 	bOnlyIfIsDirty	 = 	true 	)

Save the packages the assets live in. All objects that live in the package will be saved. Will try to checkout the file.

Parameters AssetToSave UObject

Asset that we want to save.

bOnlyIfIsDirty bool

Only checkout asset that are dirty.

Returns

True if the operation succeeds.

EDITOR SCRIPTING | CONTENT BROWSER SyncBrowserToObjects static void EditorAsset::SyncBrowserToObjects( TArray<FString> 	AssetPaths 	)

Sync the Content Browser to the given asset(s)

Parameters AssetPaths TArray<FString>

The list of asset paths to sync to in the Content Browser

EDITOR SCRIPTING | METADATA GetMetadataTagValues static TMap<FName,FString> EditorAsset::GetMetadataTagValues( UObject 	Object 	)

Get all tags/values of a loaded asset's metadata.

Parameters Object UObject

The object from which to retrieve the metadata.

Returns

The list of all Tags and Values.

RemoveMetadataTag static void EditorAsset::RemoveMetadataTag( UObject 	Object, FName 	Tag 	)

Remove the given tag from a loaded asset's metadata.

Parameters Object UObject

The object from which to retrieve the metadata.

Tag FName

The tag to remove from the metadata.

SetMetadataTag static void EditorAsset::SetMetadataTag( UObject 	Object, FName 	Tag, FString 	Value 	)

Set the value associated with a given tag of a loaded asset's metadata.

Parameters Object UObject

The object from which to retrieve the metadata.

Tag FName

The tag to set in the metadata.

Value FString

The string value to associate with the tag.

GetMetadataTag static FString EditorAsset::GetMetadataTag( UObject 	Object, FName 	Tag 	)

Get the value associated with the given tag of a loaded asset's metadata.

Parameters Object UObject

The object from which to retrieve the metadata.

Tag FName

The tag to find in the metadata.

Returns

The string value associated with the tag.
