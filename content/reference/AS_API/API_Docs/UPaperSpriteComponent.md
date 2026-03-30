# UPaperSpriteComponent

**Visibility:** public

## Inheritance

UMeshComponent → UPaperSpriteComponent

## Description

A component that handles rendering and collision for a single instance of a UPaperSprite asset.

This component is created when you drag a sprite asset from the content browser into a Blueprint, or contained inside of the actor created when you drag one into the level.

### See also

- UPrimitiveComponent, UPaperSprite

## SPRITE

### Sprite

```
UPaperSprite Sprite
```

Gets the PaperSprite used by this instance.

### SpriteColor

```
FLinearColor SpriteColor
```

The color of the sprite (passed to the sprite material as a vertex color)

### SourceSprite

```
UPaperSprite SourceSprite
```

The sprite asset used by this component

---

## SPRITE

### SetSprite

```
bool SetSprite(UPaperSprite NewSprite)
```

Change the PaperSprite used by this instance.

### SetSpriteColor

```
void SetSpriteColor(FLinearColor NewColor)
```

Set color of the sprite

### GetSprite

```
UPaperSprite GetSprite()
```

Gets the PaperSprite used by this instance.

---

## FUNCTIONS

### GetSpriteColor

```
const FLinearColor& GetSpriteColor()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPaperSpriteComponent UPaperSpriteComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPaperSpriteComponent UPaperSpriteComponent::GetOrCreate

```
static UPaperSpriteComponent UPaperSpriteComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPaperSpriteComponent UPaperSpriteComponent::Create

```
static UPaperSpriteComponent UPaperSpriteComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPaperSpriteComponent::StaticClass

```
static UClass UPaperSpriteComponent::StaticClass()
```
