# USoundNodeLooping

**Visibility:** public

## Inheritance

USoundNode → USoundNodeLooping

## Description

Defines how a sound loops; either indefinitely, or for a set number of times.  Note: The Looping node should only be used for logical or procedural looping such as introducing a delay.  These sounds will not be played seamlessly. If you want a sound to loop seamlessly and indefinitely, use the Looping flag on the Wave Player node for that sound.

## LOOPING

### LoopCount

```
int LoopCount
```

The amount of times to loop

---

## FUNCTIONS

### SetbLoopIndefinitely

```
void SetbLoopIndefinitely(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundNodeLooping::StaticClass()
```
