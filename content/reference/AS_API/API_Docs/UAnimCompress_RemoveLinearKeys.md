# UAnimCompress_RemoveLinearKeys

**Visibility:** public

## Inheritance

UAnimCompress → UAnimCompress_RemoveLinearKeys → UAnimCompress_PerTrackCompression → LINEARKEYREMOVAL → MaxAngleDiff

## Description

float32 MaxAngleDiff

Maximum angle difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.

MaxScaleDiff float32 MaxScaleDiff

Maximum Scale difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.

MaxEffectorDiff float32 MaxEffectorDiff

As keys are tested for removal, we monitor the effects all the way down to the end effectors.  If their position changes by more than this amount as a result of removing a key, the key will be retained.  This value is used for all bones except the end-effectors parent.

MinEffectorDiff float32 MinEffectorDiff

As keys are tested for removal, we monitor the effects all the way down to the end effectors.  If their position changes by more than this amount as a result of removing a key, the key will be retained.  This value is used for the end-effectors parent, allowing tighter restrictions near the end of a skeletal chain.

EffectorDiffSocket float32 EffectorDiffSocket

Error threshold for End Effectors with Sockets attached to them.  Typically more important bone, where we want to be less aggressive with compression.

ParentKeyScale float32 ParentKeyScale

A scale value which increases the likelihood that a bone will retain a key if it's parent also had a key at the same time position.  Higher values can remove shaking artifacts from the animation, at the cost of compression.

MaxPosDiff float32 MaxPosDiff

Maximum position difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.

## FUNCTIONS

### SetbActuallyFilterLinearKeys

```
void SetbActuallyFilterLinearKeys(bool Value)
```

SetbRetarget

### void SetbRetarget

```
void SetbRetarget(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimCompress_RemoveLinearKeys::StaticClass()
```
