# UChaosDestructionListener

**Visibility:** public

## Inheritance

USceneComponent → UChaosDestructionListener

## Description

Object allowing for retrieving Chaos Destruction data.

## Members

### EVENTS

```
BREAKING EVENTS
```
### bIsBreakingEventListeningEnabled

```
bool bIsBreakingEventListeningEnabled
```

Whether or not collision event listening is enabled

### BreakingEventRequestSettings

```
FChaosBreakingEventRequestSettings BreakingEventRequestSettings
```

The settings to use for breaking event listening

### EVENTS

```
COLLISION EVENTS
```
### bIsCollisionEventListeningEnabled

```
bool bIsCollisionEventListeningEnabled
```

Whether or not collision event listening is enabled

### CollisionEventRequestSettings

```
FChaosCollisionEventRequestSettings CollisionEventRequestSettings
```

The settings to use for collision event listening

---

## GEOMETRYCOLLECTIONS

### GeometryCollectionActors

```
TSet<TObjectPtr<AGeometryCollectionActor>> GeometryCollectionActors
```

Which chaos solver actors we're using. If empty, this listener will fallback to the "world" solver.

### EVENTS

```
REMOVAL EVENTS
```
### bIsRemovalEventListeningEnabled

```
bool bIsRemovalEventListeningEnabled
```

Whether or not removal event listening is enabled

### RemovalEventRequestSettings

```
FChaosRemovalEventRequestSettings RemovalEventRequestSettings
```

The settings to use for removal event listening

---

## SOLVERS

### ChaosSolverActors

```
TSet<TObjectPtr<AChaosSolverActor>> ChaosSolverActors
```

Which chaos solver actors we're using. If empty, this listener will fallback to the "world" solver.

### EVENTS

```
TRAILING EVENTS
```
### TrailingEventRequestSettings

```
FChaosTrailingEventRequestSettings TrailingEventRequestSettings
```

The settings to use for trailing event listening

### bIsTrailingEventListeningEnabled

```
bool bIsTrailingEventListeningEnabled
```

Whether or not trailing event listening is enabled

---

## VARIABLES

### OnBreakingEvents

```
FOnChaosBreakingEvents OnBreakingEvents
```

Called when new breaking events are available.

### OnTrailingEvents

```
FOnChaosTrailingEvents OnTrailingEvents
```

Called when new trailing events are available.

### OnCollisionEvents

```
FOnChaosCollisionEvents OnCollisionEvents
```

Called when new collision events are available.

### OnRemovalEvents

```
FOnChaosRemovalEvents OnRemovalEvents
```

Called when new trailing events are available.

### DESTRUCTION LISTENER

```
DESTRUCTION LISTENER SortTrailingEvents void SortTrailingEvents(TArray<FChaosTrailingEventData>& TrailingEvents, EChaosTrailingSortMethod SortMethod)
```

Sorts trailing events according to the given sort method

### AddGeometryCollectionActor

```
void AddGeometryCollectionActor(AGeometryCollectionActor GeometryCollectionActor)
```

Dynamically adds a chaos solver to the listener

### IsEventListening

```
bool IsEventListening()const
```

Returns if the destruction listener is listening to any events

### RemoveChaosSolverActor

```
void RemoveChaosSolverActor(AChaosSolverActor ChaosSolverActor)
```

Dynamically removes a chaos solver from the listener

### RemoveGeometryCollectionActor

```
void RemoveGeometryCollectionActor(AGeometryCollectionActor GeometryCollectionActor)
```

Dynamically removes a chaos solver from the listener

### SetBreakingEventEnabled

```
void SetBreakingEventEnabled(bool bIsEnabled)
```

Enables or disables breaking event listening

### SetBreakingEventRequestSettings

```
void SetBreakingEventRequestSettings(FChaosBreakingEventRequestSettings InSettings)
```

Sets breaking event request settings dynamically

### SetCollisionEventEnabled

```
void SetCollisionEventEnabled(bool bIsEnabled)
```

Enables or disables collision event listening

### SetCollisionEventRequestSettings

