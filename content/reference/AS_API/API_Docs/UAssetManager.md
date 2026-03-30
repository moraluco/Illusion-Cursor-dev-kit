# UAssetManager

**Visibility:** public

## Inheritance

UObject → UAssetManager

## Description

A singleton UObject that is responsible for loading and unloading PrimaryAssets, and maintaining game-specific asset references Games should override this class and change the class reference

## FUNCTIONS

### GetPrimaryAssetDataList

```
bool GetPrimaryAssetDataList(FPrimaryAssetType PrimaryAssetType, TArray<FAssetData>& AssetDataList)
```

Gets list of all FAssetData for a primary asset type, returns true if any were found

### GetPrimaryAssetIdForPath

```
FPrimaryAssetId GetPrimaryAssetIdForPath(FName ObjectPath)const
```

GetPrimaryAssetPath

### FSoftObjectPath GetPrimaryAssetPath

```
FSoftObjectPath GetPrimaryAssetPath(FPrimaryAssetId PrimaryAssetId)const
```

GetPrimaryAssetIdForData

### FPrimaryAssetId GetPrimaryAssetIdForData

```
FPrimaryAssetId GetPrimaryAssetIdForData(FAssetData AssetData)const
```

UnloadPrimaryAsset

### int UnloadPrimaryAsset

```
int UnloadPrimaryAsset(FPrimaryAssetId AssetToUnload)
```

UnloadPrimaryAssets

### int UnloadPrimaryAssets

```
int UnloadPrimaryAssets(TArray<FPrimaryAssetId> AssetsToUnload)
```

LoadPrimaryAsset

### void LoadPrimaryAsset

```
void LoadPrimaryAsset(FPrimaryAssetId AssetToLoad, TArray<FName> LoadBundles, int Priority = 0, UObject OptionalCallbackObject = nullptr, FName OptionalFinishedCallbackFunctionName = NAME_None, FName OptionalCanceledCallbackName = NAME_None)
```

LoadPrimaryAssets

### void LoadPrimaryAssets

```
void LoadPrimaryAssets(TArray<FPrimaryAssetId> AssetsToLoad, TArray<FName> LoadBundles, int Priority = 0, UObject OptionalCallbackObject = nullptr, FName OptionalFinishedCallbackFunctionName = NAME_None, FName OptionalCanceledCallbackName = NAME_None)
```

GetPrimaryAssetData

### bool GetPrimaryAssetData

```
bool GetPrimaryAssetData(FPrimaryAssetId& PrimaryAssetId, FAssetData& AssetData)
```

Gets the FAssetData for a primary asset with the specified type/name, will only work for once that have been scanned for already. Returns true if it found a valid data

### GetPrimaryAssetIdForPath

```
FPrimaryAssetId GetPrimaryAssetIdForPath(FSoftObjectPath ObjectPath)const
```

GetPrimaryAssetIdForObject

### FPrimaryAssetId GetPrimaryAssetIdForObject

```
FPrimaryAssetId GetPrimaryAssetIdForObject(UObject Object)
```

Sees if the passed in object is a registered primary asset, if so return it. Returns invalid Identifier if not found

### GetPrimaryAssetIdList

```
bool GetPrimaryAssetIdList(FPrimaryAssetType PrimaryAssetType, TArray<FPrimaryAssetId>& PrimaryAssetIdList)
```

Gets list of all FPrimaryAssetId for a primary asset type, returns true if any were found

### GetPrimaryAssetObject

```
UObject GetPrimaryAssetObject(FPrimaryAssetId PrimaryAssetId)
```

Gets the in-memory UObject for a primary asset id, returning nullptr if it's not in memory. Will return blueprint class for blueprint assets. This works even if the asset wasn't loaded explicitly

### GetPrimaryAssetTypeInfo

```
bool GetPrimaryAssetTypeInfo(FPrimaryAssetType PrimaryAssetType, FPrimaryAssetTypeInfo& AssetTypeInfo)
```

Gets metadata for a specific asset type, returns false if not found

### GetPrimaryAssetTypeInfoList

```
void GetPrimaryAssetTypeInfoList(TArray<FPrimaryAssetTypeInfo>& AssetTypeInfoList)
```

Gets list of all primary asset types infos

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UAssetManager UAssetManager::Get()
```

StaticClass

### static UClass UAssetManager::StaticClass

```
static UClass UAssetManager::StaticClass()
```

IsValid

### static bool UAssetManager::IsValid

```
static bool UAssetManager::IsValid()
```
