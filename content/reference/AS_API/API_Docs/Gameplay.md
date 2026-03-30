# Gameplay

## Inheritance

Gameplay

## Description

STATIC VARIABLES PlatformName static const FString Gameplay::PlatformName

## ACCESSIBILITY

### AnnounceAccessibleString

```
static void Gameplay::AnnounceAccessibleString(FString AnnouncementString)
```

If accessibility is enabled, have the platform announce a string to the player.  These announcements can be interrupted by system accessibiliity announcements or other accessibility announcement requests.  This should be used judiciously as flooding a player with announcements can be overrwhelming and confusing.  Try to make announcements concise and clear.  NOTE: Currently only supported on Win10, Mac, iOS

---

## ACTOR

### GetAllActorsWithInterface

```
static void Gameplay::GetAllActorsWithInterface(TSubclassOf<UInterface> Interface, TArray<AActor>& OutActors)
```

Find all Actors in the world with the specified interface.  This is a slow operation, use with caution e.g. do not use every frame.

**Parameters**

Interface
TSubclassOf<UInterface>

Interface to find. Must be specified or result array will be empty.

OutActors
TArray<AActor>&

Output array of Actors of the specified interface.

GetAllActorsWithTag
static void Gameplay::GetAllActorsWithTag(
FName 	Tag,
TArray<AActor>& 	OutActors
	)

Find all Actors in the world with the specified tag.  This is a slow operation, use with caution e.g. do not use every frame.

**Parameters**

Tag
FName

Tag to find. Must be specified or result array will be empty.

OutActors
TArray<AActor>&

Output array of Actors of the specified tag.

FindNearestActor
static AActor Gameplay::FindNearestActor(
FVector 	Origin,
TArray<AActor> 	ActorsToCheck,
float32& 	Distance
	)

Returns an Actor nearest to Origin from ActorsToCheck array.

**Parameters**

Origin
FVector

World Location from which the distance is measured.

ActorsToCheck
TArray<AActor>

Array of Actors to examine and return Actor nearest to Origin.

Distance
float32&

Distance from Origin to the returned Actor.

**Returns**

Nearest Actor.

GetAllActorsOfClassWithTag
static void Gameplay::GetAllActorsOfClassWithTag(
TSubclassOf<AActor> 	ActorClass,
FName 	Tag,
TArray<AActor>& 	OutActors
	)

Find all Actors in the world of the specified class with the specified tag.  This is a slow operation, use with caution e.g. do not use every frame.

**Parameters**

ActorClass
TSubclassOf<AActor>

Class of Actor to find. Must be specified or result array will be empty.

Tag
FName

Tag to find. Must be specified or result array will be empty.

OutActors
TArray<AActor>&

Output array of Actors of the specified tag.

GetAllActorsOfClass
static void Gameplay::GetAllActorsOfClass(
TSubclassOf<AActor> 	ActorClass,
TArray<AActor>& 	OutActors
	)

Find all Actors in the world of the specified class.  This is a slow operation, use with caution e.g. do not use every frame.

**Parameters**

ActorClass
TSubclassOf<AActor>

Class of Actor to find. Must be specified or result array will be empty.

OutActors
TArray<AActor>&

Output array of Actors of the specified class.

GetActorOfClass
static AActor Gameplay::GetActorOfClass(
TSubclassOf<AActor> 	ActorClass
	)

Find the first Actor in the world of the specified class.  This is a slow operation, use with caution e.g. do not use every frame.

**Parameters**

ActorClass
TSubclassOf<AActor>

Class of Actor to find. Must be specified or result will be empty.

**Returns**

Actor of the specified class.

---

## AUDIO

### AreAnyListenersWithinRange

```
static bool Gameplay::AreAnyListenersWithinRange(FVector Location, float32 MaximumRange)
```

Determines if any audio listeners are within range of the specified location

**Parameters**

Location
FVector

The location from which test if a listener is in range

MaximumRange
float32

The distance away from Location to test if any listener is within

SpawnSound2D
static UAudioComponent Gameplay::SpawnSound2D(

USoundBase 	Sound,
float32 	VolumeMultiplier	 = 	1.000000,
float32 	PitchMultiplier	 = 	1.000000,
float32 	StartTime	 = 	0.000000,
USoundConcurrency 	ConcurrencySettings	 = 	nullptr,
bool 	bPersistAcrossLevelTransition	 = 	false,
bool 	bAutoDestroy	 = 	true

)

This function allows users to create Audio Components with settings specifically for non-spatialized, non-distance-attenuated sounds. Audio Components created using this function by default will not have Spatialization applied. Sound instances will begin playing upon spawning this Audio Component.

Not Replicated.

**Parameters**

Sound
USoundBase

Sound to play.

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far in to the sound to begin playback at

ConcurrencySettings
USoundConcurrency

Override concurrency settings package to play sound with

bAutoDestroy
bool

Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated

**Returns**

An audio component to manipulate the spawned sound

PlaySound2D
static void Gameplay::PlaySound2D(
	USoundBase 	Sound,
	float32 	VolumeMultiplier	 = 	1.000000,
	float32 	PitchMultiplier	 = 	1.000000,
	float32 	StartTime	 = 	0.000000,
	USoundConcurrency 	ConcurrencySettings	 = 	nullptr,
const 	AActor 	OwningActor	 = 	nullptr,
	bool 	bIsUISound	 = 	true
	)

Plays a sound directly with no attenuation, perfect for UI sounds.

Fire and Forget.

Not Replicated.

**Parameters**

Sound
USoundBase

Sound to play.

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far in to the sound to begin playback at

ConcurrencySettings
USoundConcurrency

Override concurrency settings package to play sound with

OwningActor
const AActor

The actor to use as the "owner" for concurrency settings purposes. Allows PlaySound calls to do a concurrency limit per owner.

bIsUISound
bool

True if sound is UI related, else false

GetMaxAudioChannelCount
static int Gameplay::GetMaxAudioChannelCount()

Retrieves the max voice count currently used by the audio engine.

SetBaseSoundMix
static void Gameplay::SetBaseSoundMix(
USoundMix 	InSoundMix
	)

Set the sound mix of the audio system for special EQing

PlayDialogueAtLocation
static void Gameplay::PlayDialogueAtLocation(
UDialogueWave 	Dialogue,
FDialogueContext 	Context,
FVector 	Location,
FRotator 	Rotation,
float32 	VolumeMultiplier	 = 	1.000000,
float32 	PitchMultiplier	 = 	1.000000,
float32 	StartTime	 = 	0.000000,
USoundAttenuation 	AttenuationSettings	 = 	nullptr
	)

Plays a dialogue at the given location. This is a fire and forget sound and does not travel with any actor.  Replication is also not handled at this point.

**Parameters**

Dialogue
UDialogueWave

dialogue to play

Context
FDialogueContext

context the dialogue is to play in

Location
FVector

World position to play dialogue at

Rotation
FRotator

World rotation to play dialogue at

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far in to the dialogue to begin playback at

AttenuationSettings
USoundAttenuation

Override attenuation settings package to play sound with

UnRetainAllSoundsInSoundClass
static void Gameplay::UnRetainAllSoundsInSoundClass(
USoundClass 	InSoundClass
	)

Iterate through all sound waves and releases handles to retained chunks. (If the chunk is not being played it will be up for eviction)

SetGlobalPitchModulation
static void Gameplay::SetGlobalPitchModulation(
float32 	PitchModulation,
float32 	TimeSec
	)

Sets a global pitch modulation scalar that will apply to all non-UI sounds

Fire and Forget.

Not Replicated.

**Parameters**

PitchModulation
float32

A pitch modulation value to globally set.

TimeSec
float32

A time value to linearly interpolate the global modulation pitch over from it's current value.

GetClosestListenerLocation
static bool Gameplay::GetClosestListenerLocation(
FVector 	Location,
float32 	MaximumRange,
bool 	bAllowAttenuationOverride,
FVector& 	ListenerPosition
	)

Finds and returns the position of the closest listener to the specified location

**Parameters**

Location
FVector

The location from which we'd like to find the closest listener, in world space.

MaximumRange
float32

The maximum distance away from Location that a listener can be.

bAllowAttenuationOverride
bool

True for the adjusted listener position (if attenuation override is set), false for the raw listener position (for panning)

ListenerPosition
FVector&

[Out] The position of the closest listener in world space, if found.

**Returns**

true if we've successfully found a listener within MaximumRange of Location, otherwise false.

SpawnSoundAtLocation
static UAudioComponent Gameplay::SpawnSoundAtLocation(

USoundBase 	Sound,
FVector 	Location,
FRotator 	Rotation	 = 	FRotator ( ),
float32 	VolumeMultiplier	 = 	1.000000,
float32 	PitchMultiplier	 = 	1.000000,
float32 	StartTime	 = 	0.000000,
USoundAttenuation 	AttenuationSettings	 = 	nullptr,
USoundConcurrency 	ConcurrencySettings	 = 	nullptr,
bool 	bAutoDestroy	 = 	true

)

Spawns a sound at the given location. This does not travel with any actor. Replication is also not handled at this point.

**Parameters**

Sound
USoundBase

sound to play

Location
FVector

World position to play sound at

