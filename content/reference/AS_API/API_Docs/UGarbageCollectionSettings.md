# UGarbageCollectionSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UGarbageCollectionSettings

## Description

Implements the settings for garbage collection.

## GENERAL

### NumRetriesBeforeForcingGC

```
int NumRetriesBeforeForcingGC
```

Maximum number of times GC can be skipped if worker threads are currently modifying UObject state. 0 = never force GC

### TimeBetweenPurgingPendingKillObjects

```
float32 TimeBetweenPurgingPendingKillObjects
```

Time in seconds (game time) we should wait between purging object references to objects that are pending kill.

---

## OPTIMIZATION

### MaxObjectsNotConsideredByGC

```
int MaxObjectsNotConsideredByGC
```

Maximum Object Count Not Considered By GC. Works only in cooked builds.

### SizeOfPermanentObjectPool

```
int SizeOfPermanentObjectPool
```

Size Of Permanent Object Pool (bytes). Works only in cooked builds.

### MaxObjectsInGame

```
int MaxObjectsInGame
```

Maximum number of UObjects that can exist in cooked game. Keep this as small as possible.

### MaxObjectsInEditor

```
int MaxObjectsInEditor
```

Maximum number of UObjects that can exist in the editor game. Make sure this can hold enough objects for the editor and commadlets within reasonable limit.

### MinGCClusterSize

```
int MinGCClusterSize
```

Minimum GC cluster size.

---

## FUNCTIONS

### SetActorClusteringEnabled

```
void SetActorClusteringEnabled(bool Value)
```

SetAllowParallelGC

### void SetAllowParallelGC

```
void SetAllowParallelGC(bool Value)
```

SetIncrementalBeginDestroyEnabled

### void SetIncrementalBeginDestroyEnabled

```
void SetIncrementalBeginDestroyEnabled(bool Value)
```

SetMultithreadedDestructionEnabled

### void SetMultithreadedDestructionEnabled

```
void SetMultithreadedDestructionEnabled(bool Value)
```

SetCreateGCClusters

### void SetCreateGCClusters

```
void SetCreateGCClusters(bool Value)
```

SetAssetClusteringEnabled

### void SetAssetClusteringEnabled

```
void SetAssetClusteringEnabled(bool Value)
```

SetFlushStreamingOnGC

### void SetFlushStreamingOnGC

```
void SetFlushStreamingOnGC(bool Value)
```

SetBlueprintClusteringEnabled

### void SetBlueprintClusteringEnabled

```
void SetBlueprintClusteringEnabled(bool Value)
```

SetUseDisregardForGCOnDedicatedServers

### void SetUseDisregardForGCOnDedicatedServers

```
void SetUseDisregardForGCOnDedicatedServers(bool Value)
```

SetVerifyGCObjectNames

### void SetVerifyGCObjectNames

```
void SetVerifyGCObjectNames(bool Value)
```

SetVerifyUObjectsAreNotFGCObjects

### void SetVerifyUObjectsAreNotFGCObjects

```
void SetVerifyUObjectsAreNotFGCObjects(bool Value)
```

SetPendingKillEnabled

### void SetPendingKillEnabled

```
void SetPendingKillEnabled(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGarbageCollectionSettings::StaticClass()
```
