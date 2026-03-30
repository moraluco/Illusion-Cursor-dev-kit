# UGameInstance

**Visibility:** public

## Inheritance

UObject → UGameInstance → UPlatformGameInstance

## Description

GameInstance: high-level manager object for an instance of the running game.  Spawned at game creation and not destroyed until game instance is shut down.  Running as a standalone game, there will be one of these.  Running in PIE (play-in-editor) will generate one of these per PIE instance.

## VARIABLES

### NumLocalPlayers

```
const int NumLocalPlayers FirstGamePlayer const ULocalPlayer FirstGamePlayer OnPawnControllerChangedDelegates FOnPawnControllerChanged OnPawnControllerChangedDelegates
```

gets triggered shortly after a pawn's controller is set. Most of the time it signals that the Controller has changed but in edge cases (like during replication) it might end up broadcasting the same pawn-controller pair more than once

---

## FUNCTIONS

### FindLocalPlayerFromControllerId

```
ULocalPlayer FindLocalPlayerFromControllerId(int ControllerId)const
```

CreateLocalPlayer

### ULocalPlayer CreateLocalPlayer

```
ULocalPlayer CreateLocalPlayer(int ControllerId, FString& OutError, bool bSpawnPlayerController)
```

AddLocalPlayer

### int AddLocalPlayer

```
int AddLocalPlayer(ULocalPlayer NewPlayer, int ControllerId)
```

RemoveLocalPlayer

### bool RemoveLocalPlayer

```
bool RemoveLocalPlayer(ULocalPlayer ExistingPlayer)
```

GetNumLocalPlayers

### int GetNumLocalPlayers

```
int GetNumLocalPlayers()const GetLocalPlayerByIndex
```

ULocalPlayer GetLocalPlayerByIndex(

### int 	Index

```
int 	Index 	) const
```

GetFirstLocalPlayerController

### APlayerController GetFirstLocalPlayerController

```
APlayerController GetFirstLocalPlayerController(const UWorld World = nullptr)const
```

CreateInitialPlayer

### ULocalPlayer CreateInitialPlayer

```
ULocalPlayer CreateInitialPlayer(FString& OutError)
```

FindLocalPlayerFromUniqueNetId

### ULocalPlayer FindLocalPlayerFromUniqueNetId

```
ULocalPlayer FindLocalPlayerFromUniqueNetId(FUniqueNetIdRepl UniqueNetId)const
```

GetFirstGamePlayer

### ULocalPlayer GetFirstGamePlayer

```
ULocalPlayer GetFirstGamePlayer()const HandleNetworkError
```

void HandleNetworkError(

### ENetworkFailure 	FailureType,

```
bool 	bIsServer
```

)

### Opportunity for blueprints to handle network errors.

```
Opportunity for blueprints to handle network errors.
```

HandleTravelError

### void HandleTravelError

```
void HandleTravelError(ETravelFailure FailureType)
```

Opportunity for blueprints to handle travel errors.

### Init

```
void Init()
```

Opportunity for blueprints to handle the game instance being initialized.

### Shutdown

```
void Shutdown()
```

Opportunity for blueprints to handle the game instance being shutdown.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGameInstance::StaticClass()
```