Rotation
FRotator

World rotation to play sound at

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far in to the sound to begin playback at

AttenuationSettings
USoundAttenuation

Override attenuation settings package to play sound with

ConcurrencySettings
USoundConcurrency

Override concurrency settings package to play sound with

bAutoDestroy
bool

Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated

**Returns**

An audio component to manipulate the spawned sound

SetSoundClassDistanceScale
static void Gameplay::SetSoundClassDistanceScale(

USoundClass 	SoundClass,
float32 	DistanceAttenuationScale,
float32 	TimeSec	 = 	0.000000

)

Linearly interpolates the attenuation distance scale value from it's current attenuation distance override value (1.0f it not overridden) to its new attenuation distance override, over the given amount of time

Fire and Forget.

Not Replicated.

**Parameters**

SoundClass
USoundClass

Sound class to to use to set the attenuation distance scale on.

DistanceAttenuationScale
float32

A scalar for the attenuation distance used for computing distance attenuation.

TimeSec
float32

A time value to linearly interpolate from the current distance attenuation scale value to the new value.

SetGlobalListenerFocusParameters
static void Gameplay::SetGlobalListenerFocusParameters(

float32 	FocusAzimuthScale	 = 	1.000000,
float32 	NonFocusAzimuthScale	 = 	1.000000,
float32 	FocusDistanceScale	 = 	1.000000,
float32 	NonFocusDistanceScale	 = 	1.000000,
float32 	FocusVolumeScale	 = 	1.000000,
float32 	NonFocusVolumeScale	 = 	1.000000,
float32 	FocusPriorityScale	 = 	1.000000,
float32 	NonFocusPriorityScale	 = 	1.000000

)

Sets the global listener focus parameters, which will scale focus behavior of sounds based on their focus azimuth settings in their attenuation settings.

Fire and Forget.

Not Replicated.

**Parameters**

FocusAzimuthScale
float32

An angle scale value used to scale the azimuth angle that defines where sounds are in-focus.

FocusDistanceScale
float32

A distance scale value to use for sounds which are in-focus. Values < 1.0 will reduce perceived distance to sounds, values > 1.0 will increase perceived distance to in-focus sounds.

NonFocusDistanceScale
float32

A distance scale value to use for sounds which are out-of-focus. Values < 1.0 will reduce perceived distance to sounds, values > 1.0 will increase perceived distance to in-focus sounds.

FocusPriorityScale
float32

A priority scale value (> 0.0) to use for sounds which are in-focus. Values < 1.0 will reduce the priority of in-focus sounds, values > 1.0 will increase the priority of in-focus sounds.

NonFocusPriorityScale
float32

A priority scale value (> 0.0) to use for sounds which are out-of-focus. Values < 1.0 will reduce the priority of sounds out-of-focus sounds, values > 1.0 will increase the priority of out-of-focus sounds.

GetCurrentReverbEffect
static UReverbEffect Gameplay::GetCurrentReverbEffect()

Returns the highest priority reverb settings currently active from any source (Audio Volumes or manual settings).

ClearSoundMixClassOverride
static void Gameplay::ClearSoundMixClassOverride(
USoundMix 	InSoundMixModifier,
USoundClass 	InSoundClass,
float32 	FadeOutTime	 = 	1.000000
	)

Clears any existing override of the Sound Class Adjuster in the given Sound Mix

**Parameters**

InSoundMixModifier
USoundMix

The sound mix to modify.

InSoundClass
USoundClass

The sound class in the sound mix to clear overrides from.

FadeOutTime
float32

The interpolation time to use to go from the current sound class adjuster override values to the non-override values.

PrimeAllSoundsInSoundClass
static void Gameplay::PrimeAllSoundsInSoundClass(
USoundClass 	InSoundClass
	)

Primes the sound waves in the given USoundClass, caching the first chunk of streamed audio.

PrimeSound
static void Gameplay::PrimeSound(
USoundBase 	InSound
	)

Primes the sound, caching the first chunk of streamed audio.

PlayDialogue2D
static void Gameplay::PlayDialogue2D(
UDialogueWave 	Dialogue,
FDialogueContext 	Context,
float32 	VolumeMultiplier	 = 	1.000000,
float32 	PitchMultiplier	 = 	1.000000,
float32 	StartTime	 = 	0.000000
	)

Plays a dialogue directly with no attenuation, perfect for UI.

Fire and Forget.

Not Replicated.

**Parameters**

Dialogue
UDialogueWave

dialogue to play

Context
FDialogueContext

context the dialogue is to play in

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far in to the dialogue to begin playback at

DeactivateReverbEffect
static void Gameplay::DeactivateReverbEffect(
FName 	TagName
	)

Deactivates a Reverb Effect that was applied outside of an Audio Volume

**Parameters**

TagName
FName

Tag associated with Reverb Effect to remove

ClearSoundMixModifiers
static void Gameplay::ClearSoundMixModifiers()

Clear all sound mix modifiers from the audio system

SpawnSoundAttached
static UAudioComponent Gameplay::SpawnSoundAttached(

USoundBase 	Sound,
USceneComponent 	AttachToComponent,
FName 	AttachPointName	 = 	NAME_None,
FVector 	Location	 = 	FVector ( ),
FRotator 	Rotation	 = 	FRotator ( ),
EAttachLocation 	LocationType	 = 	EAttachLocation :: KeepRelativeOffset,
bool 	bStopWhenAttachedToDestroyed	 = 	false,
float32 	VolumeMultiplier	 = 	1.000000,
float32 	PitchMultiplier	 = 	1.000000,
float32 	StartTime	 = 	0.000000,
USoundAttenuation 	AttenuationSettings	 = 	nullptr,
USoundConcurrency 	ConcurrencySettings	 = 	nullptr,
bool 	bAutoDestroy	 = 	true

)

This function allows users to create and play Audio Components attached to a specific Scene Component.  Useful for spatialized and/or distance-attenuated sounds that need to follow another object in space.

**Parameters**

Sound
USoundBase

sound to play

AttachPointName
FName

Optional named point within the AttachComponent to play the sound at

Location
FVector

Depending on the value of Location Type this is either a relative offset from the attach component/point or an absolute world position that will be translated to a relative offset

Rotation
FRotator

Depending on the value of Location Type this is either a relative offset from the attach component/point or an absolute world rotation that will be translated to a relative offset

LocationType
EAttachLocation

Specifies whether Location is a relative offset or an absolute world position

bStopWhenAttachedToDestroyed
bool

Specifies whether the sound should stop playing when the owner of the attach to component is destroyed.

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far in to the sound to begin playback at

AttenuationSettings
USoundAttenuation

Override attenuation settings package to play sound with

ConcurrencySettings
USoundConcurrency

Override concurrency settings package to play sound with

bAutoDestroy
bool

Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated

**Returns**

An audio component to manipulate the spawned sound

SetMaxAudioChannelsScaled
static void Gameplay::SetMaxAudioChannelsScaled(
float32 	MaxChannelCountScale
	)

Sets the max number of voices (also known as "channels") dynamically by percentage. E.g. if you want to temporarily reduce voice count by 50%, use 0.50. Later, you can return to the original max voice count by using 1.0.

**Parameters**

MaxChannelCountScale
float32

The percentage of the original voice count to set the max number of voices to

SetSoundMixClassOverride
static void Gameplay::SetSoundMixClassOverride(
USoundMix 	InSoundMixModifier,
USoundClass 	InSoundClass,
float32 	Volume	 = 	1.000000,
float32 	Pitch	 = 	1.000000,
float32 	FadeInTime	 = 	1.000000,
bool 	bApplyToChildren	 = 	true
	)

Overrides the sound class adjuster in the given sound mix. If the sound class does not exist in the input sound mix, the sound class adjuster will be added to the list of active sound mix modifiers.

**Parameters**

InSoundMixModifier
USoundMix

The sound mix to modify.

InSoundClass
USoundClass

The sound class to override (or add) in the sound mix.

Volume
float32

The volume scale to set the sound class adjuster to.

Pitch
float32

The pitch scale to set the sound class adjuster to.

FadeInTime
float32

The interpolation time to use to go from the current sound class adjuster values to the new values.

bApplyToChildren
bool

Whether or not to apply this override to the sound class' children or to just the specified sound class.

PushSoundMixModifier
static void Gameplay::PushSoundMixModifier(
USoundMix 	InSoundMixModifier
	)

Push a sound mix modifier onto the audio system

**Parameters**

InSoundMixModifier
USoundMix

The Sound Mix Modifier to add to the system

CreateSound2D
static UAudioComponent Gameplay::CreateSound2D(

USoundBase 	Sound,
float32 	VolumeMultiplier	 = 	1.000000,
float32 	PitchMultiplier	 = 	1.000000,
float32 	StartTime	 = 	0.000000,
USoundConcurrency 	ConcurrencySettings	 = 	nullptr,
bool 	bPersistAcrossLevelTransition	 = 	false,
bool 	bAutoDestroy	 = 	true

)

This function allows users to create Audio Components in advance of playback with settings specifically for non-spatialized, non-distance-attenuated sounds. Audio Components created using this function by default will not have Spatialization applied.

**Parameters**

Sound
USoundBase

