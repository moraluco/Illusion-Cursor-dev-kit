# ULODSyncComponent

**Visibility:** public

## Inheritance

UActorComponent → ULODSyncComponent

## Description

Implement an Actor component for LOD Sync of different components

This is a component that allows multiple different components to sync together of their LOD

This allows to find the highest LOD of all the parts, and sync to that LOD

## COMPONENTS \| SKELETALMESH

### LODSyncDebugText

```
const FString LODSyncDebugText
```

Returns a string detailing

---

## LOD

### MinLOD

```
int MinLOD
```

Minimum LOD to use when syncing components

### ComponentsToSync

```
TArray<FComponentSync> ComponentsToSync
```

Array of components whose LOD may drive or be driven by this component.  Components that are flagged as 'Drive' are treated as being in priority order, with the last component having highest priority. The highest priority visible component will set the LOD for all other components. If no components are visible, then the highest priority non-visible component will set LOD.

### CustomLODMapping

```
TMap<FName,FLODMappingData> CustomLODMapping
```

by default, the mapping will be one to one but if you want custom, add here.

### ForcedLOD

```
int ForcedLOD
```

if -1, it's automatically switching

### NumLODs

```
int NumLODs
```

if -1, it's default and it will calculate the max number of LODs from all sub components if not, it is a number of LODs (not the max index of LODs)

---

## COMPONENTS \| SKELETALMESH

### GetLODSyncDebugText

```
FString GetLODSyncDebugText()const
```

Returns a string detailing

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static ULODSyncComponent ULODSyncComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static ULODSyncComponent ULODSyncComponent::GetOrCreate

```
static ULODSyncComponent ULODSyncComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static ULODSyncComponent ULODSyncComponent::Create

```
static ULODSyncComponent ULODSyncComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass ULODSyncComponent::StaticClass

```
static UClass ULODSyncComponent::StaticClass()
```
