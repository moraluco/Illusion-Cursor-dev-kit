# UInterpData

**Visibility:** public

## Inheritance

UObject → UInterpData

## Description

Interpolation data, containing keyframe tracks, event tracks etc.  This does not contain any  AActor  references or state, so can safely be stored in packages, shared between multiple MatineeActors etc.

## INTERPDATA

### InterpGroups

```
TArray<TObjectPtr<UInterpGroup>> InterpGroups
```

Actual interpolation data. Groups of InterpTracks.

### InterpLength

```
float32 InterpLength
```

Duration of interpolation sequence

### in seconds.

```
in seconds.
```

---

## FUNCTIONS

### SetbShouldBakeAndPrune

```
void SetbShouldBakeAndPrune(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterpData::StaticClass()
```
