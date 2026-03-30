# UReplaySubsystem

**Visibility:** public

## Inheritance

UGameInstanceSubsystem → UReplaySubsystem → REPLAY → ActiveReplayName

## Description

const FString ActiveReplayName

Get current recording/playing replay name

ReplayCurrentTime const float32 ReplayCurrentTime

Get current recording/playing replay time

bLoadDefaultMapOnStop bool bLoadDefaultMapOnStop

Whether to reload the default map when StopReplay is called.

## REPLAY

### GetReplayCurrentTime

```
float32 GetReplayCurrentTime()const
```

Get current recording/playing replay time

**Returns**

float Current recording/playback time in seconds

IsPlaying
bool IsPlaying() const
IsRecording
bool IsRecording() const
RequestCheckpoint
void RequestCheckpoint()

Request a checkpoint write, if currently recording.

GetActiveReplayName
FString GetActiveReplayName() const

Get current recording/playing replay name

**Returns**

FString Name of relpay (session id, file name, etc)

STATIC FUNCTIONS
Get
static UReplaySubsystem UReplaySubsystem::Get()
StaticClass
static UClass UReplaySubsystem::StaticClass()
