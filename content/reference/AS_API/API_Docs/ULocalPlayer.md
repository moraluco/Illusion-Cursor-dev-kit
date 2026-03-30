# ULocalPlayer

**Visibility:** public

## Inheritance

UPlayer → ULocalPlayer

## Description

Each player that is active on the current client has a LocalPlayer. It stays active across maps There may be several spawned in the case of splitscreen/coop.  There may be 0 spawned on servers.

## VARIABLES

### GameInstance

```
const UGameInstance GameInstance
```

ControllerId const int ControllerId

### The controller ID which this player accepts input from.

```
The controller ID which this player accepts input from.
```

World

### const UWorld World

```
const UWorld World FUNCTIONS GetGameInstance UGameInstance GetGameInstance()const
```

GetControllerId

### int GetControllerId

```
int GetControllerId()const GetWorld
```

UWorld GetWorld() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULocalPlayer::StaticClass()
```
