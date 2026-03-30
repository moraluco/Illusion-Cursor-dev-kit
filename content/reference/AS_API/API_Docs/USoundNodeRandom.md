# USoundNodeRandom

**Visibility:** public

## Inheritance

USoundNode → USoundNodeRandom

## Description

Selects sounds from a random set

## RANDOM

### PreselectAtLevelLoad

```
int PreselectAtLevelLoad
```

If greater than 0, then upon each level load such a number of inputs will be randomly selected and the rest will be removed. This can be used to cut down the memory usage of large randomizing cues.

### Weights

```
TArray<float32> Weights FUNCTIONS SetbRandomizeWithoutReplacement void SetbRandomizeWithoutReplacement(bool Value)
```

SetbShouldExcludeFromBranchCulling

### void SetbShouldExcludeFromBranchCulling

```
void SetbShouldExcludeFromBranchCulling(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundNodeRandom::StaticClass()
```
