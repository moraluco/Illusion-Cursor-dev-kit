# USequenceRecorderSettings

**Visibility:** public

## Inheritance

UObject → USequenceRecorderSettings

## Description

AUDIO RECORDING AudioTrackName FText AudioTrackName

Name of the recorded audio track name

AudioSubDirectory FString AudioSubDirectory

The name of the subdirectory audio will be placed in. Leave this empty to place into the same directory as the sequence base path

AudioGain float32 AudioGain

Gain in decibels to apply to recorded audio

RecordAudio EAudioRecordingMode RecordAudio

Whether to record audio alongside animation or not

bReplaceRecordedAudio bool bReplaceRecordedAudio

Replace existing recorded audio with any newly recorded audio

bSplitAudioChannelsIntoSeparateTracks bool bSplitAudioChannelsIntoSeparateTracks

Whether or not to split mic channels into separate audio tracks. If not true, a max of 2 input channels is supported.

## Members

### RECORDING

```
SEQUENCE RECORDING
```
### AnimationSubDirectory

```
FString AnimationSubDirectory
```

The name of the subdirectory animations will be placed in. Leave this empty to place into the same directory as the sequence base path

### GlobalTimeDilation

```
float32 GlobalTimeDilation
```

Global Time dilation to set the world to when recording starts. Useful for playing back a scene in slow motion.

### bAllowLooping

```
bool bAllowLooping
```

Allow the recording to be looped. Subsequence recorded assets will be saved to unique filenames.

### RecordingDelay

```
float32 RecordingDelay
```

Delay that we will use before starting recording

### bIgnoreTimeDilation

```
bool bIgnoreTimeDilation
```

Should Sequence Recorder ignore global time dilation? If true recorded animations will only be as long as they would have been without global time dilation.

### bImmersiveMode

```
bool bImmersiveMode
```

Whether to maximize the viewport when recording

### bCreateLevelSequence

```
bool bCreateLevelSequence
```

Whether to create a level sequence when recording. Actors and animations will be inserted into this sequence

### SequenceLength

```
float32 SequenceLength
```

The length of the recorded sequence

### bRecordNearbySpawnedActors

```
bool bRecordNearbySpawnedActors
```

Whether to record nearby spawned actors. If an actor matches a class in the ActorFilter, this state will be bypassed.

### NearbyActorRecordingProximity

```
float32 NearbyActorRecordingProximity
```

Proximity to currently recorded actors to record newly spawned actors.

### bRecordWorldSettingsActor

```
bool bRecordWorldSettingsActor
```

Whether to record the world settings actor in the sequence (some games use this to attach world SFX)

### bReduceKeys

```
bool bReduceKeys
```

Whether to remove keyframes within a tolerance from the recorded tracks

### bAutoSaveAsset

```
bool bAutoSaveAsset
```

Whether to auto-save asset when recording is completed. Defaults to false

### ActorFilter

```
FSequenceRecorderActorFilter ActorFilter
```

Filter to check spawned actors against to see if they should be recorded

### DefaultAnimationSettings

```
FAnimationRecordingSettings DefaultAnimationSettings
```

Default animation settings which are used to initialize all new actor recording's animation settings

### bRecordSequencerSpawnedActors

```
bool bRecordSequencerSpawnedActors
```

Whether to record actors that are spawned by sequencer itself (this is usually disabled as results can be unexpected)

### ClassesAndPropertiesToRecord

```
TArray<FPropertiesToRecordForClass> ClassesAndPropertiesToRecord
```

The properties to record for specified classes. Component classes specified here will be recorded. If an actor does not contain one of these classes it will be ignored.

### ActorsAndPropertiesToRecord

```
TArray<FPropertiesToRecordForActorClass> ActorsAndPropertiesToRecord
```

The properties to record for specified actors. Actor classes specified here will be recorded. If an actor does not contain one of these properties it will be ignored.

### PerActorSettings

```
TArray<FSettingsForActorClass> PerActorSettings
```

Settings applied to actors of a specified class

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USequenceRecorderSettings::StaticClass()
```