Sound to create.

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far into the sound to begin playback at

ConcurrencySettings
USoundConcurrency

Override concurrency settings package to play sound with

bAutoDestroy
bool

Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping), or whether it can be reactivated

**Returns**

An audio component to manipulate the created sound

ActivateReverbEffect
static void Gameplay::ActivateReverbEffect(
UReverbEffect 	ReverbEffect,
FName 	TagName,
float32 	Priority	 = 	0.000000,
float32 	Volume	 = 	0.500000,
float32 	FadeTime	 = 	2.000000
	)

Activates a Reverb Effect without the need for an Audio Volume

**Parameters**

ReverbEffect
UReverbEffect

Reverb Effect to use

TagName
FName

Tag to associate with Reverb Effect

Priority
float32

Priority of the Reverb Effect

Volume
float32

Volume level of Reverb Effect

FadeTime
float32

Time before Reverb Effect is fully active

SpawnDialogueAttached
static UAudioComponent Gameplay::SpawnDialogueAttached(

UDialogueWave 	Dialogue,
FDialogueContext 	Context,
USceneComponent 	AttachToComponent,
FName 	AttachPointName	 = 	NAME_None,
FVector 	Location	 = 	FVector ( ),
FRotator 	Rotation	 = 	FRotator ( ),
EAttachLocation 	LocationType	 = 	EAttachLocation :: KeepRelativeOffset,
bool 	bStopWhenAttachedToDestroyed	 = 	false,
float32 	VolumeMultiplier	 = 	1.000000,
float32 	PitchMultiplier	 = 	1.000000,
float32 	StartTime	 = 	0.000000,
USoundAttenuation 	AttenuationSettings	 = 	nullptr,
bool 	bAutoDestroy	 = 	true

)

Spawns a DialogueWave, a special type of Asset that requires Context data in order to resolve a specific SoundBase, which is then passed on to the new Audio Component. This function allows users to create and play Audio Components attached to a specific Scene Component. Useful for spatialized and/or distance-attenuated dialogue that needs to follow another object in space.

**Parameters**

Dialogue
UDialogueWave

dialogue to play

Context
FDialogueContext

context the dialogue is to play in

AttachPointName
FName

Optional named point within the AttachComponent to play the sound at

Location
FVector

Depending on the value of Location Type this is either a relative offset from the attach component/point or an absolute world position that will be translated to a relative offset

Rotation
FRotator

Depending on the value of Location Type this is either a relative offset from the attach component/point or an absolute world rotation that will be translated to a relative offset

LocationType
EAttachLocation

Specifies whether Location is a relative offset or an absolute world position

bStopWhenAttachedToDestroyed
bool

Specifies whether the sound should stop playing when the owner its attached to is destroyed.

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far in to the dialogue to begin playback at

AttenuationSettings
USoundAttenuation

Override attenuation settings package to play sound with

bAutoDestroy
bool

Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated

**Returns**

Audio Component to manipulate the playing dialogue with

SpawnDialogue2D
static UAudioComponent Gameplay::SpawnDialogue2D(
UDialogueWave 	Dialogue,
FDialogueContext 	Context,
float32 	VolumeMultiplier	 = 	1.000000,
float32 	PitchMultiplier	 = 	1.000000,
float32 	StartTime	 = 	0.000000,
bool 	bAutoDestroy	 = 	true
	)

Spawns a DialogueWave, a special type of Asset that requires Context data in order to resolve a specific SoundBase, which is then passed on to the new Audio Component. Audio Components created using this function by default will not have Spatialization applied. Sound instances will begin playing upon spawning this Audio Component.

Not Replicated.

**Parameters**

Dialogue
UDialogueWave

dialogue to play

Context
FDialogueContext

context the dialogue is to play in

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far in to the dialogue to begin playback at

bAutoDestroy
bool

Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated

**Returns**

An audio component to manipulate the spawned sound

SpawnDialogueAtLocation
static UAudioComponent Gameplay::SpawnDialogueAtLocation(

UDialogueWave 	Dialogue,
FDialogueContext 	Context,
FVector 	Location,
FRotator 	Rotation	 = 	FRotator ( ),
float32 	VolumeMultiplier	 = 	1.000000,
float32 	PitchMultiplier	 = 	1.000000,
float32 	StartTime	 = 	0.000000,
USoundAttenuation 	AttenuationSettings	 = 	nullptr,
bool 	bAutoDestroy	 = 	true

)

Spawns a DialogueWave, a special type of Asset that requires Context data in order to resolve a specific SoundBase, which is then passed on to the new Audio Component. This function allows users to create and play Audio Components at a specific World Location and Rotation. Useful for spatialized and/or distance-attenuated dialogue.

**Parameters**

Dialogue
UDialogueWave

Dialogue to play

Context
FDialogueContext

Context the dialogue is to play in

Location
FVector

World position to play dialogue at

Rotation
FRotator

World rotation to play dialogue at

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far into the dialogue to begin playback at

AttenuationSettings
USoundAttenuation

Override attenuation settings package to play sound with

bAutoDestroy
bool

Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated

**Returns**

Audio Component to manipulate the playing dialogue with

PopSoundMixModifier
static void Gameplay::PopSoundMixModifier(
USoundMix 	InSoundMixModifier
	)

Pop a sound mix modifier from the audio system

**Parameters**

InSoundMixModifier
USoundMix

The Sound Mix Modifier to remove from the system

PlaySoundAtLocation
static void Gameplay::PlaySoundAtLocation(

	USoundBase 	Sound,
	FVector 	Location,
	FRotator 	Rotation,
	float32 	VolumeMultiplier	 = 	1.000000,
	float32 	PitchMultiplier	 = 	1.000000,
	float32 	StartTime	 = 	0.000000,
	USoundAttenuation 	AttenuationSettings	 = 	nullptr,
	USoundConcurrency 	ConcurrencySettings	 = 	nullptr,
const 	AActor 	OwningActor	 = 	nullptr,
	UInitialActiveSoundParams 	InitialParams	 = 	nullptr

)

Plays a sound at the given location. This is a fire and forget sound and does not travel with any actor.  Replication is also not handled at this point.

**Parameters**

Sound
USoundBase

sound to play

Location
FVector

World position to play sound at

Rotation
FRotator

World rotation to play sound at

VolumeMultiplier
float32

A linear scalar multiplied with the volume, in order to make the sound louder or softer.

PitchMultiplier
float32

A linear scalar multiplied with the pitch.

StartTime
float32

How far in to the sound to begin playback at

AttenuationSettings
USoundAttenuation

Override attenuation settings package to play sound with

ConcurrencySettings
USoundConcurrency

Override concurrency settings package to play sound with

OwningActor
const AActor

The actor to use as the "owner" for concurrency settings purposes. Allows PlaySound calls to do a concurrency limit per owner.

---

## AUDIO \| SUBTITLES

### SetSubtitlesEnabled

```
static void Gameplay::SetSubtitlesEnabled(bool bEnabled)
```

Will set subtitles to be enabled or disabled.

**Parameters**

bEnabled
bool

will enable subtitle drawing if true, disable if false.

AreSubtitlesEnabled
static bool Gameplay::AreSubtitlesEnabled()

Returns whether or not subtitles are currently enabled.

**Returns**

true if subtitles are enabled.

---

## CAMERA

### GetViewProjectionMatrix

```
static void Gameplay::GetViewProjectionMatrix(FMinimalViewInfo DesiredView, FMatrix& ViewMatrix, FMatrix& ProjectionMatrix, FMatrix& ViewProjectionMatrix)
```

Returns the View Matrix, Projection Matrix and the View x Projection Matrix for a given view

**Parameters**

DesiredView
FMinimalViewInfo

FMinimalViewInfo struct for a camera.

ViewMatrix
FMatrix&

(out) Corresponding View Matrix

ProjectionMatrix
FMatrix&

(out) Corresponding Projection Matrix

ViewProjectionMatrix
FMatrix&

(out) Corresponding View x Projection Matrix

DeprojectScreenToWorld
static bool Gameplay::DeprojectScreenToWorld(
const 	APlayerController 	Player,
	FVector2D 	ScreenPosition,
	FVector& 	WorldPosition,
	FVector& 	WorldDirection
	)

Transforms the given 2D screen space coordinate into a 3D world-space point and direction.

**Parameters**

Player
const APlayerController

Deproject using this player's view.

ScreenPosition
FVector2D

2D screen space to deproject.

WorldPosition
FVector&

(out) Corresponding 3D position in world space.

WorldDirection
FVector&

(out) World space direction vector away from the camera at the given 2d point.

ProjectWorldToScreen
static bool Gameplay::ProjectWorldToScreen(

const 	APlayerController 	Player,
	FVector 	WorldPosition,
	FVector2D& 	ScreenPosition,
	bool 	bPlayerViewportRelative	 = 	false

)

Transforms the given 3D world-space point into a its 2D screen space coordinate.

**Parameters**

Player
const APlayerController

Project using this player's view.

WorldPosition
FVector

World position to project.

ScreenPosition
FVector2D&

(out) Corresponding 2D position in screen space

bPlayerViewportRelative
bool

Should this be relative to the player viewport subregion (useful when using player attached widgets in split screen)

