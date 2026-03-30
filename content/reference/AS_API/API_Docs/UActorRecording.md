# UActorRecording

**Visibility:** public

## Inheritance

USequenceRecordingBase → UActorRecording

## Description

ACTOR RECORDING TakeNumber uint TakeNumber

Specify the take number for the new recording

bActive bool bActive

Whether this actor is active and to be recorded when the 'Record' button is pressed.

bCreateLevelSequence bool bCreateLevelSequence

Whether to create a level sequence for this actor recording

TargetLevelSequence ULevelSequence TargetLevelSequence

The level sequence to record into

TargetName FText TargetName

Optional target name to record to. If not specified, the actor label will be used

ActorSettings FActorRecordingSettings ActorSettings bRecordToPossessable bool bRecordToPossessable

Whether to record to 'possessable' (i.e. level-owned) or 'spawnable' (i.e. sequence-owned) actors. Defaults to the global setting.

ActorToRecord TSoftObjectPtr<AActor> ActorToRecord

The actor we want to record

## Members

### RECORDING

```
ANIMATION RECORDING
```
### AnimationSettings

```
FAnimationRecordingSettings AnimationSettings
```

The settings to apply to this actor's animation

### TargetAnimation

```
UAnimSequence TargetAnimation
```

The target animation we want to record to

### bSpecifyTargetAnimation

```
bool bSpecifyTargetAnimation
```

Whether we should specify the target animation or auto-create it

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UActorRecording::StaticClass()
```
