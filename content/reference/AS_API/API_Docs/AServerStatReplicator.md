# AServerStatReplicator

**Visibility:** public

## Inheritance

AInfo → AServerStatReplicator

## Description

Class used to replicate server "stat net" data over. For server only values, the client data is is overwritten when bUpdateStatNet == true. For data that both the client and server set, the server data will only overwrite if bUpdateStatNet == true && bOverwriteClientStats == true.

## SERVERSTATS

### bOverwriteClientStats

```
bool bOverwriteClientStats
```

Whether to overwrite client data stat net with data from the server or not

### bUpdateStatNet

```
bool bUpdateStatNet
```

Whether to update stat net with data from the server or not

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AServerStatReplicator AServerStatReplicator::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AServerStatReplicator::StaticClass

```
static UClass AServerStatReplicator::StaticClass()
```
