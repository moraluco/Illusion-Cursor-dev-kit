# AGameSession

**Visibility:** public

## Inheritance

AInfo → AGameSession

## Description

Acts as a game-specific wrapper around the session interface. The game code makes calls to this when it needs to interact with the session interface.  A game session exists only the server, while running an online game.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AGameSession AGameSession::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AGameSession::StaticClass

```
static UClass AGameSession::StaticClass()
```
