# UAssetExportTask

**Visibility:** public

## Inheritance

UObject → UAssetExportTask → USequencerExportTask

## Description

Contains data for a group of assets to import

## MISCELLANEOUS

### bAutomated

```
bool bAutomated
```
### export

```
Unattended export
```
### Exporter

```
UExporter Exporter
```

Optional exporter, otherwise it will be determined automatically

### Filename

```
FString Filename
```

File to export as

### bSelected

```
bool bSelected
```

Export selected only

### bReplaceIdentical

```
bool bReplaceIdentical
```

Replace identical files

### bPrompt

```
bool bPrompt
```

Allow dialog prompts

### Object

```
UObject Object
```

Asset to export

### bUseFileArchive

```
bool bUseFileArchive
```

Save to a file archive

### bWriteEmptyFiles

```
bool bWriteEmptyFiles
```

Write even if file empty

### IgnoreObjectList

```
TArray<TObjectPtr<UObject>> IgnoreObjectList
```

Array of objects to ignore exporting

### Options

```
UObject Options
```

Exporter specific options

### Errors

```
TArray<FString> Errors
```

Array of error messages encountered during exporter

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAssetExportTask::StaticClass()
```
