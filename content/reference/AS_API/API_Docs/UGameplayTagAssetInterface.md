# UGameplayTagAssetInterface

**Visibility:** public

## Inheritance

UInterface → UGameplayTagAssetInterface → GAMEPLAYTAGS → HasAllMatchingGameplayTags

## Description

bool HasAllMatchingGameplayTags( FGameplayTagContainer 	TagContainer 	) const

Check if the asset has gameplay tags that matches against all of the specified tags (expands to include parents of asset tags)

Parameters TagContainer FGameplayTagContainer

Tag container to check for a match

Returns

True if the asset has matches all of the gameplay tags, will be true if container is empty

HasAnyMatchingGameplayTags bool HasAnyMatchingGameplayTags( FGameplayTagContainer 	TagContainer 	) const

Check if the asset has gameplay tags that matches against any of the specified tags (expands to include parents of asset tags)

Parameters TagContainer FGameplayTagContainer

Tag container to check for a match

Returns

True if the asset has matches any of the gameplay tags, will be false if container is empty

HasMatchingGameplayTag bool HasMatchingGameplayTag( FGameplayTag 	TagToCheck 	) const

Check if the asset has a gameplay tag that matches against the specified tag (expands to include parents of asset tags)

Parameters TagToCheck FGameplayTag

Tag to check for a match

Returns

True if the asset has a gameplay tag that matches, false if not

GetOwnedGameplayTags void GetOwnedGameplayTags( FGameplayTagContainer& 	TagContainer 	) const

Get any owned gameplay tags on the asset

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGameplayTagAssetInterface::StaticClass()
```
