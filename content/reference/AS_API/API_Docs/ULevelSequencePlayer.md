# ULevelSequencePlayer

**Visibility:** public

## Inheritance

UMovieSceneSequencePlayer → ULevelSequencePlayer

## Description

ULevelSequencePlayer is used to actually "play" an level sequence asset at runtime.

This class keeps track of playback state and provides functions for manipulating an level sequence while its playing.

## SEQUENCER \| PLAYER

### ActiveCameraComponent

```
const UCameraComponent ActiveCameraComponent
```

Get the active camera cut camera

### OnCameraCut

```
FOnLevelSequencePlayerCameraCutEvent OnCameraCut
```

Event triggered when there is a camera cut

---

## SEQUENCER \| PLAYER

### CreateLevelSequencePlayer

```
static ULevelSequencePlayer ULevelSequencePlayer::CreateLevelSequencePlayer(
```

ULevelSequence 	LevelSequence,

FMovieSceneSequencePlaybackSettings 	Settings,

ALevelSequenceActor& 	OutActor

)

Create a new level sequence player.

**Parameters**

WorldContextObject

Context object from which to retrieve a UWorld.

LevelSequence
ULevelSequence

The level sequence to play.

Settings
FMovieSceneSequencePlaybackSettings

The desired playback settings

OutActor
ALevelSequenceActor&

The level sequence actor created to play this sequence.

GetActiveCameraComponent
UCameraComponent GetActiveCameraComponent() const

Get the active camera cut camera

STATIC FUNCTIONS
StaticClass
static UClass ULevelSequencePlayer::StaticClass()
