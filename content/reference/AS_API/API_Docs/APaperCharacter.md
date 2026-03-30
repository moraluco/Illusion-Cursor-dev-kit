# APaperCharacter

**Visibility:** public

## Inheritance

ACharacter → APaperCharacter

## Description

APaperCharacter behaves like ACharacter, but uses a UPaperFlipbookComponent instead of a USkeletalMeshComponent as a visual representation Note: The variable named Mesh will not be set up on this actor!

## CHARACTER

### Sprite

```
UPaperFlipbookComponent Sprite
```

The main skeletal mesh associated with this Character (optional sub-object).

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static APaperCharacter APaperCharacter::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APaperCharacter::StaticClass

```
static UClass APaperCharacter::StaticClass()
```
