# UCameraAnimInst

**Visibility:** public

## Inheritance

UObject → UCameraAnimInst → CAMERAANIMINST → PlayRate

## Description

float32 PlayRate

Multiplier for playback rate.  1.0 = normal.

## CAMERAANIMINST

### SetScale

```
void SetScale(float32 NewDuration)
```

Changes the scale of the animation while playing.

### Stop

```
void Stop(bool bImmediate = false)
```

Stops this instance playing whatever animation it is playing.

### SetDuration

```
void SetDuration(float32 NewDuration)
```

Changes the running duration of this active anim, while maintaining playback position.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCameraAnimInst::StaticClass()
```
