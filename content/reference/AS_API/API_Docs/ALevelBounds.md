# ALevelBounds

**Visibility:** public

## Inheritance

AActor → ALevelBounds

## Description

Defines level bounds Updates bounding box automatically based on actors transformation changes or holds fixed user defined bounding box Uses only actors where AActor::IsLevelBoundsRelevant() == true

## LEVELBOUNDS

### bAutoUpdateBounds

```
bool bAutoUpdateBounds
```

Whether to automatically update actor bounds based on all relevant actors bounds belonging to the same level

### BoxComponent

```
UBoxComponent BoxComponent
```

Bounding box for the level bounds.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ALevelBounds ALevelBounds::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ALevelBounds::StaticClass

```
static UClass ALevelBounds::StaticClass()
```
