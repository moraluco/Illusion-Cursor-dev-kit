# AGameState

**Visibility:** public

## Inheritance

AGameStateBase → AGameState → AARSharedWorldGameState

## Description

GameState is a subclass of GameStateBase that behaves like a multiplayer match-based game.  It is tied to functionality in GameMode.

## GAMESTATE

### PreviousMatchState

```
FName PreviousMatchState
```

Previous map state, used to handle if multiple transitions happen per frame

### ElapsedTime

```
int ElapsedTime
```

Elapsed game time since match has started.

### MatchState

```
FName MatchState
```

What match state we are currently in

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AGameState AGameState::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AGameState::StaticClass

```
static UClass AGameState::StaticClass()
```
