# APlayerStart

**Visibility:** public

## Inheritance

ANavigationObjectBase → APlayerStart → APlayerStartPIE

## Description

This class indicates a location where a player can spawn when the game begins

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Engine​/Actors​/PlayerStart​/

## OBJECT

### PlayerStartTag

```
FName PlayerStartTag
```

Used when searching for which playerstart to use.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static APlayerStart APlayerStart::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APlayerStart::StaticClass

```
static UClass APlayerStart::StaticClass()
```
