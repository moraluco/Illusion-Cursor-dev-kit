# UAutomatedAssetImportData

**Visibility:** public

## Inheritance

UObject → UAutomatedAssetImportData

## Description

Contains data for a group of assets to import

## Members

### DATA

```
ASSET IMPORT DATA
```
### Filenames

```
TArray<FString> Filenames
```

Filenames to import

### DestinationPath

```
FString DestinationPath
```

Content path in the projects content directory where assets will be imported

### FactoryName

```
FString FactoryName
```

Name of the factory to use when importing these assets. If not specified the factory type will be auto detected

### bReplaceExisting

```
bool bReplaceExisting
```

Whether or not to replace existing assets

### bSkipReadOnly

```
bool bSkipReadOnly
```

Whether or not to skip importing over read only assets that could not be checked out

### Factory

```
UFactory Factory
```

Pointer to the factory currently being used

### LevelToLoad

```
FString LevelToLoad
```

Full path to level to load before importing this group (only matters if importing assets into a level)

### GroupName

```
FString GroupName
```

Display name of the group. This is for logging purposes only.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAutomatedAssetImportData::StaticClass()
```
