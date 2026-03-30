# ALevelVariantSetsActor

**Visibility:** public

## Inheritance

AActor → ALevelVariantSetsActor → LEVELVARIANTSETS → SetLevelVariantSets

## Description

void SetLevelVariantSets( ULevelVariantSets 	InVariantSets 	) SwitchOnVariantByIndex bool SwitchOnVariantByIndex( int 	VariantSetIndex, int 	VariantIndex 	) SwitchOnVariantByName bool SwitchOnVariantByName( FString 	VariantSetName, FString 	VariantName 	) GetLevelVariantSets ULevelVariantSets GetLevelVariantSets( bool 	bLoad	 = 	false 	)

Returns the LevelVariantSets asset, optionally loading it if necessary

## Members

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static ALevelVariantSetsActor ALevelVariantSetsActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass ALevelVariantSetsActor::StaticClass()
```
