# APaperGroupedSpriteActor

**Visibility:** public

## Inheritance

AActor → APaperGroupedSpriteActor

## Description

A group of sprites that will be rendered and culled as a single unit

This actor is created when you Merge several sprite components together.  it is just a thin wrapper around a UPaperGroupedSpriteComponent.

## SPRITE

### RenderComponent

```
UPaperGroupedSpriteComponent RenderComponent
```
### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static APaperGroupedSpriteActor APaperGroupedSpriteActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass APaperGroupedSpriteActor::StaticClass()
```
