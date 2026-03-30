# UWorld

**Visibility:** public

## Inheritance

UObject → UWorld

## Description

The World is the top level object representing a map or a sandbox in which Actors and Components will exist and be rendered.

A World can be a single Persistent Level with an optional list of streaming levels that are loaded and unloaded via volumes and blueprint functions or it can be a collection of levels organized with a World Composition.

In a standalone game, generally only a single World exists except during seamless area transitions when both a destination and current world exists.  In the editor many Worlds exist: The level being edited, each PIE instance, each editor tool which has an interactive rendered viewport, and many more.

## THUMBNAIL

### ThumbnailInfo

```
UThumbnailInfo ThumbnailInfo
```

Information for thumbnail rendering

---

## VARIABLES

UnpausedTimeSeconds

### UnpausedTimeSeconds

```
const float32 UnpausedTimeSeconds
```

RealTimeSeconds const float32 RealTimeSeconds TimeSeconds const float32 TimeSeconds AudioTimeSeconds const float32 AudioTimeSeconds DeltaSeconds const float32 DeltaSeconds

### GameInstance

```
UGameInstance GameInstance LevelScriptActor const ALevelScriptActor LevelScriptActor WorldSettings const AWorldSettings WorldSettings UTILITIES|WORLD GetWorldSettings AWorldSettings GetWorldSettings()
```

Returns the AWorldSettings actor associated with this world.

**Returns**

AWorldSettings actor associated with this world

---

## FUNCTIONS

### IsPreviewWorld

```
bool IsPreviewWorld()
```

ServerTravel

### bool ServerTravel

```
bool ServerTravel(FString FURL, bool bAbsolute, bool bShouldSkipGameNotify)
```

GetTimeSeconds

### float32 GetTimeSeconds

```
float32 GetTimeSeconds()const GetUnpausedTimeSeconds
```

float32 GetUnpausedTimeSeconds() const

### GetRealTimeSeconds

```
float32 GetRealTimeSeconds()const
```

IsEditorWorld

### bool IsEditorWorld

```
bool IsEditorWorld()
```

GetAudioTimeSeconds

### float32 GetAudioTimeSeconds

```
float32 GetAudioTimeSeconds()const IsGameWorld
```

bool IsGameWorld()

### IsStartingUp

```
bool IsStartingUp()const
```

IsTearingDown

### bool IsTearingDown

```
bool IsTearingDown()const SetGameInstance
```

void SetGameInstance(

### UGameInstance 	NewGI

```
UGameInstance 	NewGI 	)
```

GetGameInstance

### UGameInstance GetGameInstance

```
UGameInstance GetGameInstance()const GetLevelScriptActor
```

ALevelScriptActor GetLevelScriptActor() const

### GetDeltaSeconds

```
float32 GetDeltaSeconds()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UWorld::StaticClass()
```
