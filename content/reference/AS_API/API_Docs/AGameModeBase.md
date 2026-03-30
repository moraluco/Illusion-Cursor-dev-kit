# AGameModeBase

**Visibility:** public

## Inheritance

AInfo → AGameModeBase → AFunctionalTestGameMode → AGameMode

## Description

The GameModeBase defines the game being played. It governs the game rules, scoring, what actors are allowed to exist in this game type, and who may enter the game.

It is only instanced on the server and will never exist on the client.

A GameModeBase actor is instantiated when the level is initialized for gameplay in C++ UGameEngine::LoadMap().

The class of this GameMode actor is determined by (in order) either the URL ?game=xxx, the GameMode Override value set in the World Settings, or the DefaultGameMode entry set in the game's Project Settings.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Gameplay​/Framework​/GameMode​/index​.html

## CLASSES

### ReplaySpectatorPlayerControllerClass

```
TSubclassOf<APlayerController> ReplaySpectatorPlayerControllerClass
```

The PlayerController class used when spectating a network replay.

### GameSessionClass

```
TSubclassOf<AGameSession> GameSessionClass
```

Class of GameSession, which handles login approval and online game interface

### GameStateClass

```
TSubclassOf<AGameStateBase> GameStateClass
```

Class of GameState associated with this GameMode.

### PlayerControllerClass

```
TSubclassOf<APlayerController> PlayerControllerClass
```

The class of PlayerController to spawn for players logging in.

### PlayerStateClass

```
TSubclassOf<APlayerState> PlayerStateClass
```

A PlayerState of this class will be associated with every player to replicate relevant player information to all clients.

### HUDClass

```
TSubclassOf<AHUD> HUDClass
```

HUD class this game uses.

### DefaultPawnClass

```
TSubclassOf<APawn> DefaultPawnClass
```

The default pawn class used by players.

### SpectatorClass

```
TSubclassOf<ASpectatorPawn> SpectatorClass
```

The pawn class used by the PlayerController for players when spectating.

### ServerStatReplicatorClass

```
TSubclassOf<AServerStatReplicator> ServerStatReplicatorClass
```

---

## GAME

### DefaultPlayerName

```
FText DefaultPlayerName
```

The default player name assigned to players that join with no name specified.

NumPlayers

### NumPlayers

```
const int NumPlayers
```

Returns number of active human players, excluding spectators

NumSpectators

### const int NumSpectators

```
const int NumSpectators
```

Returns number of human players currently spectating

---

## GAMEMODE

### bUseSeamlessTravel

```
bool bUseSeamlessTravel
```

Whether the game perform map travels using SeamlessTravel() which loads in the background and doesn't disconnect clients

### bStartPlayersAsSpectators

```
bool bStartPlayersAsSpectators
```

Whether players should immediately spawn when logging in, or stay as spectators until they manually spawn

### bPauseable

```
bool bPauseable
```

Whether the game is pauseable.

### OptionsString

```
FString OptionsString
```

Save options string and parse it when needed

---

## CLASSES

### GetDefaultPawnClassForController

```
UClass GetDefaultPawnClassForController(AController InController)
```

Returns default pawn class for given controller

---

## GAME

### ChoosePlayerStart

```
AActor ChoosePlayerStart(AController Player)
```

Return the 'best' player start for this player to spawn from Default implementation looks for a random unoccupied spot

**Parameters**

Player
AController

is the controller for whom we are choosing a playerstart

**Returns**

AActor chosen as player start (usually a PlayerStart)

FindPlayerStart
AActor FindPlayerStart(
AController 	Player,
FString 	IncomingName
	)

Return the specific player start actor that should be used for the next spawn This will either use a previously saved startactor, or calls ChoosePlayerStart

**Parameters**

Player
AController

The AController for whom we are choosing a Player Start

IncomingName
FString

Specifies the tag of a Player Start to use

**Returns**

Actor chosen as player start (usually a PlayerStart)

ChangeName
void ChangeName(
AController 	Controller,
FString 	NewName,
bool 	bNameChange
	)

Sets the name for a controller

**Parameters**

Controller
AController

The controller of the player to change the name of

NewName
FString

The name to set the player to

bNameChange
bool

Whether the name is changing or if this is the first time it has been set

MustSpectate
bool MustSpectate(
APlayerController 	NewPlayerController
	) const

Returns true if NewPlayerController may only join the server as a spectator.

GetNumPlayers
int GetNumPlayers()

Returns number of active human players, excluding spectators

GetNumSpectators
int GetNumSpectators()

Returns number of human players currently spectating

HandleStartingNewPlayer
void HandleStartingNewPlayer(
APlayerController 	NewPlayer
	)

Signals that a player is ready to enter the game, which may start it up

HasMatchEnded
bool HasMatchEnded() const

Returns true if the match can be considered ended

HasMatchStarted
bool HasMatchStarted() const

Returns true if the match start callbacks have been called

InitializeHUDForPlayer
void InitializeHUDForPlayer(
APlayerController 	NewPlayer
	)

Initialize the AHUD object for a player. Games can override this to do something different

