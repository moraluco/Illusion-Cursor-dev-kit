# UGameplayTask_SpawnActor

**Visibility:** public

## Inheritance

UGameplayTask → UGameplayTask_SpawnActor

## Description

Convenience task for spawning actors (optionally limiting the spawning to the network authority). If not the net authority, we will not spawn and Success will not be called. The nice thing this adds is the ability to modify expose on spawn properties while also implicitly checking network role before spawning.

Though this task doesn't do much

games can implement similar tasks that carry out game specific rules. For example a 'SpawnProjectile' task that limits the available classes to the games projectile class, and that does game specific stuff on spawn (for example, determining firing position from a weapon attachment).

Long term we can also use this task as a sync point. If the executing client could wait execution until the server creates and replicates the actor down to him. We could potentially also use this to do predictive actor spawning / reconciliation.

## VARIABLES

### DidNotSpawn

```
FGameplayTaskSpawnActorDelegate DidNotSpawn
```

Called when we can't spawn: on clients or potentially on server if they fail to spawn (rare)

### Success

```
FGameplayTaskSpawnActorDelegate Success STATIC FUNCTIONS StaticClass static UClass UGameplayTask_SpawnActor::StaticClass()
```
