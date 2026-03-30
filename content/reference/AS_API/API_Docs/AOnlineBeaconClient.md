# AOnlineBeaconClient

**Visibility:** public

## Inheritance

AOnlineBeacon → AOnlineBeaconClient → APartyBeaconClient → ASpectatorBeaconClient → ATestBeaconClient

## Description

Base class for any unique beacon connectivity, paired with an AOnlineBeaconHostObject implementation

This is the actual actor that replicates across client/server and where all RPCs occur On the host, the life cycle is managed by an AOnlineBeaconHostObject On the client, the life cycle is managed by the game

## FUNCTIONS

### ClientOnConnected

```
void ClientOnConnected()
```

Called on the server side to open up the actor channel that will allow RPCs to occur (DO NOT OVERLOAD, implement OnConnected() instead)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AOnlineBeaconClient AOnlineBeaconClient::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AOnlineBeaconClient::StaticClass

```
static UClass AOnlineBeaconClient::StaticClass()
```
