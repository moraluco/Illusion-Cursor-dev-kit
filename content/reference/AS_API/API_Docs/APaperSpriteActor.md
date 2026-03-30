# APaperSpriteActor

**Visibility:** public

## Inheritance

AActor → APaperSpriteActor

## Description

An instance of a UPaperSprite in a level.

This actor is created when you drag a sprite asset from the content browser into the level, and it is just a thin wrapper around a UPaperSpriteComponent that actually references the asset.

## SPRITE

### RenderComponent

```
UPaperSpriteComponent RenderComponent
```
### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static APaperSpriteActor APaperSpriteActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APaperSpriteActor::StaticClass

```
static UClass APaperSpriteActor::StaticClass()
```
