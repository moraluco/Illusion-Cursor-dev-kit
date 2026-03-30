# USkeleton

**Visibility:** public

## Inheritance

UObject → USkeleton

## Description

USkeleton : that links between mesh and animation - Bone hierarchy for animations - Bone/track linkup between mesh and animation - Retargetting related

## COMPATIBLESKELETONS

### CompatibleSkeletons

```
TArray<TSoftObjectPtr<USkeleton>> CompatibleSkeletons
```

The list of compatible skeletons.  This is an array of TSoftObjectPtr in order to prevent all skeletons to be loaded, as we only want to load things on demand.

---

## SKELETON

### AssetUserData

```
TArray<TObjectPtr<UAssetUserData>> AssetUserData
```

Array of user data stored with the asset

---

## SKELETON

### GetBlendProfile

```
UBlendProfile GetBlendProfile(FName InProfileName)
```

Get the specified blend profile by name

### AddCompatibleSkeleton

```
void AddCompatibleSkeleton(const USkeleton SourceSkeleton)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USkeleton::StaticClass()
```
