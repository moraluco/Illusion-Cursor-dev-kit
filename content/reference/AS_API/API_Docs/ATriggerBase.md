# ATriggerBase

**Visibility:** public

## Inheritance

AActor → ATriggerBase → ATriggerBox → ATriggerCapsule → ATriggerSphere

## Description

An actor used to generate collision events (begin/end overlap) in the level.

## TRIGGERBASE

### SpriteComponent

```
UBillboardComponent SpriteComponent
```

Billboard used to see the trigger in the editor

### CollisionComponent

```
UShapeComponent CollisionComponent
```

Shape component used for collision

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ATriggerBase ATriggerBase::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ATriggerBase::StaticClass

```
static UClass ATriggerBase::StaticClass()
```
