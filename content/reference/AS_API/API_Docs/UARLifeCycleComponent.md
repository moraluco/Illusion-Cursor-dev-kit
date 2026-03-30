# UARLifeCycleComponent

**Visibility:** public

## Inheritance

USceneComponent → UARLifeCycleComponent → VARIABLES → OnARActorToBeDestroyedDelegate

## Description

FInstanceARActorToBeDestroyedDelegate__ARLifeCycleComponent OnARActorToBeDestroyedDelegate OnARActorSpawnedDelegate FInstanceARActorSpawnedDelegate__ARLifeCycleComponent OnARActorSpawnedDelegate

## FUNCTIONS

### ServerSpawnARActor

```
void ServerSpawnARActor(UClass ComponentClass, FGuid NativeID)
```

ServerDestroyARActor

### void ServerDestroyARActor

```
void ServerDestroyARActor(AARActor Actor)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARLifeCycleComponent UARLifeCycleComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARLifeCycleComponent UARLifeCycleComponent::GetOrCreate

```
static UARLifeCycleComponent UARLifeCycleComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARLifeCycleComponent UARLifeCycleComponent::Create

```
static UARLifeCycleComponent UARLifeCycleComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARLifeCycleComponent::StaticClass

```
static UClass UARLifeCycleComponent::StaticClass()
```
