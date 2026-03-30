# ULevelSequenceDirector

**Visibility:** public

## Inheritance

UObject → ULevelSequenceDirector → CINEMATICS → Player

## Description

ULevelSequencePlayer Player

Pointer to the player that's playing back this director's sequence. Only valid in game or in PIE/Simulate.

## SEQUENCER

### Sequence

```
const UMovieSceneSequence Sequence
```

Get the current sequence that this director is playing back within

---

## SEQUENCER

### GetBoundActors

```
TArray<AActor> GetBoundActors(FMovieSceneObjectBindingID ObjectBinding)
```

Resolve the actor bindings inside this sub-sequence that relate to the specified ID Note:: ObjectBinding should be constructed from the same sequence as this Sequence Director's owning Sequence (see the GetSequenceBinding node)

**Parameters**

ObjectBinding
FMovieSceneObjectBindingID

The ID for the object binding inside this sub-sequence or one of its children to resolve

GetBoundObject
UObject GetBoundObject(
FMovieSceneObjectBindingID 	ObjectBinding
	)

Resolve the first valid binding inside this sub-sequence that relates to the specified ID Note:: ObjectBinding should be constructed from the same sequence as this Sequence Director's owning Sequence (see the GetSequenceBinding node)

**Parameters**

ObjectBinding
FMovieSceneObjectBindingID

The ID for the object binding inside this sub-sequence or one of its children to resolve

GetBoundObjects
TArray<UObject> GetBoundObjects(
FMovieSceneObjectBindingID 	ObjectBinding
	)

Resolve the bindings inside this sub-sequence that relate to the specified ID Note:: ObjectBinding should be constructed from the same sequence as this Sequence Director's owning Sequence (see the GetSequenceBinding node)

**Parameters**

ObjectBinding
FMovieSceneObjectBindingID

The ID for the object binding inside this sub-sequence or one of its children to resolve

GetSequence
UMovieSceneSequence GetSequence()

Get the current sequence that this director is playing back within

OnCreated
void OnCreated()

Called when this director is created

GetBoundActor
AActor GetBoundActor(
FMovieSceneObjectBindingID 	ObjectBinding
	)

Resolve the first valid Actor binding inside this sub-sequence that relates to the specified ID Note:: ObjectBinding should be constructed from the same sequence as this Sequence Director's owning Sequence (see the GetSequenceBinding node)

**Parameters**

ObjectBinding
FMovieSceneObjectBindingID

The ID for the object binding inside this sub-sequence or one of its children to resolve

STATIC FUNCTIONS
StaticClass
static UClass ULevelSequenceDirector::StaticClass()