PlayWorldCameraShake
static void Gameplay::PlayWorldCameraShake(

TSubclassOf<UCameraShakeBase> 	Shake,
FVector 	Epicenter,
float32 	InnerRadius,
float32 	OuterRadius,
float32 	Falloff	 = 	1.000000,
bool 	bOrientShakeTowardsEpicenter	 = 	false

)

Plays an in-world camera shake that affects all nearby local players, with distance-based attenuation. Does not replicate.

**Parameters**

WorldContextObject

Object that we can obtain a world context from

Shake
TSubclassOf<UCameraShakeBase>

Camera shake asset to use

Epicenter
FVector

location to place the effect in world space

InnerRadius
float32

Cameras inside this radius are ignored

OuterRadius
float32

Cameras outside of InnerRadius and inside this are effected

Falloff
float32

Affects falloff of effect as it nears OuterRadius

bOrientShakeTowardsEpicenter
bool

Changes the rotation of shake to point towards epicenter instead of forward

---

## COLLISION

### GetActorArrayBounds

```
static void Gameplay::GetActorArrayBounds(TArray<AActor> Actors, bool bOnlyCollidingComponents, FVector& Center, FVector& BoxExtent)
```

Bind the bounds of an array of Actors

BreakHitResult

### static void Gameplay::BreakHitResult

```
static void Gameplay::BreakHitResult(FHitResult Hit, bool& bBlockingHit, bool& bInitialOverlap, float32& Time, float32& Distance, FVector& Location, FVector& ImpactPoint, FVector& Normal, FVector& ImpactNormal, UPhysicalMaterial& PhysMat, AActor& HitActor, UPrimitiveComponent& HitComponent, FName& HitBoneName, FName& BoneName, int& HitItem, int& ElementIndex, int& FaceIndex, FVector& TraceStart, FVector& TraceEnd)
```

Extracts data from a HitResult.

**Parameters**

Hit
FHitResult

The source HitResult.

bBlockingHit
bool&

True if there was a blocking hit, false otherwise.

bInitialOverlap
bool&

True if the hit started in an initial overlap. In this case some other values should be interpreted differently. Time will be 0, ImpactPoint will equal Location, and normals will be equal and indicate a depenetration vector.

Time
float32&

'Time' of impact along trace direction ranging from [0.0 to 1.0) if there is a hit, indicating time between start and end. Equals 1.0 if there is no hit.

Distance
float32&

The distance from the TraceStart to the Location in world space. This value is 0 if there was an initial overlap (trace started inside another colliding object).

Location
FVector&

Location of the hit in world space. If this was a swept shape test, this is the location where we can place the shape in the world where it will not penetrate.

ImpactPoint
FVector&

Location of the actual contact point of the trace shape with the surface of the hit object. Equal to Location in the case of an initial overlap.

Normal
FVector&

Normal of the hit in world space, for the object that was swept (e.g. for a sphere trace this points towards the sphere's center). Equal to ImpactNormal for line tests.

ImpactNormal
FVector&

Normal of the hit in world space, for the object that was hit by the sweep.

PhysMat
UPhysicalMaterial&

Physical material that was hit. Must set bReturnPhysicalMaterial to true in the query params for this to be returned.

HitActor
AActor&

Actor hit by the trace.

HitComponent
UPrimitiveComponent&

PrimitiveComponent hit by the trace.

HitBoneName
FName&

Name of the bone hit (valid only if we hit a skeletal mesh).

BoneName
FName&

Name of the trace bone hit (valid only if we hit a skeletal mesh).

HitItem
int&

Primitive-specific data recording which item in the primitive was hit

ElementIndex
int&

If colliding with a primitive with multiple parts, index of the part that was hit.

FaceIndex
int&

If colliding with trimesh or landscape, index of face that was hit.

GetSurfaceType
static EPhysicalSurface Gameplay::GetSurfaceType(
FHitResult 	Hit
	)

Returns the EPhysicalSurface type of the given Hit.  To edit surface type for your project, use ProjectSettings/Physics/PhysicalSurface section

FindCollisionUV
static bool Gameplay::FindCollisionUV(
FHitResult 	Hit,
int 	UVChannel,
FVector2D& 	UV
	)

Try and find the UV for a collision impact. Note this ONLY works if 'Support UV From Hit Results' is enabled in Physics Settings.

MakeHitResult
static FHitResult Gameplay::MakeHitResult(
bool 	bBlockingHit,
bool 	bInitialOverlap,
float32 	Time,
float32 	Distance,
FVector 	Location,
FVector 	ImpactPoint,
FVector 	Normal,
FVector 	ImpactNormal,
UPhysicalMaterial 	PhysMat,
AActor 	HitActor,
UPrimitiveComponent 	HitComponent,
FName 	HitBoneName,
FName 	BoneName,
int 	HitItem,
int 	ElementIndex,
int 	FaceIndex,
FVector 	TraceStart,
FVector 	TraceEnd
	)

Create a HitResult struct

**Parameters**

bBlockingHit
bool

True if there was a blocking hit, false otherwise.

bInitialOverlap
bool

True if the hit started in an initial overlap. In this case some other values should be interpreted differently. Time will be 0, ImpactPoint will equal Location, and normals will be equal and indicate a depenetration vector.

Time
float32

'Time' of impact along trace direction ranging from [0.0 to 1.0) if there is a hit, indicating time between start and end. Equals 1.0 if there is no hit.

Distance
float32

The distance from the TraceStart to the Location in world space. This value is 0 if there was an initial overlap (trace started inside another colliding object).

Location
FVector

Location of the hit in world space. If this was a swept shape test, this is the location where we can place the shape in the world where it will not penetrate.

ImpactPoint
FVector

Location of the actual contact point of the trace shape with the surface of the hit object. Equal to Location in the case of an initial overlap.

Normal
FVector

Normal of the hit in world space, for the object that was swept (e.g. for a sphere trace this points towards the sphere's center). Equal to ImpactNormal for line tests.

ImpactNormal
FVector

Normal of the hit in world space, for the object that was hit by the sweep.

PhysMat
UPhysicalMaterial

Physical material that was hit. Must set bReturnPhysicalMaterial to true in the query params for this to be returned.

HitActor
AActor

Actor hit by the trace.

HitComponent
UPrimitiveComponent

PrimitiveComponent hit by the trace.

HitBoneName
FName

Name of the bone hit (valid only if we hit a skeletal mesh).

BoneName
FName

Name of the trace bone hit (valid only if we hit a skeletal mesh).

HitItem
int

Primitive-specific data recording which item in the primitive was hit

ElementIndex
int

If colliding with a primitive with multiple parts, index of the part that was hit.

FaceIndex
int

If colliding with trimesh or landscape, index of face that was hit.

---

## EFFECTS

### SpawnEmitterAttached

```
static UParticleSystemComponent Gameplay::SpawnEmitterAttached(
```

UParticleSystem 	EmitterTemplate,

### USceneComponent 	AttachToComponent,

```
USceneComponent AttachToComponent, FName AttachPointName = NAME_None, FVector Location = FVector(),
```

FRotator 	Rotation	 = 	FRotator ( ),

### FVector 	Scale	 = 	FVector

```
FVector Scale = FVector(1.000000, 1.000000, 1.000000), EAttachLocation LocationType = EAttachLocation :: KeepRelativeOffset,
```

bool 	bAutoDestroy	 = 	true,

EPSCPoolMethod 	PoolingMethod	 = 	EPSCPoolMethod :: None,

bool 	bAutoActivate	 = 	true

)

Plays the specified effect attached to and following the specified component. The system will go away when the effect is complete. Does not replicate.

**Parameters**

EmitterTemplate
UParticleSystem

particle system to create

AttachPointName
FName

Optional named point within the AttachComponent to spawn the emitter at

Location
FVector

Depending on the value of LocationType this is either a relative offset from the attach component/point or an absolute world location that will be translated to a relative offset (if LocationType is KeepWorldPosition).

Rotation
FRotator

Depending on the value of LocationType this is either a relative offset from the attach component/point or an absolute world rotation that will be translated to a relative offset (if LocationType is KeepWorldPosition).

Scale
FVector

Depending on the value of LocationType this is either a relative scale from the attach component or an absolute world scale that will be translated to a relative scale (if LocationType is KeepWorldPosition).

LocationType
EAttachLocation

Specifies whether Location is a relative offset or an absolute world position

bAutoDestroy
bool

Whether the component will automatically be destroyed when the particle system completes playing or whether it can be reactivated

PoolingMethod
EPSCPoolMethod

Method used for pooling this component. Defaults to none.

bAutoActivate
bool

Whether the component will be automatically activated on creation.

SpawnEmitterAtLocation
static UParticleSystemComponent Gameplay::SpawnEmitterAtLocation(

UParticleSystem 	EmitterTemplate,
FVector 	Location,
FRotator 	Rotation	 = 	FRotator ( ),
FVector 	Scale	 = 	FVector ( 1.000000 , 1.000000 , 1.000000 ),
bool 	bAutoDestroy	 = 	true,
EPSCPoolMethod 	PoolingMethod	 = 	EPSCPoolMethod :: None,
bool 	bAutoActivateSystem	 = 	true

)

Plays the specified effect at the given location and rotation, fire and forget. The system will go away when the effect is complete. Does not replicate.

**Parameters**

WorldContextObject

Object that we can obtain a world context from

EmitterTemplate
UParticleSystem

particle system to create

Location
FVector

location to place the effect in world space

Rotation
FRotator

rotation to place the effect in world space

Scale
FVector

scale to create the effect at

bAutoDestroy
bool

Whether the component will automatically be destroyed when the particle system completes playing or whether it can be reactivated

PoolingMethod
EPSCPoolMethod

Method used for pooling this component. Defaults to none.

---

## FOLIAGE

### GrassOverlappingSphereCount

```
static int Gameplay::GrassOverlappingSphereCount(const UStaticMesh StaticMesh, FVector CenterPosition, float32 Radius)
```

Counts how many grass foliage instances overlap a given sphere.

**Parameters**

CenterPosition
FVector

The center position of the sphere.

Radius
float32

The radius of the sphere.

**Returns**

Number of foliage instances with their mesh set to Mesh that overlap the sphere.

---

## FORCEFEEDBACK

### SpawnForceFeedbackAtLocation

```
static UForceFeedbackComponent Gameplay::SpawnForceFeedbackAtLocation(
```

UForceFeedbackEffect 	ForceFeedbackEffect,

### FVector 	Location,

```
FVector Location, FRotator Rotation = FRotator(),
```

bool 	bLooping	 = 	false,

float32 	IntensityMultiplier	 = 	1.000000,

float32 	StartTime	 = 	0.000000,

UForceFeedbackAttenuation 	AttenuationSettings	 = 	nullptr,

bool 	bAutoDestroy	 = 	true

)

