# UTypedElementAssetDataInterface

**Visibility:** public

## Inheritance

UInterface → UTypedElementAssetDataInterface

## TYPEDELEMENTINTERFACES \| ASSETDATA

### GetAssetData

```
FAssetData GetAssetData(FScriptTypedElementHandle InElementHandle)
```

Returns the asset data for the given handle, if it exists.

### GetAllReferencedAssetDatas

```
TArray<FAssetData> GetAllReferencedAssetDatas(FScriptTypedElementHandle InElementHandle)
```

Returns any asset datas for content objects referenced by handle.  If the given handle itself has valid asset data, it should be returned as the last element of the array.

**Returns**

An array of valid asset datas.

STATIC FUNCTIONS
StaticClass
static UClass UTypedElementAssetDataInterface::StaticClass()
