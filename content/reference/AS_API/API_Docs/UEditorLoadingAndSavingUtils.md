# UEditorLoadingAndSavingUtils

**Visibility:** public

## Inheritance

UObject → UEditorLoadingAndSavingUtils

## Description

This class is a wrapper for editor loading and saving functionality It is meant to contain only functions that can be executed in script (but are also allowed in C++).  It is separated from FEditorFileUtils to ensure new easier to use methods can be created without breaking FEditorFileUtils backwards compatibility However this should be used in place of FEditorFileUtils wherever possible as the goal is to deprecate FEditorFileUtils eventually

EDITOR SCRIPTING | EDITOR LOADING AND SAVING ReloadPackages static void UEditorLoadingAndSavingUtils::ReloadPackages(

TArray<UPackage> 	PackagesToReload, bool& 	bOutAnyPackagesReloaded, FText& 	OutErrorMessage, EReloadPackagesInteractionMode 	InteractionMode	 = 	EReloadPackagesInteractionMode :: Interactive

)

Helper function that attempts to reload the specified top-level packages.

Parameters PackagesToReload TArray<UPackage>

The list of packages that should be reloaded

bOutAnyPackagesReloaded bool&

True if the set of loaded packages was changed

OutErrorMessage FText&

An error message specifying any problems with reloading packages

InteractionMode EReloadPackagesInteractionMode

Whether the function is allowed to ask the user questions (such as whether to reload dirty packages)

GetDirtyContentPackages static void UEditorLoadingAndSavingUtils::GetDirtyContentPackages(

TArray<UPackage>& 	OutDirtyPackages

)

Appends array with all currently dirty content packages.

Parameters OutDirtyPackages TArray<UPackage>&

Array to append dirty packages to.

GetDirtyMapPackages static void UEditorLoadingAndSavingUtils::GetDirtyMapPackages( TArray<UPackage>& 	OutDirtyPackages 	)

Appends array with all currently dirty map packages.

Parameters OutDirtyPackages TArray<UPackage>&

Array to append dirty packages to.

ImportScene static void UEditorLoadingAndSavingUtils::ImportScene( FString 	Filename 	)

Imports a file such as (FBX or obj) and spawns actors f into the current level

LoadMap static UWorld UEditorLoadingAndSavingUtils::LoadMap( FString 	Filename 	)

Loads the specified map.  Does not prompt the user to save the current map.

Parameters Filename FString

Level package filename, including path.

Returns

true if the map was loaded successfully.

LoadMapWithDialog static UWorld UEditorLoadingAndSavingUtils::LoadMapWithDialog()

Prompts the user to save the current map if necessary, the presents a load dialog and loads a new map if selected by the user.

NewBlankMap static UWorld UEditorLoadingAndSavingUtils::NewBlankMap( bool 	bSaveExistingMap 	) NewMapFromTemplate static UWorld UEditorLoadingAndSavingUtils::NewMapFromTemplate( FString 	PathToTemplateLevel, bool 	bSaveExistingMap 	) ExportScene static void UEditorLoadingAndSavingUtils::ExportScene( bool 	bExportSelectedActorsOnly 	)

Exports the current scene

SaveCurrentLevel static bool UEditorLoadingAndSavingUtils::SaveCurrentLevel()

Saves the active level, prompting the use for checkout if necessary.

Returns

true on success, False on fail

SaveDirtyPackages static bool UEditorLoadingAndSavingUtils::SaveDirtyPackages( bool 	bSaveMapPackages, bool 	bSaveContentPackages 	)

Looks at all currently loaded packages and saves them if their "bDirty" flag is set.  Assume all dirty packages should be saved and check out from source control (if enabled).

Parameters bSaveMapPackages bool

true if map packages should be saved

bSaveContentPackages bool

true if we should save content packages.

Returns

true on success, false on fail.

SaveDirtyPackagesWithDialog static bool UEditorLoadingAndSavingUtils::SaveDirtyPackagesWithDialog( bool 	bSaveMapPackages, bool 	bSaveContentPackages 	)

Looks at all currently loaded packages and saves them if their "bDirty" flag is set.  Prompt the user to select which dirty packages to save and check them out from source control (if enabled).

Parameters bSaveMapPackages bool

true if map packages should be saved

bSaveContentPackages bool

true if we should save content packages.

Returns

true on success, false on fail.

SaveMap static bool UEditorLoadingAndSavingUtils::SaveMap( UWorld 	World, FString 	AssetPath 	)

Saves the specified map, returning true on success.

Parameters World UWorld

The world to save.

AssetPath FString

The valid content directory path and name for the asset.  E.g "/Game/MyMap"

Returns

true if the map was saved successfully.

SavePackages static bool UEditorLoadingAndSavingUtils::SavePackages( TArray<UPackage> 	PackagesToSave, bool 	bOnlyDirty 	)

Save all packages.  Assume all dirty packages should be saved and check out from source control (if enabled).

Parameters PackagesToSave TArray<UPackage>

The list of packages to save.  Both map and content packages are supported

Returns

true on success, false on fail.

SavePackagesWithDialog static bool UEditorLoadingAndSavingUtils::SavePackagesWithDialog( TArray<UPackage> 	PackagesToSave, bool 	bOnlyDirty 	)

Save all packages. Optionally prompting the user to select which packages to save.  Prompt the user to select which dirty packages to save and check them out from source control (if enabled).

Parameters PackagesToSave TArray<UPackage>

The list of packages to save.  Both map and content packages are supported

Returns

true on success, false on fail.

UnloadPackages static void UEditorLoadingAndSavingUtils::UnloadPackages( TArray<UPackage> 	PackagesToUnload, bool& 	bOutAnyPackagesUnloaded, FText& 	OutErrorMessage 	)

Unloads a list of packages

Parameters PackagesToUnload TArray<UPackage>

Array of packages to unload.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorLoadingAndSavingUtils::StaticClass()
```
