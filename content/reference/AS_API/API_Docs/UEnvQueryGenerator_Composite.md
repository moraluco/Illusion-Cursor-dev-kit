# UEnvQueryGenerator_Composite

**Visibility:** public

## Inheritance

UEnvQueryGenerator → UEnvQueryGenerator_Composite

## Description

Composite generator allows using multiple generators in single query option All child generators must produce exactly the same item type!

## GENERATOR

### ForcedItemType

```
TSubclassOf<UEnvQueryItemType> ForcedItemType Generators TArray<TObjectPtr<UEnvQueryGenerator>> Generators FUNCTIONS SetbAllowDifferentItemTypes void SetbAllowDifferentItemTypes(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEnvQueryGenerator_Composite::StaticClass()
```