Plays a force feedback effect at the given location. This is a fire and forget effect and does not travel with any actor. Replication is also not handled at this point.

**Parameters**

ForceFeedbackEffect
UForceFeedbackEffect

effect to play

Location
FVector

World position to center the effect at

Rotation
FRotator

World rotation to center the effect at

IntensityMultiplier
float32

Intensity multiplier

StartTime
float32

How far in to the feedback effect to begin playback at

AttenuationSettings
UForceFeedbackAttenuation

Override attenuation settings package to play effect with

bAutoDestroy
bool

Whether the returned force feedback component will be automatically cleaned up when the feedback pattern finishes (by completing or stopping) or whether it can be reactivated

**Returns**

Force Feedback Component to manipulate the playing feedback effect with

SpawnForceFeedbackAttached
static UForceFeedbackComponent Gameplay::SpawnForceFeedbackAttached(

UForceFeedbackEffect 	ForceFeedbackEffect,
USceneComponent 	AttachToComponent,
FName 	AttachPointName	 = 	NAME_None,
FVector 	Location	 = 	FVector ( ),
FRotator 	Rotation	 = 	FRotator ( ),
EAttachLocation 	LocationType	 = 	EAttachLocation :: KeepRelativeOffset,
bool 	bStopWhenAttachedToDestroyed	 = 	false,
bool 	bLooping	 = 	false,
float32 	IntensityMultiplier	 = 	1.000000,
float32 	StartTime	 = 	0.000000,
UForceFeedbackAttenuation 	AttenuationSettings	 = 	nullptr,
bool 	bAutoDestroy	 = 	true

)

Plays a force feedback effect attached to and following the specified component. This is a fire and forget effect. Replication is also not handled at this point.

**Parameters**

ForceFeedbackEffect
UForceFeedbackEffect

effect to play

AttachPointName
FName

Optional named point within the AttachComponent to attach to

Location
FVector

Depending on the value of Location Type this is either a relative offset from the attach component/point or an absolute world position that will be translated to a relative offset

Rotation
FRotator

Depending on the value of Location Type this is either a relative offset from the attach component/point or an absolute world rotation that will be translated to a relative offset

LocationType
EAttachLocation

Specifies whether Location is a relative offset or an absolute world position

bStopWhenAttachedToDestroyed
bool

Specifies whether the feedback effect should stop playing when the owner of the attach to component is destroyed.

IntensityMultiplier
float32

Intensity multiplier

StartTime
float32

How far in to the feedback effect to begin playback at

AttenuationSettings
UForceFeedbackAttenuation

Override attenuation settings package to play effect with

bAutoDestroy
bool

Whether the returned force feedback component will be automatically cleaned up when the feedback patern finishes (by completing or stopping) or whether it can be reactivated

**Returns**

Force Feedback Component to manipulate the playing feedback effect with

---

## GAME

### LoadStreamLevel

```
static void Gameplay::LoadStreamLevel(FName LevelName, bool bMakeVisibleAfterLoad, bool bShouldBlockOnLoad, FLatentActionInfo LatentInfo)
```

Stream the level (by Name); Calling again before it finishes has no effect

### LoadStreamLevelBySoftObjectPtr

```
static void Gameplay::LoadStreamLevelBySoftObjectPtr(
```

const 	TSoftObjectPtr<UWorld> 	Level,

### bool 	bMakeVisibleAfterLoad,

```
bool 	bMakeVisibleAfterLoad, 	bool 	bShouldBlockOnLoad, 	FLatentActionInfo 	LatentInfo
```

)

### Stream the level

```
Stream the level(by Object Reference); Calling again before it finishes has no effect
```

FlushLevelStreaming

### static void Gameplay::FlushLevelStreaming

```
static void Gameplay::FlushLevelStreaming()
```

Flushes level streaming in blocking fashion and returns when all sub-levels are loaded / visible / hidden

### OpenLevel

```
static void Gameplay::OpenLevel(FName LevelName, bool bAbsolute = true, FString Options = "")
```

Travel to another level

**Parameters**

LevelName
FName

the level to open

bAbsolute
bool

if true options are reset, if false options are carried over from current level

Options
FString

a string of options to use for the travel URL

OpenLevelBySoftObjectPtr
static void Gameplay::OpenLevelBySoftObjectPtr(
const 	TSoftObjectPtr<UWorld> 	Level,
	bool 	bAbsolute	 = 	true,
	FString 	Options	 = 	""
	)

Travel to another level

**Parameters**

Level
const TSoftObjectPtr<UWorld>

the level to open

bAbsolute
bool

if true options are reset, if false options are carried over from current level

Options
FString

a string of options to use for the travel URL

GetNumLocalPlayerControllers
static int Gameplay::GetNumLocalPlayerControllers()

Returns the number of fully initialized local players, this will be 0 on dedicated servers.  Indexes up to this can be used as PlayerIndex parameters for the following functions, and you are guaranteed to get a local player controller.

GetNumPlayerControllers
static int Gameplay::GetNumPlayerControllers()

Returns the total number of available player controllers, including remote players when called on a server.  Indexes up to this can be used as PlayerIndex parameters for the following functions.

GetNumPlayerStates
static int Gameplay::GetNumPlayerStates()

Returns the number of active player states, there is one player state for every connected player even if they are a remote client.  Indexes up to this can be use as PlayerStateIndex parameters for other functions.

GetPlatformName
static FString Gameplay::GetPlatformName()

Returns the string name of the current platform, to perform different behavior based on platform.  (Platform names include Windows, Mac, IOS, Android, PS4, XboxOne, Linux)

Blueprint_PredictProjectilePath_Advanced
static bool Gameplay::Blueprint_PredictProjectilePath_Advanced(

FPredictProjectilePathParams 	PredictParams,
FPredictProjectilePathResult& 	PredictResult

)

Predict the arc of a virtual projectile affected by gravity with collision checks along the arc.  Returns true if it hit something.

**Parameters**

PredictParams
FPredictProjectilePathParams

Input params to the trace (start location, velocity, time to simulate, etc).

PredictResult
FPredictProjectilePathResult&

Output result of the trace (Hit result, array of location/velocity/times for each trace step, etc).

**Returns**

True if hit something along the path (if tracing with collision).

GetPlayerCameraManager
static APlayerCameraManager Gameplay::GetPlayerCameraManager(
int 	PlayerIndex
	)

Returns the camera manager for the Player Controller at the specified player index.  This will not include remote clients with no player controller.

**Parameters**

PlayerIndex
int

Index in the player controller list, starting first with local players and then available remote ones

GetPlayerCharacter
static ACharacter Gameplay::GetPlayerCharacter(
int 	PlayerIndex
	)

Returns the pawn for the player controller at the specified player index, will return null if the pawn is not a character.  This will not include characters of remote clients with no available player controller, you can iterate the PlayerStates list for that.

**Parameters**

PlayerIndex
int

Index in the player controller list, starting first with local players and then available remote ones

GetPlayerController
static APlayerController Gameplay::GetPlayerController(
int 	PlayerIndex
	)

Returns the player controller found while iterating through the local and available remote player controllers.  On a network client, this will only include local players as remote player controllers are not available.  The index will be consistent as long as no new players join or leave, but it will not be the same across different clients and servers.

**Parameters**

PlayerIndex
int

Index in the player controller list, starting first with local players and then available remote ones

GetPlayerControllerFromID
static APlayerController Gameplay::GetPlayerControllerFromID(
int 	ControllerID
	)

Returns the player controller with the specified physical controller ID. This only works for local players.

**Parameters**

ControllerID
int

