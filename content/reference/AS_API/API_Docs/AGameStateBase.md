# AGameStateBase

**Visibility:** public

## Inheritance

AInfo → AGameStateBase → AGameState

## Description

GameStateBase is a class that manages the game's global state, and is spawned by GameModeBase.  It exists on both the client and the server and is fully replicated.

## GAMESTATE

### AuthorityGameMode

```
AGameModeBase AuthorityGameMode
```

Instance of the current game mode, exists only on the server. For non-authority clients, this will be NULL.

### SpectatorClass

```
TSubclassOf<ASpectatorPawn> SpectatorClass
```

Class used by spectators, assigned by GameModeBase.

### PlayerArray

```
TArray<TObjectPtr<APlayerState>> PlayerArray
```

Array of all PlayerStates, maintained on both server and clients (PlayerStates are always relevant)

### ServerWorldTimeSecondsUpdateFrequency

```
float32 ServerWorldTimeSecondsUpdateFrequency
```

Frequency that the server updates the replicated TimeSeconds from the world. Set to zero to disable periodic updates.

ServerWorldTimeSeconds

### ServerWorldTimeSeconds

```
const float32 ServerWorldTimeSeconds
```

Returns the simulated TimeSeconds on the server, will be synchronized on client and server

### GameModeClass

```
TSubclassOf<AGameModeBase> GameModeClass
```

Class of the server's game mode, assigned by GameModeBase.

---

## GAME

### HasMatchEnded

```
bool HasMatchEnded()const
```

Returns true if the match can be considered ended. Defaults to false.

---

## GAMESTATE

### GetServerWorldTimeSeconds

```
float32 GetServerWorldTimeSeconds()const
```

Returns the simulated TimeSeconds on the server, will be synchronized on client and server

### HasBegunPlay

```
bool HasBegunPlay()const
```

Returns true if the world has started play (called BeginPlay on actors)

### GetPlayerStartTime

```
float32 GetPlayerStartTime(AController Controller)const
```

Returns the time that should be used as when a player started

### HasMatchStarted

```
bool HasMatchStarted()const
```

Returns true if the world has started match (called MatchStarted callbacks)

### GetPlayerRespawnDelay

```
float32 GetPlayerRespawnDelay(AController Controller)const
```

Returns how much time needs to be spent before a player can respawn

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AGameStateBase AGameStateBase::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AGameStateBase::StaticClass

```
static UClass AGameStateBase::StaticClass()
```
