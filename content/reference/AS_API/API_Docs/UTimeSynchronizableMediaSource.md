# UTimeSynchronizableMediaSource

**Visibility:** public

## Inheritance

UBaseMediaSource → UTimeSynchronizableMediaSource

## Description

Base class for media sources that can be synchronized with the engine's timecode.

## SYNCHRONIZATION

### FrameDelay

```
int FrameDelay
```

When using Time Synchronization, how many frame back should it read.

### TimeDelay

```
float TimeDelay
```

When not using Time Synchronization, how far back it time should it read.

### bUseTimeSynchronization

```
bool bUseTimeSynchronization
```

Synchronize the media with the engine's timecode.  The media player has be able to read timecode.  The media player will try to play the corresponding frame, base on the frame's timecode value.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTimeSynchronizableMediaSource::StaticClass()
```
