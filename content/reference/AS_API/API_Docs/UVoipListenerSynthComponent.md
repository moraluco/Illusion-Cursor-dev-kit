# UVoipListenerSynthComponent

**Visibility:** public

## Inheritance

USynthComponent → UVoipListenerSynthComponent

## AUDIO \| VOICE \| SENDER

### IsIdling

```
bool IsIdling()
```

Thread safe way to get whether this synth component still has buffered packets of audio to play back.

### audio

```
This function is used by the Voice Engine to clean up voice sounds when they are not playing back audio
```

to make space for other sounds to be rendered.

*

**Returns**

true if this synth component is out of audio to play.

STATIC FUNCTIONS
Get
static UVoipListenerSynthComponent UVoipListenerSynthComponent::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UVoipListenerSynthComponent UVoipListenerSynthComponent::GetOrCreate(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
Create
static UVoipListenerSynthComponent UVoipListenerSynthComponent::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UVoipListenerSynthComponent::StaticClass()
