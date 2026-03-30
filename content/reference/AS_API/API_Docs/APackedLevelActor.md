# APackedLevelActor

**Visibility:** public

## Inheritance

ALevelInstance → APackedLevelActor

## Description

APackedLevelActor is the result of packing the source level (WorldAsset base class property) into a single actor. See FPackedLevelActorBuilder.

Other components are unsupported and will result in an incomplete APackedLevelActor. In this case using a regular ALevelInstance is recommended.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static APackedLevelActor APackedLevelActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APackedLevelActor::StaticClass

```
static UClass APackedLevelActor::StaticClass()
```
