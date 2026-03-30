# USoundNodeEnveloper

**Visibility:** public

## Inheritance

USoundNode → USoundNodeEnveloper

## Description

Allows manipulation of volume and pitch over a set time period

## ENVELOPE

### PitchCurve

```
FRuntimeFloatCurve PitchCurve
```

The distribution defining the pitch envelope.

### VolumeCurve

```
FRuntimeFloatCurve VolumeCurve
```

The distribution defining the volume envelope.

---

## LOOPING

### LoopCount

```
int LoopCount
```

The number of times the envelope should loop if looping is enabled and the envelope is not set to loop indefinitely.

### DurationAfterLoop

```
float32 DurationAfterLoop
```

The time in seconds it takes the evelope to fade out after the last loop is completed.

### LoopStart

```
float32 LoopStart
```

The time in seconds where the envelope's loop begins.

### LoopEnd

```
float32 LoopEnd
```

The time in seconds where the envelope's loop ends.

---

## MODULATION

### PitchMax

```
float32 PitchMax
```

The upper bound of pitch (1.0 is no change)

### VolumeMin

```
float32 VolumeMin
```

The lower bound of volume (1.0 is no change)

### VolumeMax

```
float32 VolumeMax
```

The upper bound of volume (1.0 is no change)

### PitchMin

```
float32 PitchMin
```

The lower bound of pitch (1.0 is no change)

---

## FUNCTIONS

### SetbLoop

```
void SetbLoop(bool Value)
```

SetbLoopIndefinitely

### void SetbLoopIndefinitely

```
void SetbLoopIndefinitely(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundNodeEnveloper::StaticClass()
```