InitStartSpot
void InitStartSpot(
AActor 	StartSpot,
AController 	NewPlayer
	)

Called from RestartPlayerAtPlayerStart, can be used to initialize the start spawn actor

K2_FindPlayerStart
AActor K2_FindPlayerStart(
AController 	Player,
FString 	IncomingName	 = 	""
	)

Return the specific player start actor that should be used for the next spawn This will either use a previously saved startactor, or calls ChoosePlayerStart

**Parameters**

Player
AController

The AController for whom we are choosing a Player Start

IncomingName
FString

Specifies the tag of a Player Start to use

**Returns**

Actor chosen as player start (usually a PlayerStart)

OnChangeName
void OnChangeName(
AController 	Other,
FString 	NewName,
bool 	bNameChange
	)

Overridable event for GameMode blueprint to respond to a change name call

**Parameters**

NewName
FString

The name to set the player to

bNameChange
bool

Whether the name is changing or if this is the first time it has been set

OnLogout
void OnLogout(
AController 	ExitingController
	)

Implementable event when a Controller with a PlayerState leaves the game.

OnRestartPlayer
void OnRestartPlayer(
AController 	NewPlayer
	)

Implementable event called at the end of RestartPlayer

OnSwapPlayerControllers
void OnSwapPlayerControllers(
APlayerController 	OldPC,
APlayerController 	NewPC
	)

Called when a PlayerController is swapped to a new one during seamless travel

OnPostLogin
void OnPostLogin(
APlayerController 	NewPlayer
	)

Notification that a player has successfully logged in, and has been given a player controller

CanSpectate
bool CanSpectate(
APlayerController 	Viewer,
APlayerState 	ViewTarget
	)

Return whether Viewer is allowed to spectate from the point of view of ViewTarget.

PlayerCanRestart
bool PlayerCanRestart(
APlayerController 	Player
	)

Returns true if it's valid to call RestartPlayer. By default will call Player->CanRestartPlayer

ResetLevel
void ResetLevel()

Overridable function called when resetting level. This is used to reset the game state while staying in the same map Default implementation calls Reset() on all actors except GameMode and Controllers

RestartPlayer
void RestartPlayer(
AController 	NewPlayer
	)

Tries to spawn the player's pawn, at the location returned by FindPlayerStart

RestartPlayerAtPlayerStart
void RestartPlayerAtPlayerStart(
AController 	NewPlayer,
AActor 	StartSpot
	)

Tries to spawn the player's pawn at the specified actor's location

RestartPlayerAtTransform
void RestartPlayerAtTransform(
AController 	NewPlayer,
FTransform 	SpawnTransform
	)

Tries to spawn the player's pawn at a specific location

ReturnToMainMenuHost
void ReturnToMainMenuHost()

Return to main menu, and disconnect any players

ShouldReset
bool ShouldReset(
AActor 	ActorToReset
	)

Overridable function to determine whether an Actor should have Reset called when the game has Reset called on it.  Default implementation returns true

**Parameters**

ActorToReset
AActor

The actor to make a determination for

**Returns**

true if ActorToReset should have Reset() called on it while restarting the game, false if the GameMode will manually reset it or if the actor does not need to be reset

SpawnDefaultPawnAtTransform
APawn SpawnDefaultPawnAtTransform(
AController 	NewPlayer,
FTransform 	SpawnTransform
	)

Called during RestartPlayer to actually spawn the player's pawn, when using a transform

**Parameters**

NewPlayer
AController

Controller for whom this pawn is spawned

SpawnTransform
FTransform

Transform at which to spawn pawn

**Returns**

a pawn of the default pawn class

SpawnDefaultPawnFor
APawn SpawnDefaultPawnFor(
AController 	NewPlayer,
AActor 	StartSpot
	)

Called during RestartPlayer to actually spawn the player's pawn, when using a start spot

**Parameters**

NewPlayer
AController

Controller for whom this pawn is spawned

StartSpot
AActor

Actor at which to spawn pawn

**Returns**

a pawn of the default pawn class

StartPlay
void StartPlay()

Transitions to calls BeginPlay on actors.

---

## FUNCTIONS

### SetbUseSeamlessTravel

```
void SetbUseSeamlessTravel(bool Value)
```

GetbStartPlayersAsSpectators

### bool GetbStartPlayersAsSpectators

```
bool GetbStartPlayersAsSpectators()const SetbStartPlayersAsSpectators
```

void SetbStartPlayersAsSpectators(

### bool 	Value

```
bool 	Value 	)
```

GetbPauseable

### bool GetbPauseable

```
bool GetbPauseable()const SetbPauseable
```

void SetbPauseable(

### bool 	Value

```
bool 	Value 	)
```

GetbUseSeamlessTravel

### bool GetbUseSeamlessTravel

```
bool GetbUseSeamlessTravel()const STATIC FUNCTIONS
```

Spawn

### static AGameModeBase AGameModeBase::Spawn

```
static AGameModeBase AGameModeBase::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AGameModeBase::StaticClass

```
static UClass AGameModeBase::StaticClass()
```
