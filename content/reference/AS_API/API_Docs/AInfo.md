# AInfo

**Visibility:** public

## Inheritance

AActor → AInfo → AAtmosphericFog → AExponentialHeightFog → AGameModeBase → AGameNetworkManager

## Description

and 12 other children

Info is the base class of an Actor that isn't meant to have a physical representation in the world, used primarily for "manager" type classes that hold settings data about the world, but might need to be an Actor for replication purposes.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AInfo AInfo::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AInfo::StaticClass

```
static UClass AInfo::StaticClass()
```
