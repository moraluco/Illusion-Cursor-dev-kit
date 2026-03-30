# ABandwidthTestActor

**Visibility:** public

## Inheritance

AActor → ABandwidthTestActor

## Description

This ABandwidthTestActor class is used to generate an easily controllable amount of bandwidth.  It uses property replication to generate it's traffic via a NetDeltaSerializer struct Note that the property data is never stored in memory on the simulated clients

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ABandwidthTestActor ABandwidthTestActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ABandwidthTestActor::StaticClass

```
static UClass ABandwidthTestActor::StaticClass()
```
