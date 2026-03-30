# USequenceCameraShakePattern

**Visibility:** public

## Inheritance

UCameraShakePattern → USequenceCameraShakePattern

## Description

A camera shake pattern that plays a sequencer animation.

## CAMERASHAKE

### PlayRate

```
float32 PlayRate
```

Scalar defining how fast to play the anim.

### Scale

```
float32 Scale
```

Scalar defining how "intense" to play the anim.

### BlendInTime

```
float32 BlendInTime
```

Linear blend-in time.

### BlendOutTime

```
float32 BlendOutTime
```

Linear blend-out time.

### RandomSegmentDuration

```
float32 RandomSegmentDuration
```

When bRandomSegment is true, defines how long the sequence should play.

### bRandomSegment

```
bool bRandomSegment
```

When true, plays a random snippet of the sequence for RandomSegmentDuration seconds.

@note The sequence we be forced to loop when bRandomSegment is enabled, in case the duration is longer than what's left to play from the random start time.

### Sequence

```
UCameraAnimationSequence Sequence
```

Source camera animation sequence to play.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USequenceCameraShakePattern::StaticClass()
```
