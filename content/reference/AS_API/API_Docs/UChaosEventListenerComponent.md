# UChaosEventListenerComponent

**Visibility:** public

## Inheritance

UActorComponent → UChaosEventListenerComponent → UChaosGameplayEventDispatcher

## Description

Base class for listeners that query and respond to a frame's physics data (collision events, break events, etc).

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UChaosEventListenerComponent UChaosEventListenerComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UChaosEventListenerComponent UChaosEventListenerComponent::GetOrCreate

```
static UChaosEventListenerComponent UChaosEventListenerComponent::GetOrCreate(
```

AActor 	Actor,

## Members

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UChaosEventListenerComponent UChaosEventListenerComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UChaosEventListenerComponent::StaticClass()
```
