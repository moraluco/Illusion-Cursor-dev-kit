# APaperFlipbookActor

**Visibility:** public

## Inheritance

AActor → APaperFlipbookActor

## Description

An instance of a UPaperFlipbook in a level.

This actor is created when you drag a flipbook asset from the content browser into the level, and it is just a thin wrapper around a UPaperFlipbookComponent that actually references the asset.

## SPRITE

### RenderComponent

```
UPaperFlipbookComponent RenderComponent
```
### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static APaperFlipbookActor APaperFlipbookActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APaperFlipbookActor::StaticClass

```
static UClass APaperFlipbookActor::StaticClass()
```
