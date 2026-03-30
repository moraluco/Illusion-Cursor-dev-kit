# UVOIPTalker

**Visibility:** public

## Inheritance

UActorComponent → UVOIPTalker

## AUDIO \| VOICE \| NOTIFICATION

VoiceLevel

### VoiceLevel

```
const float32 VoiceLevel
```

Get the current level of how loud this player is speaking. Will return 0.0 if player is not talking.

---

## VOICE

### Settings

```
FVoiceSettings Settings
```

Configurable settings for this player's voice. When set, this will update the next time the player speaks.

---

## AUDIO \| VOICE \| NOTIFICATION

### CreateTalkerForPlayer

```
static UVOIPTalker UVOIPTalker::CreateTalkerForPlayer(APlayerState OwningState)
```

function for creating and registering a UVOIPTalker.

### BPOnTalkingEnd

```
void BPOnTalkingEnd()
```

Blueprint native event for when this player stops speaking.

### GetVoiceLevel

```
float32 GetVoiceLevel()
```

Get the current level of how loud this player is speaking. Will return 0.0 if player is not talking.

### RegisterWithPlayerState

```
void RegisterWithPlayerState(APlayerState OwningState)
```

This function sets up this talker with a specific player.  It is necessary to use this to properly control a specific player's voice and receive events.

### BPOnTalkingBegin

```
void BPOnTalkingBegin(UAudioComponent AudioComponent)
```

Blueprint native event for when this player starts speaking.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UVOIPTalker UVOIPTalker::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UVOIPTalker UVOIPTalker::GetOrCreate

```
static UVOIPTalker UVOIPTalker::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UVOIPTalker UVOIPTalker::Create

```
static UVOIPTalker UVOIPTalker::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UVOIPTalker::StaticClass

```
static UClass UVOIPTalker::StaticClass()
```
