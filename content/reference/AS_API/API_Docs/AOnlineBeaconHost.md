# AOnlineBeaconHost

**Visibility:** public

## Inheritance

AOnlineBeacon → AOnlineBeaconHost

## Description

Main actor that listens for side channel communication from another Unreal Engine application

The AOnlineBeaconHost listens for connections to route to a registered AOnlineBeaconHostObject The AOnlineBeaconHostObject is responsible for spawning the server version of the AOnlineBeaconClient The AOnlineBeaconHost pairs the two client actors, verifies the validity of the exchange, and accepts/continues the connection

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AOnlineBeaconHost AOnlineBeaconHost::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AOnlineBeaconHost::StaticClass

```
static UClass AOnlineBeaconHost::StaticClass()
```
