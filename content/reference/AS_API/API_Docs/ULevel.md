# ULevel

**Visibility:** public

## Inheritance

UObject → ULevel

## Description

A Level is a collection of Actors (lights, volumes, mesh instances etc.).  Multiple Levels can be loaded and unloaded into the World to create a streaming experience.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Engine​/Levels @see UActor

## WORLD

### bUseActorFolders

```
bool bUseActorFolders
```

Use actor folder objects, actor folders of this level will be persistent in their own object.

### bUseExternalActors

```
bool bUseExternalActors
```

Use external actors, new actor spawned in this level will be external and existing external actors will be loaded on load.

---

## VARIABLES

### LevelScriptActor

```
const ALevelScriptActor LevelScriptActor
```

The level scripting actor, created by instantiating the class from LevelScriptBlueprint.  This handles all level scripting

### Actors

```
const TArray<AActor> Actors
```
### LevelSimplification

```
FLevelSimplificationDetails LevelSimplification
```

Level simplification settings for each LOD

---

## FUNCTIONS

### IsVisible

```
bool IsVisible()const
```

IsBeingRemoved

### bool IsBeingRemoved

```
bool IsBeingRemoved()const GetActors
```

const TArray<AActor>& GetActors() const

### GetLevelScriptActor

```
ALevelScriptActor GetLevelScriptActor()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULevel::StaticClass()
```
