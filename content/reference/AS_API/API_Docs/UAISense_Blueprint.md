# UAISense_Blueprint

**Visibility:** public

## Inheritance

UAISense → UAISense_Blueprint → SENSE → ListenerContainer

## Description

TArray<TObjectPtr<UAIPerceptionComponent>> ListenerContainer ListenerDataType TSubclassOf<UUserDefinedStruct> ListenerDataType

## AI \| PERCEPTION

### GetAllListenerComponents

```
void GetAllListenerComponents(TArray<UAIPerceptionComponent>& ListenerComponents)const
```

GetAllListenerActors

### void GetAllListenerActors

```
void GetAllListenerActors(TArray<AActor>& ListenerActors)const
```

---

## FUNCTIONS

### OnListenerRegistered

```
void OnListenerRegistered(AActor ActorListener, UAIPerceptionComponent PerceptionComponent)
```

**Parameters**

PerceptionComponent
UAIPerceptionComponent

is ActorListener's AIPerceptionComponent instance

OnListenerUnregistered
void OnListenerUnregistered(
AActor 	ActorListener,
UAIPerceptionComponent 	PerceptionComponent
	)

called when a listener unregistered from this sense. Most often this is called due to actor's death

**Parameters**

PerceptionComponent
UAIPerceptionComponent

is ActorListener's AIPerceptionComponent instance

OnListenerUpdated
void OnListenerUpdated(
AActor 	ActorListener,
UAIPerceptionComponent 	PerceptionComponent
	)

**Parameters**

PerceptionComponent
UAIPerceptionComponent

is ActorListener's AIPerceptionComponent instance

OnUpdate
float32 OnUpdate(
TArray<UAISenseEvent> 	EventsToProcess
	)

returns requested amount of time to pass until next frame.  Return 0 to get update every frame (WARNING: hits performance)

OnNewPawn
void OnNewPawn(
APawn 	NewPawn
	)

called when sense's instance gets notified about new pawn that has just been spawned

STATIC FUNCTIONS
StaticClass
static UClass UAISense_Blueprint::StaticClass()
