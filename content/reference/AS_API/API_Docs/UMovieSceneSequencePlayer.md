# UMovieSceneSequencePlayer

**Visibility:** public

## Inheritance

UObject → UMovieSceneSequencePlayer → UActorSequencePlayer → ULevelSequencePlayer → UTemplateSequencePlayer

## Description

Abstract class that provides consistent player behaviour for various animation players

## SEQUENCER \| PLAYER

### OnFinished

```
FOnMovieSceneSequencePlayerEvent OnFinished
```

Event triggered when the level sequence player finishes naturally (without explicitly calling stop)

### OnPlayReverse

```
FOnMovieSceneSequencePlayerEvent OnPlayReverse
```

Event triggered when the level sequence player is played in reverse

### OnStop

```
FOnMovieSceneSequencePlayerEvent OnStop
```

Event triggered when the level sequence player is stopped

### OnPause

```
FOnMovieSceneSequencePlayerEvent OnPause
```

Event triggered when the level sequence player is paused

### OnPlay

```
FOnMovieSceneSequencePlayerEvent OnPlay
```

Event triggered when the level sequence player is played

### DisableCameraCuts

```
bool DisableCameraCuts
```

Set whether to disable camera cuts

FrameDuration

### FrameDuration

```
const int FrameDuration
```

Get this sequence's duration in frames

### PlayRate

```
float32 PlayRate
```

Get the playback rate of this player.

---

## VARIABLES

### Sequence

```
const UMovieSceneSequence Sequence
```

The sequence to play back

---

## GAME \| CINEMATIC

### RestoreState

```
void RestoreState()
```

Restore any changes made by this player to their original state

---

## SEQUENCER \| PLAYER

### GetDisableCameraCuts

```
bool GetDisableCameraCuts()
```

Set whether to disable camera cuts

### GetFrameDuration

```
int GetFrameDuration()const
```

Get this sequence's duration in frames

### GetObjectBindings

```
TArray<FMovieSceneObjectBindingID> GetObjectBindings(UObject InObject)
```

Get the object bindings for the requested object

### GetPlayRate

```
float32 GetPlayRate()const
```

Get the playback rate of this player.

### GetSequence

```
UMovieSceneSequence GetSequence()const
```

Access the sequence this player is playing

**Returns**

the sequence currently assigned to this player

GetSequenceName
FString GetSequenceName(
bool 	bAddClientInfo	 = 	false
	) const

Get the name of the sequence this player is playing

**Parameters**

bAddClientInfo
bool

If true, add client index if running as a client

**Returns**

the name of the sequence, or None if no sequence is set

GetBoundObjects
TArray<UObject> GetBoundObjects(
FMovieSceneObjectBindingID 	ObjectBinding
	)

Retrieve all objects currently bound to the specified binding identifier

GoToEndAndStop
void GoToEndAndStop()

Go to end of the sequence and stop. Adheres to 'When Finished' section rules.

IsPaused
bool IsPaused() const

Check whether the sequence is paused.

IsPlaying
bool IsPlaying() const

Check whether the sequence is actively playing.

IsReversed
bool IsReversed() const

Check whether playback is reversed.

Pause
void Pause()

Pause playback.

ChangePlaybackDirection
void ChangePlaybackDirection()

Changes the direction of playback (go in reverse if it was going forward, or vice versa)

PlayLooping
void PlayLooping(
int 	NumLoops	 = 	- 1
	)

Start playback from the current time cursor position, looping the specified number of times.

**Parameters**

NumLoops
int

The number of loops to play. -1 indicates infinite looping.

PlayReverse
void PlayReverse()

Reverse playback.

PlayTo
void PlayTo(
FMovieSceneSequencePlaybackParams 	PlaybackParams,
FMovieSceneSequencePlayToParams 	PlayToParams
	)

Play from the current position to the requested position and pause. If requested position is before the current position, playback will be reversed. Playback to the requested position will be cancelled if Stop() or Pause() is invoked during this playback.

**Parameters**

PlaybackParams
FMovieSceneSequencePlaybackParams

The position settings (ie. the position to play to)

Play
void Play()

Start playback forwards from the current time cursor position, using the current play rate.

Scrub
void Scrub()

Scrub playback.

SetDisableCameraCuts
void SetDisableCameraCuts(
bool 	bInDisableCameraCuts
	)

Set whether to disable camera cuts

SetFrameRange
void SetFrameRange(
int 	StartFrame,
int 	Duration,
float32 	SubFrames	 = 	0.000000
	)

Set the valid play range for this sequence, determined by a starting frame number (in this sequence player's plaback frame), and a number of frames duration

**Parameters**

StartFrame
int

The frame number to start playing back the sequence

Duration
int

The number of frames to play

SetPlaybackPosition
void SetPlaybackPosition(
FMovieSceneSequencePlaybackParams 	PlaybackParams
	)

Set the current time of the player by evaluating from the current time to the specified time, as if the sequence is playing.  Triggers events that lie within the evaluated range. Does not alter the persistent playback status of the player (IsPlaying).

**Parameters**

PlaybackParams
FMovieSceneSequencePlaybackParams

The position settings (ie. the position to set playback to)

SetPlayRate
void SetPlayRate(
float32 	PlayRate
	)

Set the playback rate of this player. Negative values will play the animation in reverse.

**Parameters**

PlayRate
float32

The new rate of playback for the animation.

SetTimeRange
void SetTimeRange(
float32 	StartTime,
float32 	Duration
	)

Set the valid play range for this sequence, determined by a starting time  and a duration (in seconds)

**Parameters**

StartTime
float32

The time to start playing back the sequence in seconds

Duration
float32

The length to play for

Stop
void Stop()

Stop playback and move the cursor to the end (or start, for reversed playback) of the sequence.

StopAtCurrentTime
void StopAtCurrentTime()

Stop playback without moving the cursor.

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneSequencePlayer::StaticClass()
