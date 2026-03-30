# AOnlineBeaconHostObject

**Visibility:** public

## Inheritance

AActor → AOnlineBeaconHostObject → APartyBeaconHost → ASpectatorBeaconHost → ATestBeaconHost

## Description

Base class for any unique beacon connectivity, paired with an AOnlineBeaconClient implementation

By defining a beacon type and implementing the ability to spawn unique AOnlineBeaconClients, any two instances of the engine can communicate with each other without officially connecting through normal Unreal networking

## Members

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static AOnlineBeaconHostObject AOnlineBeaconHostObject::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AOnlineBeaconHostObject::StaticClass()
```
