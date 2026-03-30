# EditorUtility

## Inheritance

EditorUtility

## Description

STATIC VARIABLES SelectedAssets static const TArray<UObject> EditorUtility::SelectedAssets SelectedBlueprintClasses static const TArray<UClass> EditorUtility::SelectedBlueprintClasses SelectionSet static const TArray<AActor> EditorUtility::SelectionSet SelectedAssetData static const TArray<FAssetData> EditorUtility::SelectedAssetData

## DEVELOPMENT \| EDITOR

### GetSelectedAssetData

```
static TArray<FAssetData> EditorUtility::GetSelectedAssetData()
```

Gets the set of currently selected asset data

### GetSelectedAssets

```
static TArray<UObject> EditorUtility::GetSelectedAssets()
```

Gets the set of currently selected assets

### GetSelectedBlueprintClasses

```
static TArray<UClass> EditorUtility::GetSelectedBlueprintClasses()
```

Gets the set of currently selected classes

### GetSelectionBounds

```
static void EditorUtility::GetSelectionBounds(FVector& Origin, FVector& BoxExtent, float32& SphereRadius)
```

GetSelectionSet

### static TArray<AActor> EditorUtility::GetSelectionSet

```
static TArray<AActor> EditorUtility::GetSelectionSet()
```

RenameAsset

### static void EditorUtility::RenameAsset

```
static void EditorUtility::RenameAsset(UObject Asset, FString NewName)
```

Renames an asset (cannot move folders)

### GetCurrentContentBrowserPath

```
static bool EditorUtility::GetCurrentContentBrowserPath(FString& OutPath)
```

Attempts to get the path for the active content browser, returns false if there is no active content browser

**Parameters**

OutPath
FString&

The returned path if successfully found

**Returns**

Whether a path was successfully returned
