# APlayerState

**Visibility:** public

## Inheritance

AInfo → APlayerState

## Description

A PlayerState is created for every player on a server (or in a standalone game).  PlayerStates are replicated to all clients, and contain network game relevant information about the player, such as playername, score, etc.

## EVENTS

### OnPawnSet

```
FOnPlayerStatePawnSet OnPawnSet
```

Broadcast whenever this player's possessed pawn is set

---

## PLAYERSTATE

### CompressedPing

```
uint8 CompressedPing
```

Replicated compressed ping for this player (holds ping in msec divided by 4)

### PlayerId

```
int PlayerId
```
### Pawn

```
const APawn Pawn
```

Return the pawn controlled by this Player State.

### PawnPrivate

```
APawn PawnPrivate
```

The pawn that is controlled by by this player state.

### Score

```
float32 Score PingInMilliseconds const float32 PingInMilliseconds
```

Returns the ping (in milliseconds)

### Returns ExactPing if available

```
Returns ExactPing if available(local players or when running on the server), and the replicated CompressedPing(converted back to milliseconds)otherwise.
```

Note that replication of CompressedPing is controlled by bShouldUpdateReplicatedPing, and if disabled then this will return 0 or a stale value on clients for player states that aren't related to local players

### PlayerController

```
const APlayerController PlayerController
```

Return the player controller that created this player state, or null for remote clients

### PlayerName

```
const FString PlayerName
```

returns current player name

bIsSpectator

### bIsSpectator

```
const bool bIsSpectator
```

bIsABot const bool bIsABot

---

## VARIABLES

### UniqueId

```
const FUniqueNetIdRepl UniqueId PLAYERSTATE CopyProperties void CopyProperties(APlayerState NewPlayerState)
```

Can be implemented in Blueprint Child to move more properties from old to new PlayerState when traveling to a new level * *

**Parameters**

NewPlayerState
APlayerState

New PlayerState, which we fill with the current properties

GetPawn
APawn GetPawn() const

Return the pawn controlled by this Player State.

GetPingInMilliseconds
float32 GetPingInMilliseconds() const

Returns the ping (in milliseconds)

Returns ExactPing if available (local players or when running on the server), and the replicated CompressedPing (converted back to milliseconds) otherwise.

Note that replication of CompressedPing is controlled by bShouldUpdateReplicatedPing, and if disabled then this will return 0 or a stale value on clients for player states that aren't related to local players

GetPlayerController
APlayerController GetPlayerController() const

Return the player controller that created this player state, or null for remote clients

GetPlayerName
FString GetPlayerName() const

returns current player name

IsOnlyASpectator
bool IsOnlyASpectator() const

Gets the literal value of bOnlySpectator.

GetUniqueId
FUniqueNetIdRepl GetUniqueId() const

Gets the online unique id for a player. If a player is logged in this will be consistent across all clients and servers.

OverrideWith
void OverrideWith(
APlayerState 	OldPlayerState
	)

Can be implemented in Blueprint Child to move more properties from old to new PlayerState when reconnecting * *

**Parameters**

OldPlayerState
APlayerState

Old PlayerState, which we use to fill the new one with

---

## FUNCTIONS

### GetbIsSpectator

```
bool GetbIsSpectator()const
```

GetbIsABot

### bool GetbIsABot

```
bool GetbIsABot()const SetbShouldUpdateReplicatedPing
```

void SetbShouldUpdateReplicatedPing(

### Value

```
bool Value
```

)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static APlayerState APlayerState::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APlayerState::StaticClass

```
static UClass APlayerState::StaticClass()
```
