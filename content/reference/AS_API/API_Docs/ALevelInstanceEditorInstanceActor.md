# ALevelInstanceEditorInstanceActor

**Visibility:** public

## Inheritance

AActor → ALevelInstanceEditorInstanceActor

## Description

Editor Only Actor that is spawned inside every LevelInstance Instance Level so that we can update its Actor Transforms through the ALevelInstance's root component(ULevelInstanceComponent) @see ULevelInstanceComponent

## Members

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static ALevelInstanceEditorInstanceActor ALevelInstanceEditorInstanceActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass ALevelInstanceEditorInstanceActor::StaticClass()
```
