# UAssetManagerSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UAssetManagerSettings

## Description

Settings for the Asset Management framework, which can be used to discover, load, and audit game-specific asset types

## Members

### MANAGER

```
ASSET MANAGER
```
### bShouldAcquireMissingChunksOnLoad

```
bool bShouldAcquireMissingChunksOnLoad
```

If true, this will query the platform chunk install interface to request missing chunks for any requested primary asset loads

### PrimaryAssetRules

```
TArray<FPrimaryAssetRulesOverride> PrimaryAssetRules
```

List of specific asset rule overrides

### CustomPrimaryAssetRules

```
TArray<FPrimaryAssetRulesCustomOverride> CustomPrimaryAssetRules
```

List of game-specific asset rule overrides for types, this will not do anything by default

### bOnlyCookProductionAssets

```
bool bOnlyCookProductionAssets
```

If true, DevelopmentCook assets will error when they are cooked, you should enable this on production branches

### bShouldManagerDetermineTypeAndName

```
bool bShouldManagerDetermineTypeAndName
```

If true, the asset manager will determine the type and name for Primary Assets that do not implement GetPrimaryAssetId, by calling DeterminePrimaryAssetIdForObject and using the ini settings.  This works in both cooked and uncooked builds but is slower than directly implementing GetPrimaryAssetId on the native asset

### bShouldGuessTypeAndNameInEditor

```
bool bShouldGuessTypeAndNameInEditor
```

If true, PrimaryAsset Type/Name will be implied for assets in the editor even if bShouldManagerDetermineTypeAndName is false.  This guesses the correct id for content that hasn't been resaved after GetPrimaryAssetId was implemented

### PrimaryAssetTypesToScan

```
TArray<FPrimaryAssetTypeInfo> PrimaryAssetTypesToScan
```

List of asset types to scan at startup

### bShouldWarnAboutInvalidAssets

```
bool bShouldWarnAboutInvalidAssets
```

If true, the asset manager will warn when it is told to load or do something with assets it does not know about

### REGISTRY

```
ASSET REGISTRY
```
### MetaDataTagsForAssetRegistry

```
TSet<FName> MetaDataTagsForAssetRegistry
```

The metadata tags to be transferred to the Asset Registry.

---

## REDIRECTS

### AssetPathRedirects

```
TArray<FAssetManagerRedirect> AssetPathRedirects
```

Redirect from /game/assetpath to /game/assetpathnew

### PrimaryAssetTypeRedirects

```
TArray<FAssetManagerRedirect> PrimaryAssetTypeRedirects
```

Redirect from Type to TypeNew

### PrimaryAssetIdRedirects

```
TArray<FAssetManagerRedirect> PrimaryAssetIdRedirects
```

Redirect from Type:Name to Type:NameNew

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAssetManagerSettings::StaticClass()
```
