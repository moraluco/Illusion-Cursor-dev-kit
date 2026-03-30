# APaperTileMapActor

**Visibility:** public

## Inheritance

AActor → APaperTileMapActor

## Description

An instance of a UPaperTileMap in a level.

This actor is created when you drag a tile map asset from the content browser into the level, and it is just a thin wrapper around a UPaperTileMapComponent that actually references the asset.

## TILEMAPACTOR

### RenderComponent

```
UPaperTileMapComponent RenderComponent
```
### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static APaperTileMapActor APaperTileMapActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APaperTileMapActor::StaticClass

```
static UClass APaperTileMapActor::StaticClass()
```
