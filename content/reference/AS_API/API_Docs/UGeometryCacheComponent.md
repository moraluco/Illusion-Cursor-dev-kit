# UGeometryCacheComponent

**Visibility:** public

## Inheritance

UMeshComponent → UGeometryCacheComponent

## Description

GeometryCacheComponent, encapsulates a GeometryCache asset instance and implements functionality for rendering/and playback of GeometryCaches

## COMPONENTS \| GEOMETRYCACHE

AnimationTime

### AnimationTime

```
const float32 AnimationTime
```

Set the current animation time for GeometryCache. Includes the influence of elapsed time and SetStartTimeOffset

PlaybackDirection

### PlaybackDirection

```
const float32 PlaybackDirection
```

Set the current animation time for GeometryCache. Includes the influence of elapsed time and SetStartTimeOffset

NumberOfFrames

### NumberOfFrames

```
const int NumberOfFrames
```

Get the number of frames

### OverrideWireframeColor

```
bool OverrideWireframeColor
```

Check whether we are overriding the wireframe color or not.

---

## GEOMETRYCACHE

### bLooping

```
bool bLooping Duration const float32 Duration
```

Duration of the animation (maximum time)

### bRunning

```
bool bRunning
```
### bOverrideWireframeColor

```
bool bOverrideWireframeColor
```

Do we override the wireframe rendering color?

### bManualTick

```
bool bManualTick
```
### bExtrapolateFrames

```
bool bExtrapolateFrames
```

Enable frame extrapolation for sub-frame sampling of non-constant topologies with imported motion vectors

### MotionVectorScale

```
float32 MotionVectorScale
```

Scale factor to apply to the imported motion vectors

### PlaybackSpeed

```
float32 PlaybackSpeed
```
### StartTimeOffset

```
float32 StartTimeOffset
```
### WireframeOverrideColor

```
FLinearColor WireframeOverrideColor
```

The wireframe override color.

### GeometryCache

```
UGeometryCache GeometryCache
```

Geometry Cache instance referenced by the component

---

## COMPONENTS \| GEOMETRYCACHE

### PlayReversed

```
void PlayReversed()
```

Start playback of GeometryCache in reverse

### GetDuration

```
float32 GetDuration()const
```

Get the duration of the playback

### GetMotionVectorScale

```
float32 GetMotionVectorScale()const
```

Get the motion vector scale.

### GetNumberOfFrames

```
int GetNumberOfFrames()const
```

Get the number of frames

### GetOverrideWireframeColor

```
bool GetOverrideWireframeColor()const
```

Check whether we are overriding the wireframe color or not.

### GetPlaybackDirection

```
float32 GetPlaybackDirection()const
```

Set the current animation time for GeometryCache. Includes the influence of elapsed time and SetStartTimeOffset

### GetPlaybackSpeed

```
float32 GetPlaybackSpeed()const
```

Get current playback speed for GeometryCache.

### GetStartTimeOffset

```
float32 GetStartTimeOffset()const
```

Get current start time offset for GeometryCache.

### GetWireframeOverrideColor

```
FLinearColor GetWireframeOverrideColor()const
```

Get the wireframe override color, used when overriding the wireframe color is enabled.

### IsExtrapolatingFrames

```
bool IsExtrapolatingFrames()const
```

Get whether this GeometryCache is extrapolating frames.

### IsLooping

```
bool IsLooping()const
```

Get whether this GeometryCache is looping or not.

### IsPlaying

```
bool IsPlaying()const
```

Get whether this GeometryCache is playing or not.

### IsPlayingReversed

```
bool IsPlayingReversed()const
```

Get whether this GeometryCache is playing in reverse or not.

### Pause

```
void Pause()
```

Pause playback of GeometryCache

### Play

```
void Play()
```

Start playback of GeometryCache

### PlayFromStart

```
void PlayFromStart()
```

Start playback of GeometryCache from the start

### GetAnimationTime

```
float32 GetAnimationTime()const
```

Set the current animation time for GeometryCache. Includes the influence of elapsed time and SetStartTimeOffset

### PlayReversedFromEnd

```
void PlayReversedFromEnd()
```

Start playback of GeometryCache from the end and play in reverse

### SetExtrapolateFrames

```
void SetExtrapolateFrames(bool bNewExtrapolating)
```

Set whether this GeometryCache is extrapolating frames.

### SetGeometryCache

```
bool SetGeometryCache(UGeometryCache NewGeomCache)
```

Change the Geometry Cache used by this instance.

### SetLooping

```
void SetLooping(bool bNewLooping)
```

Set whether this GeometryCache is looping or not.

### SetMotionVectorScale

```
void SetMotionVectorScale(float32 NewMotionVectorScale)
```

Set new motion vector scale.

### SetOverrideWireframeColor

```
void SetOverrideWireframeColor(bool bOverride)
```

Override wireframe color?

### SetPlaybackSpeed

```
void SetPlaybackSpeed(float32 NewPlaybackSpeed)
```

Set new playback speed for GeometryCache.

### SetStartTimeOffset

```
void SetStartTimeOffset(float32 NewStartTimeOffset)
```

Set current start time offset for GeometryCache.

### SetWireframeOverrideColor

```
void SetWireframeOverrideColor(const FLinearColor Color)
```

Set the color, used when overriding the wireframe color is enabled.

### Stop

```
void Stop()
```

Stop playback of GeometryCache

### TickAtThisTime

```
void TickAtThisTime(float32 Time, bool bInIsRunning, bool bInBackwards, bool bInIsLooping)
```

---

## FUNCTIONS

### GetGeometryCache

```
UGeometryCache GetGeometryCache()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UGeometryCacheComponent UGeometryCacheComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UGeometryCacheComponent UGeometryCacheComponent::GetOrCreate

```
static UGeometryCacheComponent UGeometryCacheComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UGeometryCacheComponent UGeometryCacheComponent::Create

```
static UGeometryCacheComponent UGeometryCacheComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UGeometryCacheComponent::StaticClass

```
static UClass UGeometryCacheComponent::StaticClass()
```
