# AGameMode

**Visibility:** public

## Inheritance

AGameModeBase → AGameMode → AARSharedWorldGameMode

## Description

GameMode is a subclass of GameModeBase that behaves like a multiplayer match-based game.  It has default behavior for picking spawn points and match state.  If you want a simpler base, inherit from GameModeBase instead.

## GAMEMODE

### MinRespawnDelay

```
float32 MinRespawnDelay
```

Minimum time before player can respawn after dying.

### NumTravellingPlayers

```
int NumTravellingPlayers
```

Number of players that are still traveling from a previous map

### InactivePlayerStateLifeSpan

```
float32 InactivePlayerStateLifeSpan
```

Time a playerstate will stick around in an inactive state after a player logout

### MaxInactivePlayers

```
int MaxInactivePlayers
```

The maximum number of inactive players before we kick the oldest ones out

### bDelayedStart

```
bool bDelayedStart
```

Whether the game should immediately start when the first player logs in. Affects the default behavior of ReadyToStartMatch

### NumBots

```
int NumBots
```

number of non-human players (AI controlled but participating as a player).

---

## VARIABLES

### MatchState

```
const FName MatchState
```

What match state we are currently in

---

## AI

### Say

```
void Say(FString Msg)
```

Exec command to broadcast a string to all players

---

## GAME

### GetMatchState

```
FName GetMatchState()const
```

Returns the current match state, this is an accessor to protect the state machine flow

### IsMatchInProgress

```
bool IsMatchInProgress()const
```

Returns true if the match state is InProgress or other gameplay state

### OnSetMatchState

```
void OnSetMatchState(FName NewState)
```

Implementable event to respond to match state changes

### ReadyToEndMatch

```
bool ReadyToEndMatch()
```

Returns true if ready to End Match. Games should override this

### ReadyToStartMatch

```
bool ReadyToStartMatch()
```

Returns true if ready to Start Match. Games should override this

### AbortMatch

```
void AbortMatch()
```

Report that a match has failed due to unrecoverable error

### EndMatch

```
void EndMatch()
```

Transition from InProgress to WaitingPostMatch. You can call this manually, will also get called if ReadyToEndMatch returns true

### RestartGame

```
void RestartGame()
```

Restart the game, by default travel to the current map

### StartMatch

```
void StartMatch()
```

Transition from WaitingToStart to InProgress. You can call this manually, will also get called if ReadyToStartMatch returns true

---

## FUNCTIONS

### SetbDelayedStart

```
void SetbDelayedStart(bool Value)
```

GetbDelayedStart

### bool GetbDelayedStart

```
bool GetbDelayedStart()const STATIC FUNCTIONS
```

Spawn

### static AGameMode AGameMode::Spawn

```
static AGameMode AGameMode::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AGameMode::StaticClass

```
static UClass AGameMode::StaticClass()
```
