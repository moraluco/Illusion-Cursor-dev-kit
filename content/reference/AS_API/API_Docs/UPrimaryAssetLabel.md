# UPrimaryAssetLabel

**Visibility:** public

## Inheritance

UPrimaryDataAsset → UPrimaryAssetLabel

## Description

A seed file that is created to mark referenced assets as part of this primary asset

## PRIMARYASSETLABEL

### ExplicitAssets

```
TArray<TSoftObjectPtr<UObject>> ExplicitAssets
```

List of manually specified assets to label

### ExplicitBlueprints

```
TArray<TSoftClassPtr<UObject>> ExplicitBlueprints
```

List of manually specified blueprint assets to label

### AssetCollection

```
FCollectionReference AssetCollection
```

Collection to load asset references out of

---

## RULES

### Rules

```
FPrimaryAssetRules Rules
```

Management rules for this specific asset, if set it will override the type rules

---

## FUNCTIONS

### SetbIsRuntimeLabel

```
void SetbIsRuntimeLabel(bool Value)
```

SetbLabelAssetsInMyDirectory

### void SetbLabelAssetsInMyDirectory

```
void SetbLabelAssetsInMyDirectory(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPrimaryAssetLabel::StaticClass()
```
