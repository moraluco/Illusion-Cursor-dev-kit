# UTimelineComponent

**Visibility:** public

## Inheritance

UActorComponent → UTimelineComponent

## Description

TimelineComponent holds a series of events, floats, vectors or colors with associated keyframes.  Events can be triggered at keyframes along the timeline.  Floats, vectors, and colors are interpolated between keyframes along the timeline.

## COMPONENTS \| TIMELINE

PlaybackPosition

### PlaybackPosition

```
const float32 PlaybackPosition
```

Get the current playback position of the Timeline

### PlayRate

```
float32 PlayRate
```

Get the current play rate for this timeline

ScaledTimelineLength

### ScaledTimelineLength

```
const float32 ScaledTimelineLength
```

Get length of the timeline divided by the play rate

### TimelineLength

```
float32 TimelineLength
```

Get length of the timeline

### IgnoreTimeDilation

```
bool IgnoreTimeDilation
```

Get whether to ignore time dilation.

---

## COMPONENTS \| TIMELINE

### SetIgnoreTimeDilation

```
void SetIgnoreTimeDilation(bool bNewIgnoreTimeDilation)
```

Set whether to ignore time dilation.

### GetPlaybackPosition

```
float32 GetPlaybackPosition()const
```

Get the current playback position of the Timeline

### GetPlayRate

```
float32 GetPlayRate()const
```

Get the current play rate for this timeline

### GetScaledTimelineLength

```
float32 GetScaledTimelineLength()const
```

Get length of the timeline divided by the play rate

### GetTimelineLength

```
float32 GetTimelineLength()const
```

Get length of the timeline

### IsLooping

```
bool IsLooping()const
```

Get whether we are looping or not

### IsPlaying

```
bool IsPlaying()const
```

Get whether this timeline is playing or not.

### IsReversing

```
bool IsReversing()const
```

Get whether we are reversing or not

### Play

```
void Play()
```

Start playback of timeline

### PlayFromStart

```
void PlayFromStart()
```

Start playback of timeline from the start

### Reverse

```
void Reverse()
```

Start playback of timeline in reverse

### ReverseFromEnd

```
void ReverseFromEnd()
```

Start playback of timeline in reverse from the end

### SetFloatCurve

```
void SetFloatCurve(UCurveFloat NewFloatCurve, FName FloatTrackName)
```

Update a certain float track's curve

### GetIgnoreTimeDilation

```
bool GetIgnoreTimeDilation()const
```

Get whether to ignore time dilation.

### SetLinearColorCurve

```
void SetLinearColorCurve(UCurveLinearColor NewLinearColorCurve, FName LinearColorTrackName)
```

Update a certain linear color track's curve

### SetLooping

```
void SetLooping(bool bNewLooping)
```

true means we would loop, false means we should not.

### SetNewTime

```
void SetNewTime(float32 NewTime)
```

Set the new playback position time to use

### SetPlaybackPosition

```
void SetPlaybackPosition(float32 NewPosition, bool bFireEvents, bool bFireUpdate = true)
```

Jump to a position in the timeline.

**Parameters**

bFireEvents
bool

If true, event functions that are between current position and new playback position will fire.

bFireUpdate
bool

If true, the update output exec will fire after setting the new playback position.

SetPlayRate
void SetPlayRate(
float32 	NewRate
	)

Sets the new play rate for this timeline

SetTimelineLength
void SetTimelineLength(
float32 	NewLength
	)

Set length of the timeline

SetTimelineLengthMode
void SetTimelineLengthMode(
ETimelineLengthMode 	NewLengthMode
	)

Sets the length mode of the timeline

SetVectorCurve
void SetVectorCurve(
UCurveVector 	NewVectorCurve,
FName 	VectorTrackName
	)

Update a certain vector track's curve

Stop
void Stop()

Stop playback of timeline

STATIC FUNCTIONS
Get
static UTimelineComponent UTimelineComponent::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UTimelineComponent UTimelineComponent::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UTimelineComponent UTimelineComponent::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UTimelineComponent::StaticClass()
