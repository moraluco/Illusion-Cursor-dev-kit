# UPaperFlipbook

**Visibility:** public

## Inheritance

UObject → UPaperFlipbook

## Description

Contains an animation sequence of sprite frames

## SPRITE

### KeyFrames

```
TArray<FPaperFlipbookKeyFrame> KeyFrames
```

The set of key frames for this flipbook animation (each one has a duration and a sprite to display)

### DefaultMaterial

```
UMaterialInterface DefaultMaterial
```

The material to use on a flipbook player instance if not overridden

### CollisionSource

```
EFlipbookCollisionMode CollisionSource
```
### source

```
Collision source
```

NumFrames const int NumFrames

### frames

```
Returns the total number of frames
```

NumKeyFrames const int NumKeyFrames

### frames

```
Returns the number of key frames
```

TotalDuration const float32 TotalDuration

### seconds

```
Returns the total duration in seconds
```
### FramesPerSecond

```
float32 FramesPerSecond
```

The nominal frame rate to play this flipbook animation back at

---

## SPRITE

### GetNumFrames

```
int GetNumFrames()const
```

Returns the total number of frames

### GetNumKeyFrames

```
int GetNumKeyFrames()const
```

Returns the number of key frames

### GetSpriteAtFrame

```
UPaperSprite GetSpriteAtFrame(int FrameIndex)const
```

Returns the sprite at the specified keyframe index, or nullptr if none exists

### GetSpriteAtTime

```
UPaperSprite GetSpriteAtTime(float32 Time, bool bClampToEnds = false)const
```

Returns the sprite at the specified time (in seconds), or nullptr if none exists.  When bClampToEnds is true, it will choose the first or last sprite if the time is out of range.

### GetTotalDuration

```
float32 GetTotalDuration()const
```

Returns the total duration in seconds

### IsValidKeyFrameIndex

```
bool IsValidKeyFrameIndex(int Index)const
```

Is the specified Index within the valid range of key frames?

### GetKeyFrameIndexAtTime

```
int GetKeyFrameIndexAtTime(float32 Time, bool bClampToEnds = false)const
```

Returns the keyframe index that covers the specified time (in seconds), or INDEX_NONE if none exists.  When bClampToEnds is true, it will choose the first or last keyframe if the time is out of range.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPaperFlipbook::StaticClass()
```
