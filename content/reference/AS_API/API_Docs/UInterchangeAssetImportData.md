# UInterchangeAssetImportData

**Visibility:** public

## Inheritance

UAssetImportData → UInterchangeAssetImportData

## Description

INTERCHANGE | ASSETIMPORTDATA ScriptExtractFilenames TArray<FString> ScriptExtractFilenames() const

Extract all the (resolved) filenames.

ScriptGetFirstFilename FString ScriptGetFirstFilename() const

Return the first filename stored in this data. The resulting filename will be absolute (ie, not relative to the asset).

ScriptExtractDisplayLabels TArray<FString> ScriptExtractDisplayLabels() const

Extract all the filename labels.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangeAssetImportData::StaticClass()
```
