# ALevelSequenceActor

**Visibility:** public

## Inheritance

AActor → ALevelSequenceActor

## Description

Actor responsible for controlling a specific level sequence in the world.

## CAMERAS

### CameraSettings

```
FLevelSequenceCameraSettings CameraSettings
```

---

## GENERAL

### LevelSequenceAsset

```
ULevelSequence LevelSequenceAsset
```
### DefaultInstanceData

```
UObject DefaultInstanceData
```

Instance data that can be used to dynamically control sequence evaluation at runtime

### BurnInOptions

```
ULevelSequenceBurnInOptions BurnInOptions
```
### BindingOverrides

```
UMovieSceneBindingOverrides BindingOverrides
```

Mapping of actors to override the sequence bindings with

### bOverrideInstanceData

```
bool bOverrideInstanceData
```

Enable specification of dynamic instance data to be supplied to the sequence during playback

---

## PLAYBACK

### SequencePlayer

```
ULevelSequencePlayer SequencePlayer
```
### PlaybackSettings

```
FMovieSceneSequencePlaybackSettings PlaybackSettings
```

---

## REPLICATION

### bReplicatePlayback

```
bool bReplicatePlayback
```

If true, playback of this level sequence on the server will be synchronized across other clients

---

## SEQUENCER \| PLAYER

### Sequence

```
ULevelSequence Sequence
```

Get the level sequence being played by this actor.

---

## SEQUENCER \| PLAYER

### HideBurnin

```
void HideBurnin()
```

### Hide burnin

```
Hide burnin
```

ShowBurnin

### void ShowBurnin

```
void ShowBurnin()
```

### Show burnin

```
Show burnin
```

GetSequence

### ULevelSequence GetSequence

```
ULevelSequence GetSequence()const
```

Get the level sequence being played by this actor.

**Returns**

Level sequence, or nullptr if not assigned or if it cannot be loaded.

SetSequence
void SetSequence(
ULevelSequence 	InSequence
	)

Set the level sequence being played by this actor.

**Parameters**

InSequence
ULevelSequence

The sequence object to set.

---

## SEQUENCER \| PLAYER \| BINDINGS

### FindNamedBindings

```
const TArray<FMovieSceneObjectBindingID>& FindNamedBindings(FName Tag)const
```

Retrieve all the bindings that have been tagged with the specified name

**Parameters**

Tag
FName

The unique tag name to lookup bindings with. Object Bindings can be tagged within the sequence UI by RMB -> Tags... on the object binding in the tree.

**Returns**

An array containing all the bindings that are tagged with this name, potentially empty.

FindNamedBinding
FMovieSceneObjectBindingID FindNamedBinding(
FName 	Tag
	) const

Retrieve the first object binding that has been tagged with the specified name

RemoveBinding
void RemoveBinding(
FMovieSceneObjectBindingID 	Binding,
AActor 	Actor
	)

Removes the specified actor from the specified binding's actor array

AddBindingByTag
void AddBindingByTag(
FName 	BindingTag,
AActor 	Actor,
bool 	bAllowBindingsFromAsset	 = 	false
	)

Binds an actor to all the bindings tagged with the specified name in this sequence. Does not remove any exising bindings that have been set up through this API. Object Bindings can be tagged within the sequence UI by RMB -> Tags... on the object binding in the tree.

**Parameters**

BindingTag
FName

The unique tag name to lookup bindings with

Actor
AActor

The actor to assign to all the tagged bindings

bAllowBindingsFromAsset
bool

If false the new bindings being supplied here will replace the bindings set in the level sequence asset, meaning the original object animated by Sequencer will no longer be animated. Bindings set to spawnables will not spawn if false. If true, new bindings will be in addition to ones set set in Sequencer UI. This function will not modify the original asset.

RemoveBindingByTag
void RemoveBindingByTag(
FName 	Tag,
AActor 	Actor
	)

Removes the specified actor from the specified binding's actor array

ResetBinding
void ResetBinding(
FMovieSceneObjectBindingID 	Binding
	)

Resets the specified binding back to the defaults defined by the Level Sequence asset

ResetBindings
void ResetBindings()

Resets all overridden bindings back to the defaults defined by the Level Sequence asset

AddBinding
void AddBinding(
FMovieSceneObjectBindingID 	Binding,
AActor 	Actor,
bool 	bAllowBindingsFromAsset	 = 	false
	)

Adds the specified actor to the overridden bindings for the specified binding ID, optionally still allowing the bindings defined in the Level Sequence asset

**Parameters**

Binding
FMovieSceneObjectBindingID

Binding to modify

Actor
AActor

Actor to bind

bAllowBindingsFromAsset
bool

If false the new bindings being supplied here will replace the bindings set in the level sequence asset, meaning the original object animated by Sequencer will no longer be animated. Bindings set to spawnables will not spawn if false. If true, new bindings will be in addition to ones set set in Sequencer UI. This function will not modify the original asset.

SetBindingByTag
void SetBindingByTag(
FName 	BindingTag,
TArray<AActor> 	Actors,
bool 	bAllowBindingsFromAsset	 = 	false
	)

Assigns an set of actors to all the bindings tagged with the specified name in this sequence. Object Bindings can be tagged within the sequence UI by RMB -> Tags... on the object binding in the tree.

**Parameters**

BindingTag
FName

The unique tag name to lookup bindings with

Actors
TArray<AActor>

The actors to assign to all the tagged bindings

bAllowBindingsFromAsset
bool

If false the new bindings being supplied here will replace the bindings set in the level sequence asset, meaning the original object animated by Sequencer will no longer be animated. Bindings set to spawnables will not spawn if false. If true, new bindings will be in addition to ones set set in Sequencer UI. This function will not modify the original asset.

SetBinding
void SetBinding(
FMovieSceneObjectBindingID 	Binding,
TArray<AActor> 	Actors,
bool 	bAllowBindingsFromAsset	 = 	false
	)

Overrides the specified binding with the specified actors, optionally still allowing the bindings defined in the Level Sequence asset

**Parameters**

Binding
FMovieSceneObjectBindingID

Binding to modify

Actors
TArray<AActor>

Actors to bind

bAllowBindingsFromAsset
bool

If false the new bindings being supplied here will replace the bindings set in the level sequence asset, meaning the original object animated by Sequencer will no longer be animated. Bindings set to spawnables will not spawn if false. If true, new bindings will be in addition to ones set set in Sequencer UI. This function will not modify the original asset.

---

## FUNCTIONS

### SetbOverrideInstanceData

```
void SetbOverrideInstanceData(bool Value)
```

GetSequencePlayer

### ULevelSequencePlayer GetSequencePlayer

```
ULevelSequencePlayer GetSequencePlayer()const
```

Access this actor's sequence player, or None if it is not yet initialized

### SetSequencePlayer

```
void SetSequencePlayer(ULevelSequencePlayer Value)
```

GetbOverrideInstanceData

### bool GetbOverrideInstanceData

```
bool GetbOverrideInstanceData()const SetReplicatePlayback
```

void SetReplicatePlayback(

### bool 	ReplicatePlayback

```
bool 	ReplicatePlayback 	)
```

Set whether or not to replicate playback for this actor

### GetbReplicatePlayback

```
bool GetbReplicatePlayback()const
```

SetbReplicatePlayback

### void SetbReplicatePlayback

```
void SetbReplicatePlayback(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ALevelSequenceActor ALevelSequenceActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ALevelSequenceActor::StaticClass

```
static UClass ALevelSequenceActor::StaticClass()
```
