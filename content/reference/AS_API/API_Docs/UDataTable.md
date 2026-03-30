# UDataTable

**Visibility:** public

## Inheritance

UObject → UDataTable → UCompositeDataTable → UMirrorDataTable

## Description

Imported spreadsheet table.

## IMPORTOPTIONS

### ImportKeyField

```
FString ImportKeyField
```

Explicit field in import data to use as key. If this is empty it uses Name for JSON and the first field found for CSV

---

## IMPORTSOURCE

### AssetImportData

```
UAssetImportData AssetImportData
```

The file this data table was imported from, may be empty

---

## VARIABLES

### RowNames

```
const TArray<FName> RowNames FUNCTIONS GetAllRows void GetAllRows(?& OutArray)const
```

GetRowNames

### TArray<FName> GetRowNames

```
TArray<FName> GetRowNames()const RemoveRow
```

void RemoveRow(

### FName 	RowName

```
FName 	RowName 	)
```

AddRow

### void AddRow

```
void AddRow(FName RowName, const ?& in InRow)
```

FindRow

### bool FindRow

```
bool FindRow(FName RowName, ?& out OutRow)const
```

EmptyTable

### void EmptyTable

```
void EmptyTable()
```

SetbStripFromClientBuilds

### void SetbStripFromClientBuilds

```
void SetbStripFromClientBuilds(bool Value)
```

SetbIgnoreExtraFields

### void SetbIgnoreExtraFields

```
void SetbIgnoreExtraFields(bool Value)
```

SetbIgnoreMissingFields

### void SetbIgnoreMissingFields

```
void SetbIgnoreMissingFields(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDataTable::StaticClass()
```
