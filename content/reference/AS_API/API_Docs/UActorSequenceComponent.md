# UActorSequenceComponent

**Visibility:** public

## Inheritance

UActorComponent → UActorSequenceComponent

## Description

Movie scene animation embedded within an actor.

## ANIMATION

### Sequence

```
UActorSequence Sequence
```

Embedded actor sequence data

### SequencePlayer

```
UActorSequencePlayer SequencePlayer
```

---

## PLAYBACK

### PlaybackSettings

```
FMovieSceneSequencePlaybackSettings PlaybackSettings STATIC FUNCTIONS Get static UActorSequenceComponent UActorSequenceComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UActorSequenceComponent UActorSequenceComponent::GetOrCreate

```
static UActorSequenceComponent UActorSequenceComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UActorSequenceComponent UActorSequenceComponent::Create

```
static UActorSequenceComponent UActorSequenceComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UActorSequenceComponent::StaticClass

```
static UClass UActorSequenceComponent::StaticClass()
```