Physical controller ID, the same value returned from Get Player Controller ID

GetPlayerControllerID
static int Gameplay::GetPlayerControllerID(
APlayerController 	Player
	)

Gets what physical controller ID a player is using. This only works for local player controllers.

**Parameters**

Player
APlayerController

The player controller of the player to get the ID of

**Returns**

The ID of the passed in player. -1 if there is no physical controller assigned to the passed in player

GetPlayerPawn
static APawn Gameplay::GetPlayerPawn(
int 	PlayerIndex
	)

Returns the pawn for the player controller at the specified player index.  This will not include pawns of remote clients with no available player controller, you can use the player states list for that.

**Parameters**

PlayerIndex
int

Index in the player controller list, starting first with local players and then available remote ones

GetPlayerState
static APlayerState Gameplay::GetPlayerState(
int 	PlayerStateIndex
	)

Returns the player state at the given index in the game state's PlayerArray.  This will work on both the client and server and the index will be consistent.  After initial replication, all clients and the server will have access to PlayerStates for all connected players.

**Parameters**

PlayerStateIndex
int

Index into the game state's PlayerArray

GetStreamingLevel
static ULevelStreaming Gameplay::GetStreamingLevel(
FName 	PackageName
	)

Returns level streaming object with specified level package name

GetCurrentLevelName
static FString Gameplay::GetCurrentLevelName(
bool 	bRemovePrefixString	 = 	true
	)

Get the name of the currently-open level.

**Parameters**

bRemovePrefixString
bool

remove any streaming- or editor- added prefixes from the level name.

EnableLiveStreaming
static void Gameplay::EnableLiveStreaming(
bool 	Enable
	)

Toggle live DVR streaming.

**Parameters**

Enable
bool

If true enable streaming, otherwise disable.

CreatePlayer
static APlayerController Gameplay::CreatePlayer(
int 	ControllerId	 = 	- 1,
bool 	bSpawnPlayerController	 = 	true
	)

Create a new local player for this game, for cases like local multiplayer.

**Parameters**

ControllerId
int

The ID of the physical controller that the should control the newly created player. A value of -1 specifies to use the next available ID

bSpawnPlayerController
bool

Whether a player controller should be spawned immediately for this player. If false a player controller will not be created automatically until transition to the next map.

**Returns**

The created player controller if one is created.

GetWorldOriginLocation
static FIntVector Gameplay::GetWorldOriginLocation()

Returns world origin current location.

GetGameInstance
static UGameInstance Gameplay::GetGameInstance()

Returns the game instance object

IsGamePaused
static bool Gameplay::IsGamePaused()

Returns the game's paused state

**Returns**

Whether the game is currently paused or not

UnloadStreamLevelBySoftObjectPtr
static void Gameplay::UnloadStreamLevelBySoftObjectPtr(

const 	TSoftObjectPtr<UWorld> 	Level,
	FLatentActionInfo 	LatentInfo,
	bool 	bShouldBlockOnUnload

)

Unload a streamed in level (by Object Reference)

Blueprint_PredictProjectilePath_ByObjectType
static bool Gameplay::Blueprint_PredictProjectilePath_ByObjectType(

FHitResult& 	OutHit,
TArray<FVector>& 	OutPathPositions,
FVector& 	OutLastTraceDestination,
FVector 	StartPos,
FVector 	LaunchVelocity,
bool 	bTracePath,
float32 	ProjectileRadius,
TArray<EObjectTypeQuery> 	ObjectTypes,
bool 	bTraceComplex,
TArray<AActor> 	ActorsToIgnore,
EDrawDebugTrace 	DrawDebugType,
float32 	DrawDebugTime,
float32 	SimFrequency	 = 	15.000000,
float32 	MaxSimTime	 = 	2.000000,
float32 	OverrideGravityZ	 = 	0.000000

)

Predict the arc of a virtual projectile affected by gravity with collision checks along the arc. Returns a list of positions of the simulated arc and the destination reached by the simulation.  Returns true if it hit something.

**Parameters**

OutHit
FHitResult&

Predicted hit result, if the projectile will hit something

OutPathPositions
TArray<FVector>&

Predicted projectile path. Ordered series of positions from StartPos to the end. Includes location at point of impact if it hit something.

OutLastTraceDestination
FVector&

Goal position of the final trace it did. Will not be in the path if there is a hit.

StartPos
FVector

First start trace location

LaunchVelocity
FVector

Velocity the "virtual projectile" is launched at

bTracePath
bool

Trace along the entire path to look for blocking hits

ProjectileRadius
float32

Radius of the virtual projectile to sweep against the environment

ObjectTypes
TArray<EObjectTypeQuery>

ObjectTypes to trace against, if bTracePath is true.

bTraceComplex
bool

Use TraceComplex (trace against triangles not primitives)

ActorsToIgnore
TArray<AActor>

Actors to exclude from the traces

DrawDebugType
EDrawDebugTrace

Debug type (one-frame, duration, persistent)

DrawDebugTime
float32

Duration of debug lines (only relevant for DrawDebugType::Duration)

SimFrequency
float32

Determines size of each sub-step in the simulation (chopping up MaxSimTime)

MaxSimTime
float32

Maximum simulation time for the virtual projectile.

OverrideGravityZ
float32

Optional override of Gravity (if 0, uses WorldGravityZ)

**Returns**

True if hit something along the path if tracing for collision.

CancelAsyncLoading
static void Gameplay::CancelAsyncLoading()

Cancels all currently queued streaming packages

BlueprintSuggestProjectileVelocity
static bool Gameplay::BlueprintSuggestProjectileVelocity(

FVector& 	TossVelocity,
FVector 	StartLocation,
FVector 	EndLocation,
float32 	LaunchSpeed,
float32 	OverrideGravityZ,
ESuggestProjVelocityTraceOption 	TraceOption,
float32 	CollisionRadius,
bool 	bFavorHighArc,
bool 	bDrawDebug

)

Calculates an launch velocity for a projectile to hit a specified point.

**Parameters**

TossVelocity
FVector&

(output) Result launch velocity.

StartLocation
FVector

Intended launch location

EndLocation
FVector

Desired landing location

LaunchSpeed
float32

Desired launch speed

OverrideGravityZ
float32

Optional gravity override.  0 means "do not override".

TraceOption
ESuggestProjVelocityTraceOption

Controls whether or not to validate a clear path by tracing along the calculated arc

CollisionRadius
float32

Radius of the projectile (assumed spherical), used when tracing

bFavorHighArc
bool

If true and there are 2 valid solutions, will return the higher arc.  If false, will favor the lower arc.

bDrawDebug
bool

When true, a debug arc is drawn (red for an invalid arc, green for a valid arc)

**Returns**

Returns false if there is no valid solution or the valid solutions are blocked.  Returns true otherwise.

Blueprint_PredictProjectilePath_ByTraceChannel
static bool Gameplay::Blueprint_PredictProjectilePath_ByTraceChannel(

FHitResult& 	OutHit,
TArray<FVector>& 	OutPathPositions,
FVector& 	OutLastTraceDestination,
FVector 	StartPos,
FVector 	LaunchVelocity,
bool 	bTracePath,
float32 	ProjectileRadius,
ECollisionChannel 	TraceChannel,
bool 	bTraceComplex,
TArray<AActor> 	ActorsToIgnore,
EDrawDebugTrace 	DrawDebugType,
float32 	DrawDebugTime,
float32 	SimFrequency	 = 	15.000000,
float32 	MaxSimTime	 = 	2.000000,
float32 	OverrideGravityZ	 = 	0.000000

)

Predict the arc of a virtual projectile affected by gravity with collision checks along the arc. Returns a list of positions of the simulated arc and the destination reached by the simulation.  Returns true if it hit something (if tracing with collision).

**Parameters**

OutHit
FHitResult&

Predicted hit result, if the projectile will hit something

OutPathPositions
TArray<FVector>&

Predicted projectile path. Ordered series of positions from StartPos to the end. Includes location at point of impact if it hit something.

OutLastTraceDestination
FVector&

Goal position of the final trace it did. Will not be in the path if there is a hit.

StartPos
FVector

First start trace location

LaunchVelocity
FVector

Velocity the "virtual projectile" is launched at

bTracePath
bool

Trace along the entire path to look for blocking hits

ProjectileRadius
float32

Radius of the virtual projectile to sweep against the environment

TraceChannel
ECollisionChannel

TraceChannel to trace against, if bTracePath is true.

bTraceComplex
bool

Use TraceComplex (trace against triangles not primitives)

ActorsToIgnore
TArray<AActor>

Actors to exclude from the traces

DrawDebugType
EDrawDebugTrace

Debug type (one-frame, duration, persistent)

DrawDebugTime
float32

Duration of debug lines (only relevant for DrawDebugType::Duration)

SimFrequency
float32

Determines size of each sub-step in the simulation (chopping up MaxSimTime)

MaxSimTime
float32

Maximum simulation time for the virtual projectile.

OverrideGravityZ
float32

Optional override of Gravity (if 0, uses WorldGravityZ)

**Returns**

True if hit something along the path (if tracing with collision).

GetGameMode
static AGameModeBase Gameplay::GetGameMode()

Returns the current GameModeBase or Null if it can't be retrieved, such as on the client

