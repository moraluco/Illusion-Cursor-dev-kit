# UEnvQueryGenerator_BlueprintBase

**Visibility:** public

## Inheritance

UEnvQueryGenerator → UEnvQueryGenerator_BlueprintBase → EQS → Querier

## Description

const UObject Querier

## GENERATOR

### GeneratedItemType

```
TSubclassOf<UEnvQueryItemType> GeneratedItemType
```

@todo this should show up only in the generator's BP, but due to the way EQS editor is generating widgets it's there as well It's a bug and we'll fix it

### Context

```
TSubclassOf<UEnvQueryContext> Context
```

context

### GeneratorsActionDescription

```
FText GeneratorsActionDescription
```

A short description of what test does, like "Generate pawn named Joe"

---

## EQS

### AddGeneratedVector

```
void AddGeneratedVector(FVector GeneratedVector)const
```

GetQuerier

### UObject GetQuerier

```
UObject GetQuerier()const AddGeneratedActor
```

void AddGeneratedActor(

### AActor 	GeneratedActor

```
AActor 	GeneratedActor 	) const
```

---

## GENERATOR

### DoItemGeneration

```
void DoItemGeneration(TArray<FVector> ContextLocations)const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEnvQueryGenerator_BlueprintBase::StaticClass()
```
