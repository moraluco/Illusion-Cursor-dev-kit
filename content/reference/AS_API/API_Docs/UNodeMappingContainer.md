# UNodeMappingContainer

**Visibility:** public

## Inheritance

UObject → UNodeMappingContainer

## Description

Node Mapping Container Class * This saves source items, and target items, and mapping between * Used by Retargeting, Control Rig mapping. Will need to improve interface better

## MAPPING

### SourceAsset

```
TSoftObjectPtr<UObject> SourceAsset
```

source asset that is used to create source should be UNodeMappingProviderInterface

### TargetAsset

```
TSoftObjectPtr<UObject> TargetAsset
```

source asset that is used to create target should be UNodeMappingProviderInterface

### SourceToTarget

```
TMap<FName, FName> SourceToTarget STATIC FUNCTIONS StaticClass static UClass UNodeMappingContainer::StaticClass()
```