GetGameState
static AGameStateBase Gameplay::GetGameState()

Returns the current GameStateBase or Null if it can't be retrieved

GetPlayerStateFromUniqueNetId
static APlayerState Gameplay::GetPlayerStateFromUniqueNetId(
FUniqueNetIdRepl 	UniqueId
	)

Returns the player state that matches the passed in online id, or null for an invalid one.  This will work on both the client and server for local and remote players.

**Parameters**

UniqueId
FUniqueNetIdRepl

The player's unique net/online id

RebaseLocalOriginOntoZero
static FVector Gameplay::RebaseLocalOriginOntoZero(
FVector 	WorldLocation
	)

Returns origin based position for local world location.

SetWorldOriginLocation
static void Gameplay::SetWorldOriginLocation(
FIntVector 	NewLocation
	)

Requests a new location for a world origin.

RebaseZeroOriginOntoLocal
static FVector Gameplay::RebaseZeroOriginOntoLocal(
FVector 	WorldLocation
	)

Returns local location for origin based position.

SuggestProjectileVelocity_CustomArc
static bool Gameplay::SuggestProjectileVelocity_CustomArc(

FVector& 	OutLaunchVelocity,
FVector 	StartPos,
FVector 	EndPos,
float32 	OverrideGravityZ	 = 	0.000000,
float32 	ArcParam	 = 	0.500000

)

Returns the launch velocity needed for a projectile at rest at StartPos to land on EndPos.  Assumes a medium arc (e.g. 45 deg on level ground). Projectile velocity is variable and unconstrained.  Does no tracing.

**Parameters**

OutLaunchVelocity
FVector&

Returns the launch velocity required to reach the EndPos

StartPos
FVector

Start position of the simulation

EndPos
FVector

Desired end location for the simulation

OverrideGravityZ
float32

Optional override of WorldGravityZ

ArcParam
float32

Change height of arc between 0.0-1.0 where 0.5 is the default medium arc, 0 is up, and 1 is directly toward EndPos.

SetPlayerControllerID
static void Gameplay::SetPlayerControllerID(
APlayerController 	Player,
int 	ControllerId
	)

Sets what physical controller ID a player should be using. This only works for local player controllers.

**Parameters**

Player
APlayerController

The player controller of the player to change the controller ID of

ControllerId
int

The controller ID to assign to this player

UnloadStreamLevel
static void Gameplay::UnloadStreamLevel(
FName 	LevelName,
FLatentActionInfo 	LatentInfo,
bool 	bShouldBlockOnUnload
	)

Unload a streamed in level (by Name)

RemovePlayer
static void Gameplay::RemovePlayer(
APlayerController 	Player,
bool 	bDestroyPawn
	)

Removes a local player from this game.

**Parameters**

Player
APlayerController

The player controller of the player to be removed

bDestroyPawn
bool

Whether the controlled pawn should be deleted as well

SetGamePaused
static bool Gameplay::SetGamePaused(
bool 	bPaused
	)

Sets the game's paused state

**Parameters**

bPaused
bool

Whether the game should be paused or not

**Returns**

Whether the game was successfully paused/unpaused

GAME OPTIONS
GetIntOption
static int Gameplay::GetIntOption(
FString 	Options,
FString 	Key,
int 	DefaultValue
	)

Find an option in the options string and return it as an integer.

**Parameters**

Options
FString

The string containing the options.

Key
FString

The key to find the value of in Options.

**Returns**

The value associated with Key as an integer if Key found in Options string, otherwise DefaultValue.

GetKeyValue
static void Gameplay::GetKeyValue(
FString 	Pair,
FString& 	Key,
FString& 	Value
	)

Break up a key=value pair into its key and value.

**Parameters**

Pair
FString

The string containing a pair to split apart.

Key
FString&

(out) Key portion of Pair. If no = in string will be the same as Pair.

Value
FString&

(out) Value portion of Pair. If no = in string will be empty.

HasOption
static bool Gameplay::HasOption(
FString 	Options,
FString 	InKey
	)

Returns whether a key exists in an options string.

**Parameters**

Options
FString

The string containing the options.

**Returns**

Whether Key was found in Options.

ParseOption
static FString Gameplay::ParseOption(
FString 	Options,
FString 	Key
	)

Find an option in the options string and return it.

**Parameters**

Options
FString

The string containing the options.

Key
FString

The key to find the value of in Options.

**Returns**

The value associated with Key if Key found in Options string.

---

## GAME \| DAMAGE

### ApplyDamage

```
static float32 Gameplay::ApplyDamage(AActor DamagedActor, float32 BaseDamage, AController EventInstigator, AActor DamageCauser, TSubclassOf<UDamageType> DamageTypeClass)
```

Hurts the specified actor with generic damage.

**Parameters**

DamagedActor
AActor

Actor that will be damaged.

BaseDamage
float32

The base damage to apply.

EventInstigator
AController

Controller that was responsible for causing this damage (e.g. player who shot the weapon)

DamageCauser
AActor

Actor that actually caused the damage (e.g. the grenade that exploded)

DamageTypeClass
TSubclassOf<UDamageType>

Class that describes the damage that was done.

**Returns**

Actual damage the ended up being applied to the actor.

ApplyRadialDamage
static bool Gameplay::ApplyRadialDamage(

float32 	BaseDamage,
FVector 	Origin,
float32 	DamageRadius,
TSubclassOf<UDamageType> 	DamageTypeClass,
TArray<AActor> 	IgnoreActors,
AActor 	DamageCauser	 = 	nullptr,
AController 	InstigatedByController	 = 	nullptr,
bool 	bDoFullDamage	 = 	false,
ECollisionChannel 	DamagePreventionChannel	 = 	ECollisionChannel :: ECC_Visibility

)

Hurt locally authoritative actors within the radius. Will only hit components that block the Visibility channel.

**Parameters**

BaseDamage
float32

The base damage to apply, i.e. the damage at the origin.

Origin
FVector

Epicenter of the damage area.

DamageRadius
float32

Radius of the damage area, from Origin

DamageTypeClass
TSubclassOf<UDamageType>

Class that describes the damage that was done.

IgnoreActors
TArray<AActor>

List of Actors to ignore

DamageCauser
AActor

Actor that actually caused the damage (e.g. the grenade that exploded).  This actor will not be damaged and it will not block damage.

InstigatedByController
AController

Controller that was responsible for causing this damage (e.g. player who threw the grenade)

DamagePreventionChannel
ECollisionChannel

Damage will not be applied to victim if there is something between the origin and the victim which blocks traces on this channel

**Returns**

true if damage was applied to at least one actor.

ApplyPointDamage
static float32 Gameplay::ApplyPointDamage(
AActor 	DamagedActor,
float32 	BaseDamage,
FVector 	HitFromDirection,
FHitResult 	HitInfo,
AController 	EventInstigator,
AActor 	DamageCauser,
TSubclassOf<UDamageType> 	DamageTypeClass
	)

Hurts the specified actor with the specified impact.

**Parameters**

DamagedActor
AActor

Actor that will be damaged.

BaseDamage
float32

The base damage to apply.

HitFromDirection
FVector

Direction the hit came FROM

HitInfo
FHitResult

Collision or trace result that describes the hit

EventInstigator
AController

Controller that was responsible for causing this damage (e.g. player who shot the weapon)

DamageCauser
AActor

Actor that actually caused the damage (e.g. the grenade that exploded)

DamageTypeClass
TSubclassOf<UDamageType>

Class that describes the damage that was done.

**Returns**

Actual damage the ended up being applied to the actor.

ApplyRadialDamageWithFalloff
static bool Gameplay::ApplyRadialDamageWithFalloff(

float32 	BaseDamage,
float32 	MinimumDamage,
FVector 	Origin,
float32 	DamageInnerRadius,
float32 	DamageOuterRadius,
float32 	DamageFalloff,
TSubclassOf<UDamageType> 	DamageTypeClass,
TArray<AActor> 	IgnoreActors,
AActor 	DamageCauser	 = 	nullptr,
AController 	InstigatedByController	 = 	nullptr,
ECollisionChannel 	DamagePreventionChannel	 = 	ECollisionChannel :: ECC_Visibility

)

Hurt locally authoritative actors within the radius. Will only hit components that block the Visibility channel.

**Parameters**

BaseDamage
float32

The base damage to apply, i.e. the damage at the origin.

Origin
FVector

Epicenter of the damage area.

DamageInnerRadius
float32

Radius of the full damage area, from Origin

DamageOuterRadius
float32

Radius of the minimum damage area, from Origin

DamageFalloff
float32

Falloff exponent of damage from DamageInnerRadius to DamageOuterRadius

DamageTypeClass
TSubclassOf<UDamageType>

Class that describes the damage that was done.

IgnoreActors
TArray<AActor>

List of Actors to ignore

DamageCauser
AActor

Actor that actually caused the damage (e.g. the grenade that exploded)

InstigatedByController
AController

Controller that was responsible for causing this damage (e.g. player who threw the grenade)

DamagePreventionChannel
ECollisionChannel

Damage will not be applied to victim if there is something between the origin and the victim which blocks traces on this channel

**Returns**

true if damage was applied to at least one actor.

