# UAssetImportTask

**Visibility:** public

## Inheritance

UObject → UAssetImportTask

## Description

Contains data for a group of assets to import

## Members

### TASK

```
ASSET IMPORT TASK
```
### bAutomated

```
bool bAutomated
```
### dialogs

```
Avoid dialogs
```
### DestinationPath

```
FString DestinationPath
```

Path where asset will be imported to

### DestinationName

```
FString DestinationName
```

Optional custom name to import as

### bReplaceExisting

```
bool bReplaceExisting
```

Overwrite existing assets

### bReplaceExistingSettings

```
bool bReplaceExistingSettings
```

Replace existing settings when overwriting existing assets

### Filename

```
FString Filename
```

Filename to import

### bSave

```
bool bSave
```

Save after importing

### Factory

```
UFactory Factory
```

Optional factory to use

### Options

```
UObject Options
```

Import options specific to the type of asset

### ImportedObjectPaths

```
TArray<FString> ImportedObjectPaths
```

Paths to objects created or updated after import

### Result

```
TArray<TObjectPtr<UObject>> Result
```

### Imported objects

```
Imported objects
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAssetImportTask::StaticClass()
```
