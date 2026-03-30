# ULevelStreaming

**Visibility:** public

## Inheritance

UObject → ULevelStreaming → ULevelStreamingAlwaysLoaded → ULevelStreamingDynamic → ULevelStreamingPersistent

## Description

Abstract base class of container object encapsulating data required for streaming and providing interface for when a level should be streamed in and out of memory.

## GAME

### WorldAssetPackageFName

```
const FName WorldAssetPackageFName
```

Gets the package name for the world asset referred to by this level streaming as an FName

---

## LEVELSTREAMING

### LevelTransform

```
FTransform LevelTransform
```

Transform applied to actors after loading.

### LevelColor

```
FLinearColor LevelColor
```

The level color used for visualization. (Show -> Advanced -> Level Coloration)

### EditorStreamingVolumes

```
TArray<TObjectPtr<ALevelStreamingVolume>> EditorStreamingVolumes
```

The level streaming volumes bound to this level.

### MinTimeBetweenVolumeUnloadRequests

```
float32 MinTimeBetweenVolumeUnloadRequests
```

Cooldown time in seconds between volume-based unload requests.  Used in preventing spurious unload requests.

### StreamingPriority

```
int StreamingPriority
```

The relative priority of considering the streaming level. Changing the priority will not interrupt the currently considered level, but will affect the next time a level is being selected for evaluation.

### WorldAsset

```
TSoftObjectPtr<UWorld> WorldAsset
```

The reference to the world containing the level to load

### bShouldBeLoaded

```
bool bShouldBeLoaded
```

Whether the level should be loaded

### bDisableDistanceStreaming

```
bool bDisableDistanceStreaming
```

Whether this level streaming object should be ignored by world composition distance streaming, so streaming state can be controlled by other systems (ex: in blueprints)

### IsRequestingUnloadAndRemoval

```
bool IsRequestingUnloadAndRemoval
```

Returns if the streaming level has requested to be unloaded and removed.

### bShouldBlockOnLoad

```
bool bShouldBlockOnLoad
```

Whether we want to force a blocking load

### bShouldBlockOnUnload

```
bool bShouldBlockOnUnload
```

Whether we want to force a blocking unload

### LevelLODIndex

```
int LevelLODIndex
```

Requested LOD. Non LOD sub-levels have Index = -1

### bShouldBeVisible

```
bool bShouldBeVisible
```

Whether the level should be visible if it is loaded

---

## VARIABLES

### OnLevelShown

```
FLevelStreamingVisibilityStatus OnLevelShown
```

Called when level is added to the world

### LoadedLevel

```
const ULevel LoadedLevel
```

Pointer to Level object if currently loaded/ streamed in.

### OnLevelUnloaded

```
FLevelStreamingLoadedStatus OnLevelUnloaded
```

Called when level is streamed out

### OnLevelLoaded

```
FLevelStreamingLoadedStatus OnLevelLoaded
```

Called when level is streamed in

### OnLevelHidden

```
FLevelStreamingVisibilityStatus OnLevelHidden
```

Called when level is removed from the world

---

## GAME

### IsStreamingStatePending

```
bool IsStreamingStatePending()const
```

Returns whether level has streaming state change pending

### GetLoadedLevel

```
ULevel GetLoadedLevel()const
```

Gets a pointer to the LoadedLevel value

### GetWorldAssetPackageFName

```
FName GetWorldAssetPackageFName()const
```

Gets the package name for the world asset referred to by this level streaming as an FName

### IsLevelLoaded

```
bool IsLevelLoaded()const
```

Returns whether streaming level is loaded

### IsLevelVisible

```
bool IsLevelVisible()const
```

Returns whether streaming level is visible

### CreateInstance

```
ULevelStreaming CreateInstance(FString UniqueInstanceName)
```

Creates a new instance of this streaming level with a provided unique instance name

---

## LEVELSTREAMING

### SetIsRequestingUnloadAndRemoval

```
void SetIsRequestingUnloadAndRemoval(bool bInIsRequestingUnloadAndRemoval)
```

Sets if the streaming level should be unloaded and removed.

### GetIsRequestingUnloadAndRemoval

```
bool GetIsRequestingUnloadAndRemoval()const
```

Returns if the streaming level has requested to be unloaded and removed.

---

## FUNCTIONS

### SetPriority

```
void SetPriority(int NewPriority)
```

Sets the relative priority of considering the streaming level. Changing the priority will not interrupt the currently considered level, but will affect the next time a level is being selected for evaluation.

### SetShouldBeLoaded

```
void SetShouldBeLoaded(bool bInShouldBeLoaded)
```

Virtual that can be overriden to change whether a streaming level should be loaded.  Doesn't do anything at the base level as should be loaded defaults to true

### SetShouldBeVisible

```
void SetShouldBeVisible(bool bInShouldBeVisible)
```

Sets the should be visible flag and marks the streaming level as requiring consideration.

### ShouldBeLoaded

```
bool ShouldBeLoaded()const
```

Return whether this level should be present in memory which in turn tells the streaming code to stream it in. Please note that a change in value from false to true only tells the streaming code that it needs to START streaming it in so the code needs to return true an appropriate amount of time before it is needed.

**Returns**

true if level should be loaded/ streamed in, false otherwise

SetLevelLODIndex
void SetLevelLODIndex(
int 	LODIndex
	)

Sets the world composition level LOD index and marks the streaming level as requiring consideration.

GetLevelLODIndex
const int& GetLevelLODIndex() const
GetbShouldBeVisible
bool GetbShouldBeVisible() const
SetbShouldBeVisible
void SetbShouldBeVisible(
bool 	Value
	)
GetbShouldBeLoaded
bool GetbShouldBeLoaded() const
SetbShouldBeLoaded
void SetbShouldBeLoaded(
bool 	Value
	)
SetbIsStatic
void SetbIsStatic(
bool 	Value
	)
GetbShouldBlockOnLoad
bool GetbShouldBlockOnLoad() const
SetbShouldBlockOnLoad
void SetbShouldBlockOnLoad(
bool 	Value
	)
GetbShouldBlockOnUnload
bool GetbShouldBlockOnUnload() const
SetbShouldBlockOnUnload
void SetbShouldBlockOnUnload(
bool 	Value
	)
GetbDisableDistanceStreaming
bool GetbDisableDistanceStreaming() const
SetbDisableDistanceStreaming
void SetbDisableDistanceStreaming(
bool 	Value
	)
SetbDrawOnLevelStatusMap
void SetbDrawOnLevelStatusMap(
bool 	Value
	)
STATIC FUNCTIONS
StaticClass
static UClass ULevelStreaming::StaticClass()