---

## RENDERING

### SetEnableWorldRendering

```
static void Gameplay::SetEnableWorldRendering(bool bEnable)
```

Enabled rendering of the world

**Parameters**

bEnable
bool

Whether the world should be rendered or not

GetEnableWorldRendering
static bool Gameplay::GetEnableWorldRendering()

Returns the world rendering state

**Returns**

Whether the world should be rendered or not

---

## RENDERING \| DECAL

### SpawnDecalAtLocation

```
static UDecalComponent Gameplay::SpawnDecalAtLocation(
```

UMaterialInterface 	DecalMaterial,

### FVector 	DecalSize,

```
FVector DecalSize, FVector Location, FRotator Rotation = FRotator(- 90.000000, 0.000000, 0.000000),
```

float32 	LifeSpan	 = 	0.000000

)

Spawns a decal at the given location and rotation, fire and forget. Does not replicate.

**Parameters**

DecalMaterial
UMaterialInterface

decal's material

DecalSize
FVector

size of decal

Location
FVector

location to place the decal in world space

Rotation
FRotator

rotation to place the decal in world space

LifeSpan
float32

destroy decal component after time runs out (0 = infinite)

SpawnDecalAttached
static UDecalComponent Gameplay::SpawnDecalAttached(

UMaterialInterface 	DecalMaterial,
FVector 	DecalSize,
USceneComponent 	AttachToComponent,
FName 	AttachPointName	 = 	NAME_None,
FVector 	Location	 = 	FVector ( ),
FRotator 	Rotation	 = 	FRotator ( ),
EAttachLocation 	LocationType	 = 	EAttachLocation :: KeepRelativeOffset,
float32 	LifeSpan	 = 	0.000000

)

Spawns a decal attached to and following the specified component. Does not replicate.

**Parameters**

DecalMaterial
UMaterialInterface

decal's material

DecalSize
FVector

size of decal

AttachPointName
FName

Optional named point within the AttachComponent to spawn the emitter at

Location
FVector

Depending on the value of Location Type this is either a relative offset from the attach component/point or an absolute world position that will be translated to a relative offset

Rotation
FRotator

Depending on the value of LocationType this is either a relative offset from the attach component/point or an absolute world rotation that will be translated to a realative offset

LocationType
EAttachLocation

Specifies whether Location is a relative offset or an absolute world position

LifeSpan
float32

destroy decal component after time runs out (0 = infinite)

---

## SAVEGAME

### SaveGameToSlot

```
static bool Gameplay::SaveGameToSlot(USaveGame SaveGameObject, FString SlotName, int UserIndex)
```

Save the contents of the SaveGameObject to a platform-specific save slot/file.  Note: This will write out all non-transient properties, the SaveGame property flag is not checked

**Parameters**

SaveGameObject
USaveGame

Object that contains data about the save game that we want to write out

SlotName
FString

Name of save game slot to save to.

UserIndex
int

For some platforms, master user index to identify the user doing the saving.

**Returns**

Whether we successfully saved this information

DoesSaveGameExist
static bool Gameplay::DoesSaveGameExist(
FString 	SlotName,
int 	UserIndex
	)

See if a save game exists with the specified name.

**Parameters**

SlotName
FString

Name of save game slot.

UserIndex
int

For some platforms, master user index to identify the user doing the saving.

CreateSaveGameObject
static USaveGame Gameplay::CreateSaveGameObject(
TSubclassOf<USaveGame> 	SaveGameClass
	)

Create a new, empty SaveGame object to set data on and then pass to SaveGameToSlot.

**Parameters**

SaveGameClass
TSubclassOf<USaveGame>

Class of SaveGame to create

**Returns**

New SaveGame object to write data to

LoadGameFromSlot
static USaveGame Gameplay::LoadGameFromSlot(
FString 	SlotName,
int 	UserIndex
	)

Load the contents from a given slot.

**Parameters**

SlotName
FString

Name of the save game slot to load from.

UserIndex
int

For some platforms, master user index to identify the user doing the loading.

**Returns**

Object containing loaded game state (nullptr if load fails)

DeleteGameInSlot
static bool Gameplay::DeleteGameInSlot(
FString 	SlotName,
int 	UserIndex
	)

Delete a save game in a particular slot.

**Parameters**

SlotName
FString

Name of save game slot to delete.

UserIndex
int

For some platforms, master user index to identify the user doing the deletion.

**Returns**

True if a file was actually able to be deleted. use DoesSaveGameExist to distinguish between delete failures and failure due to file not existing.

---

## TRANSFORMATION

### GetActorArrayAverageLocation

```
static FVector Gameplay::GetActorArrayAverageLocation(TArray<AActor> Actors)
```

Find the average location (centroid) of an array of Actors

---

## UTILITIES

### GetObjectClass

```
static UClass Gameplay::GetObjectClass(const UObject Object)
```

Returns the class of a passed in Object, will always be valid if Object is not NULL

### HasLaunchOption

```
static bool Gameplay::HasLaunchOption(FString OptionToCheck)
```

Checks the commandline to see if the desired option was specified on the commandline (e.g. -demobuild)

**Returns**

True if the launch option was specified on the commandline, false otherwise

---

## UTILITIES \| TIME

### GetAudioTimeSeconds

```
static float32 Gameplay::GetAudioTimeSeconds()
```

Returns time in seconds since world was brought up for play, IS stopped when game pauses, NOT dilated/clamped.

### GetWorldDeltaSeconds

```
static float32 Gameplay::GetWorldDeltaSeconds()
```

Returns the frame delta time in seconds, adjusted by time dilation.

### GetUnpausedTimeSeconds

```
static float32 Gameplay::GetUnpausedTimeSeconds()
```

Returns time in seconds since world was brought up for play, adjusted by time dilation and IS NOT stopped when game pauses

### GetAccurateRealTime

```
static void Gameplay::GetAccurateRealTime(int& Seconds, float32& PartialSeconds)
```

Returns time in seconds since the application was started. Unlike the other time functions this is accurate to the exact time this function is called instead of set once per frame.

### SetGlobalTimeDilation

```
static void Gameplay::SetGlobalTimeDilation(float32 TimeDilation)
```

Sets the global time dilation.

**Parameters**

TimeDilation
float32

value to set the global time dilation to

GetGlobalTimeDilation
static float32 Gameplay::GetGlobalTimeDilation()

Gets the current global time dilation.

**Returns**

Current time dilation.

GetRealTimeSeconds
static float32 Gameplay::GetRealTimeSeconds()

Returns time in seconds since world was brought up for play, does NOT stop when game pauses, NOT dilated/clamped

GetTimeSeconds
static float32 Gameplay::GetTimeSeconds()

Returns time in seconds since world was brought up for play, adjusted by time dilation and IS stopped when game pauses

---

## VIEWPORT

### SetForceDisableSplitscreen

```
static void Gameplay::SetForceDisableSplitscreen(bool bDisable)
```

Enables split screen

**Parameters**

bDisable
bool

Whether the viewport should split screen between local players or not

IsSplitscreenForceDisabled
static bool Gameplay::IsSplitscreenForceDisabled()

Returns the split screen state

**Returns**

Whether the game viewport is split screen or not

GetViewportMouseCaptureMode
static EMouseCaptureMode Gameplay::GetViewportMouseCaptureMode()

Returns the current viewport mouse capture mode

SetViewportMouseCaptureMode
static void Gameplay::SetViewportMouseCaptureMode(
EMouseCaptureMode 	MouseCaptureMode
	)

Sets the current viewport mouse capture mode

STATIC FUNCTIONS
AsyncSaveGameToSlot
static void Gameplay::AsyncSaveGameToSlot(

USaveGame 	SaveGameObject,
FString 	SlotName,
int 	UserIndex,
FAsyncSaveGameToSlotDynamicDelegate 	Delegate	 = 	FAsyncSaveGameToSlotDynamicDelegate ( )

)

Schedule an async save to a specific slot. UAsyncActionHandleSaveGame::AsyncSaveGameToSlot is the blueprint version of this.  This will do the serialize on the game thread, the platform-specific write on a worker thread, then call the complete delegate on the game thread.  The passed in delegate will be copied to a worker thread so make sure any payload is thread safe to copy by value.

**Parameters**

SaveGameObject
USaveGame

Object that contains data about the save game that we want to write out.

SlotName
FString

Name of the save game slot to load from.

UserIndex
int

For some platforms, master user index to identify the user doing the loading.

AsyncLoadGameFromSlot
static void Gameplay::AsyncLoadGameFromSlot(

FString 	SlotName,
int 	UserIndex,
FAsyncLoadGameFromSlotDynamicDelegate 	Delegate	 = 	FAsyncLoadGameFromSlotDynamicDelegate ( )

)

Schedule an async load of a specific slot. UAsyncActionHandleSaveGame::AsyncLoadGameFromSlot is the blueprint version of this.  This will do the platform-specific read on a worker thread, the serialize and creation on the game thread, and then will call the passed in delegate The passed in delegate will be copied to a worker thread so make sure any payload is thread safe to copy by value

**Parameters**

SlotName
FString

Name of the save game slot to load from.

UserIndex
int

For some platforms, master user index to identify the user doing the loading.
