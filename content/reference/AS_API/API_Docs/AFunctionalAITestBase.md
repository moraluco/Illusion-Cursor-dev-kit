# AFunctionalAITestBase

**Visibility:** public

## Inheritance

AFunctionalTest → AFunctionalAITestBase → AFunctionalAITest

## Description

AFunctionalAITestBase

Base abstract class defining a Functional AI Test.  You can derive from this base class to create a test with a different type of SpawnSets.

## AITEST

### CurrentSpawnSetName

```
FString CurrentSpawnSetName
```
### SpawnedPawns

```
TArray<TObjectPtr<APawn>> SpawnedPawns
```
### PendingDelayedSpawns

```
TArray<FPendingDelayedSpawn> PendingDelayedSpawns
```
### CurrentSpawnSetIndex

```
int CurrentSpawnSetIndex
```
### bWaitForNavMesh

```
bool bWaitForNavMesh
```

if set, ftest will postpone start until navmesh is fully generated

### SpawnLocationRandomizationRange

```
float32 SpawnLocationRandomizationRange
```

---

## NAVMESHDEBUG

### NavMeshDebugOrigin

```
FVector NavMeshDebugOrigin
```

navmesh debug: log navoctree modifiers around this point

### NavMeshDebugExtent

```
FVector NavMeshDebugExtent
```

navmesh debug: extent around NavMeshDebugOrigin

---

## VARIABLES

### OnAllAISPawned

```
FFunctionalTestEventSignature OnAllAISPawned
```

Called when a all AI finished spawning

### OnAISpawned

```
FFunctionalTestAISpawned OnAISpawned
```

Called when a single AI finished spawning

---

## DEVELOPMENT

### IsOneOfSpawnedPawns

```
bool IsOneOfSpawnedPawns(AActor Actor)
```

---

## FUNCTIONS

### SetbWaitForNavMesh

```
void SetbWaitForNavMesh(bool Value)
```

SetbDebugNavMeshOnTimeout

### void SetbDebugNavMeshOnTimeout

```
void SetbDebugNavMeshOnTimeout(bool Value)
```

GetbWaitForNavMesh

### bool GetbWaitForNavMesh

```
bool GetbWaitForNavMesh()const STATIC FUNCTIONS
```

Spawn

### static AFunctionalAITestBase AFunctionalAITestBase::Spawn

```
static AFunctionalAITestBase AFunctionalAITestBase::Spawn(
```

FVector 	Location	 = 	FVector :: ZeroVector,

### FRotator 	Rotation	 = 	FRotator :: ZeroRotator,

```
FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AFunctionalAITestBase::StaticClass()
```
