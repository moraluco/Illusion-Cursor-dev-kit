# UBTTask_PlayAnimation

**Visibility:** public

## Inheritance

UBTTaskNode → UBTTask_PlayAnimation

## Description

Play indicated AnimationAsset on Pawn controlled by BT Note that this node is generic and is handing multiple special cases, If you want a more efficient solution you'll need to implement it yourself (or wait for our BTTask_PlayCharacterAnimation)

## NODE

### AnimationToPlay

```
UAnimationAsset AnimationToPlay
```

Animation asset to play. Note that it needs to match the skeleton of pawn this BT is controlling

---

## FUNCTIONS

### SetbNonBlocking

```
void SetbNonBlocking(bool Value)
```

SetbLooping

### void SetbLooping

```
void SetbLooping(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTTask_PlayAnimation::StaticClass()
```
