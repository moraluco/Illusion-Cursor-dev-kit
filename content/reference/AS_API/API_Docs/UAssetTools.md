# UAssetTools

**Visibility:** public

## Inheritance

UInterface → UAssetTools

## Description

EDITOR SCRIPTING | ASSET TOOLS FindSoftReferencesToObject void FindSoftReferencesToObject( FSoftObjectPath 	TargetObject, TArray<UObject>& 	ReferencingObjects 	)

Returns list of objects that soft reference the given soft object path. This will load assets into memory to verify

CreateAssetWithDialog UObject CreateAssetWithDialog( FString 	AssetName, FString 	PackagePath, UClass 	AssetClass, UFactory 	Factory, FName 	CallingContext	 = 	NAME_None, bool 	bCallConfigureProperties	 = 	true 	)

Opens an asset picker dialog and creates an asset with the specified name and path

CreateUniqueAssetName void CreateUniqueAssetName( FString 	InBasePackageName, FString 	InSuffix, FString& 	OutPackageName, FString& 	OutAssetName 	)

Creates a unique package and asset name taking the form InBasePackageName+InSuffix

DuplicateAsset UObject DuplicateAsset( FString 	AssetName, FString 	PackagePath, UObject 	OriginalObject 	)

Creates an asset with the specified name and path. Uses OriginalObject as the duplication source.

DuplicateAssetWithDialog UObject DuplicateAssetWithDialog( FString 	AssetName, FString 	PackagePath, UObject 	OriginalObject 	)

Opens an asset picker dialog and creates an asset with the specified name and path. Uses OriginalObject as the duplication source.

DuplicateAssetWithDialogAndTitle UObject DuplicateAssetWithDialogAndTitle( FString 	AssetName, FString 	PackagePath, UObject 	OriginalObject, FText 	DialogTitle 	)

Opens an asset picker dialog and creates an asset with the specified name and path.  Uses OriginalObject as the duplication source.  Uses DialogTitle as the dialog's title.

ExportAssets void ExportAssets( TArray<FString> 	AssetsToExport, FString 	ExportPath 	)

Exports the specified objects to file.

Parameters AssetsToExport TArray<FString>

List of full asset names (e.g /Game/Path/Asset) to export

ExportPath FString

The directory path to export to.

ExportAssetsWithDialog void ExportAssetsWithDialog( TArray<FString> 	AssetsToExport, bool 	bPromptForIndividualFilenames 	)

Exports the specified objects to file. First prompting the user to pick an export directory and optionally prompting the user to pick a unique directory per file

Parameters AssetsToExport TArray<FString>

List of assets to export

CreateAsset UObject CreateAsset( FString 	AssetName, FString 	PackagePath, UClass 	AssetClass, UFactory 	Factory, FName 	CallingContext	 = 	NAME_None 	)

Creates an asset with the specified name, path, and factory

Parameters AssetName FString

the name of the new asset

PackagePath FString

the package that will contain the new asset

AssetClass UClass

the class of the new asset

Factory UFactory

the factory that will build the new asset

CallingContext FName

optional name of the module or method calling CreateAsset() - this is passed to the factory

Returns

the new asset or NULL if it fails

ImportAssetsAutomated TArray<UObject> ImportAssetsAutomated( const 	UAutomatedAssetImportData 	ImportData 	)

Imports assets using data specified completely up front.  Does not ever ask any questions of the user or show any modal error messages

Returns

list of successfully imported assets

ImportAssetsWithDialog TArray<UObject> ImportAssetsWithDialog( FString 	DestinationPath 	)

Opens a file open dialog to choose files to import to the destination path.

Parameters DestinationPath FString

Path to import files to

Returns

list of successfully imported assets

ImportAssetTasks void ImportAssetTasks( TArray<UAssetImportTask> 	ImportTasks 	)

Imports assets using tasks specified.

Parameters ImportTasks TArray<UAssetImportTask>

Tasks that specify how to import each file

RenameAssets bool RenameAssets( TArray<FAssetRenameData> 	AssetsAndNames 	)

Renames assets using the specified names.

RenameAssetsWithDialog EAssetRenameResult RenameAssetsWithDialog( TArray<FAssetRenameData> 	AssetsAndNames, bool 	bAutoCheckout	 = 	false 	)

Renames assets using the specified names.

RenameReferencingSoftObjectPaths void RenameReferencingSoftObjectPaths(

const 	TArray<UPackage> 	PackagesToCheck, 	TMap<FSoftObjectPath,FSoftObjectPath> 	AssetRedirectorMap

)

Function that renames all FSoftObjectPath object with the old asset path to the new one.

Parameters PackagesToCheck const TArray<UPackage>

Packages to check for referencing FSoftObjectPath.

AssetRedirectorMap TMap<FSoftObjectPath,FSoftObjectPath>

Map from old asset path to new asset path

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAssetTools::StaticClass()
```
