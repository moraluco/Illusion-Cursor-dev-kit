# UAssetImportData

**Visibility:** public

## Inheritance

UObject → UAssetImportData → UAbcAssetImportData → UDatasmithAssetImportData → UDatasmithSceneImportData → UFbxAssetImportData

## Description

and 5 other children todo: Make this class better suited to multiple import paths

maybe have FAssetImportInfo use a map rather than array?

## VARIABLES

### FirstFilename

```
const FString FirstFilename ASSETIMPORTDATA GetFirstFilename FString GetFirstFilename()const
```

Helper function to return the first filename stored in this data. The resulting filename will be absolute (ie, not relative to the asset).

### ScriptedAddFilename

```
void ScriptedAddFilename(FString InPath, int Index, FString SourceFileLabel)
```

Add or update a filename at the specified index. If the index is greater then the number of source file, it will add empty filenames to fill up to the specified index. The timespan and MD5 will be computed.

### ExtractFilenames

```
TArray<FString> ExtractFilenames()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAssetImportData::StaticClass()
```