```
void SetCollisionEventRequestSettings(FChaosCollisionEventRequestSettings InSettings)
```

Sets collision event request settings dynamically

### SetRemovalEventEnabled

```
void SetRemovalEventEnabled(bool bIsEnabled)
```

Enables or disables removal event listening

### SetRemovalEventRequestSettings

```
void SetRemovalEventRequestSettings(FChaosRemovalEventRequestSettings InSettings)
```

Sets removal event request settings dynamically

### SetTrailingEventEnabled

```
void SetTrailingEventEnabled(bool bIsEnabled)
```

Enables or disables trailing event listening

### SetTrailingEventRequestSettings

```
void SetTrailingEventRequestSettings(FChaosTrailingEventRequestSettings InSettings)
```

Sets trailing event request settings dynamically

### SortBreakingEvents

```
void SortBreakingEvents(TArray<FChaosBreakingEventData>& BreakingEvents, EChaosBreakingSortMethod SortMethod)
```

Sorts breaking events according to the given sort method

### SortCollisionEvents

```
void SortCollisionEvents(TArray<FChaosCollisionEventData>& CollisionEvents, EChaosCollisionSortMethod SortMethod)
```

Sorts collision events according to the given sort method

### SortRemovalEvents

```
void SortRemovalEvents(TArray<FChaosRemovalEventData>& RemovalEvents, EChaosRemovalSortMethod SortMethod)
```

Sorts removal events according to the given sort method

### AddChaosSolverActor

```
void AddChaosSolverActor(AChaosSolverActor ChaosSolverActor)
```

Dynamically adds a chaos solver to the listener

---

## FUNCTIONS

### GetCollisionEventRequestSettings

```
const FChaosCollisionEventRequestSettings& GetCollisionEventRequestSettings()const
```

SetbIsCollisionEventListeningEnabled

### void SetbIsCollisionEventListeningEnabled

```
void SetbIsCollisionEventListeningEnabled(bool Value)
```

GetbIsBreakingEventListeningEnabled

### bool GetbIsBreakingEventListeningEnabled

```
bool GetbIsBreakingEventListeningEnabled()const SetbIsBreakingEventListeningEnabled
```

void SetbIsBreakingEventListeningEnabled(

### bool 	Value

```
bool 	Value 	)
```

GetbIsTrailingEventListeningEnabled

### bool GetbIsTrailingEventListeningEnabled

```
bool GetbIsTrailingEventListeningEnabled()const SetbIsTrailingEventListeningEnabled
```

void SetbIsTrailingEventListeningEnabled(

### bool 	Value

```
bool 	Value 	)
```

GetbIsRemovalEventListeningEnabled

### bool GetbIsRemovalEventListeningEnabled

```
bool GetbIsRemovalEventListeningEnabled()const SetbIsRemovalEventListeningEnabled
```

void SetbIsRemovalEventListeningEnabled(

### bool 	Value

```
bool 	Value 	)
```

GetbIsCollisionEventListeningEnabled

### bool GetbIsCollisionEventListeningEnabled

```
bool GetbIsCollisionEventListeningEnabled()const GetBreakingEventRequestSettings
```

const FChaosBreakingEventRequestSettings& GetBreakingEventRequestSettings() const

### GetTrailingEventRequestSettings

```
const FChaosTrailingEventRequestSettings& GetTrailingEventRequestSettings()const
```

GetRemovalEventRequestSettings

### const FChaosRemovalEventRequestSettings& GetRemovalEventRequestSettings

```
const FChaosRemovalEventRequestSettings& GetRemovalEventRequestSettings()const STATIC FUNCTIONS
```

Get

### static UChaosDestructionListener UChaosDestructionListener::Get

```
static UChaosDestructionListener UChaosDestructionListener::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UChaosDestructionListener UChaosDestructionListener::GetOrCreate

```
static UChaosDestructionListener UChaosDestructionListener::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UChaosDestructionListener UChaosDestructionListener::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UChaosDestructionListener::StaticClass

```
static UClass UChaosDestructionListener::StaticClass()
```
