# ATemplateSequenceActor

**Visibility:** public

## Inheritance

AActor → ATemplateSequenceActor

## Description

Actor responsible for controlling a specific template sequence in the world.

## GENERAL

### TemplateSequence

```
FSoftObjectPath TemplateSequence
```
### BindingOverride

```
FTemplateSequenceBindingOverrideData BindingOverride
```

The override for the template sequence's root object binding. See SetBinding.

---

## PLAYBACK

### SequencePlayer

```
UTemplateSequencePlayer SequencePlayer
```
### PlaybackSettings

```
FMovieSceneSequencePlaybackSettings PlaybackSettings
```

---

## SEQUENCER \| PLAYER

### Sequence

```
UTemplateSequence Sequence
```

Get the template sequence being played by this actor.

---

## SEQUENCER \| PLAYER

### SetSequence

```
void SetSequence(UTemplateSequence InSequence)
```

Set the template sequence being played by this actor.

### LoadSequence

```
UTemplateSequence LoadSequence()const
```

Get the template sequence being played by this actor.

**Returns**

the template sequence, or nullptr if it is not assigned or cannot be loaded

GetSequence
UTemplateSequence GetSequence() const

Get the template sequence being played by this actor.

**Returns**

the template sequence, or nullptr if it is not assigned or cannot be loaded

---

## SEQUENCER \| PLAYER \| BINDINGS

### SetBinding

```
void SetBinding(AActor Actor, bool bOverridesDefault = true)
```

Set the actor to play the template sequence onto, by setting up an override for the template sequence's root object binding.

---

## FUNCTIONS

### SetSequencePlayer

```
void SetSequencePlayer(UTemplateSequencePlayer Value)
```

GetSequencePlayer

### UTemplateSequencePlayer GetSequencePlayer

```
UTemplateSequencePlayer GetSequencePlayer()const
```

Get the actor's sequence player, or nullptr if it not yet initialized.

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static ATemplateSequenceActor ATemplateSequenceActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass ATemplateSequenceActor::StaticClass()
```
