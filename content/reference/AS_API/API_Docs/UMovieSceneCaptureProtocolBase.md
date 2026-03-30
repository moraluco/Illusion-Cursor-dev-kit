# UMovieSceneCaptureProtocolBase

**Visibility:** public

## Inheritance

UObject → UMovieSceneCaptureProtocolBase → UMovieSceneAudioCaptureProtocolBase → UMovieSceneImageCaptureProtocolBase

## Description

A capture protocol responsible for dealing with captured frames using some custom method (writing out to disk, streaming, etc)

A typical process for capture consits of the following process: Setup -> [ Warm up -> [ Capture Frame ] ] -> Begin Finalize -> [ HasFinishedProcessing ] -> Finalize

## VARIABLES

### State

```
const EMovieSceneCaptureProtocolState State
```

The current state of the protocol

---

## CAPTURE

### IsCapturing

```
bool IsCapturing()const
```

Check whether we can capture a frame from this protocol

### GetState

```
EMovieSceneCaptureProtocolState GetState()const
```

Get the current state of this capture protocol

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneCaptureProtocolBase::StaticClass()
```
