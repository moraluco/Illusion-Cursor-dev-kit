# ULevelInstanceComponent

**Visibility:** public

## Inheritance

USceneComponent → ULevelInstanceComponent

## Description

ULevelInstanceComponent subclasses USceneComponent for Editing purposes so that we can have a proxy to the LevelInstanceActor's RootComponent transform without attaching to it.

It is responsible for updating the transform of the ALevelInstanceEditorInstanceActor which is created when loading a LevelInstance Instance Level

We use this method to avoid attaching the Instance Level Actors to the ALevelInstance. (Cross level attachment and undo/redo pain)

The LevelInstance Level Actors are attached to this ALevelInstanceEditorInstanceActor keeping the attachment local to the Instance Level and shielded from the transaction buffer.

Avoiding those Level Actors from being part of the Transaction system allows us to unload that level without clearing the transaction buffer. It also allows BP Reinstancing without having to update attachements.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static ULevelInstanceComponent ULevelInstanceComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static ULevelInstanceComponent ULevelInstanceComponent::GetOrCreate

```
static ULevelInstanceComponent ULevelInstanceComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static ULevelInstanceComponent ULevelInstanceComponent::Create

```
static ULevelInstanceComponent ULevelInstanceComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass ULevelInstanceComponent::StaticClass

```
static UClass ULevelInstanceComponent::StaticClass()
```
