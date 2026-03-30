# ALevelSequenceMediaController

**Visibility:** public

## Inheritance

AActor → ALevelSequenceMediaController

## Description

Replicated actor class that is responsible for instigating various cinematic assets (Media, Audio, Level Sequences) in a synchronized fasion

## SYNCHRONIZATION

### MediaComponent

```
UMediaComponent MediaComponent
```

Media component that contains the media player to synchronize with

### Sequence

```
ALevelSequenceActor Sequence
```

Pointer to the sequence actor to use for playback

### ServerStartTimeSeconds

```
float32 ServerStartTimeSeconds
```

Replicated time at which the server started the sequence (taken from AGameStateBase::GetServerWorldTimeSeconds)

---

## SYNCHRONIZATION

### GetSequence

```
ALevelSequenceActor GetSequence()const
```

Access this actor's Level Sequence Actor

### Play

```
void Play()
```

SynchronizeToServer

### void SynchronizeToServer

```
void SynchronizeToServer(float32 DesyncThresholdSeconds = 2.000000)
```

Forcibly synchronize the sequence to the server's position if it has diverged by more than the specified threshold

### GetMediaComponent

```
UMediaComponent GetMediaComponent()const
```

Access this actor's media component

---

## FUNCTIONS

### SetMediaComponent

```
void SetMediaComponent(UMediaComponent Value)
```

SetSequence

### void SetSequence

```
void SetSequence(ALevelSequenceActor Value)
```

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static ALevelSequenceMediaController ALevelSequenceMediaController::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass ALevelSequenceMediaController::StaticClass()
```
