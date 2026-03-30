# UEnvQueryTest_GameplayTags

**Visibility:** public

## Inheritance

UEnvQueryTest → UEnvQueryTest_GameplayTags

## Description

EnvQueryTest_GameplayTags attempts to cast items to IGameplayTagAssetInterface and test their tags with TagQueryToMatch.  The behavior of IGameplayTagAssetInterface-less items is configured by bRejectIncompatibleItems.

## GAMEPLAYTAGCHECK

### bRejectIncompatibleItems

```
bool bRejectIncompatibleItems
```

This controls how to treat actors that do not implement IGameplayTagAssetInterface.  When set to True, actors that do not implement the interface will be ignored, meaning they will not be scored and will not be considered when filtering.  When set to False, actors that do not implement the interface will be included in filter and score operations with a zero score.

### TagQueryToMatch

```
FGameplayTagQuery TagQueryToMatch STATIC FUNCTIONS StaticClass static UClass UEnvQueryTest_GameplayTags::StaticClass()
```
