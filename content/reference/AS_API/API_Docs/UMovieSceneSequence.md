# UMovieSceneSequence

**Visibility:** public

## Inheritance

UMovieSceneSignedObject → UMovieSceneSequence → UActorSequence → ULevelSequence → UNiagaraSequence → UTemplateSequence

## Description

and 2 other children

Abstract base class for movie scene animations (C++ version).

## SEQUENCER \| SEQUENCE

### EarliestTimecodeSource

```
const FMovieSceneTimecodeSource EarliestTimecodeSource
```

Get the earliest timecode source out of all of the movie scene sections contained within this sequence's movie scene.

---

## SEQUENCER \| SEQUENCE

### FindBindingsByTag

```
const TArray<FMovieSceneObjectBindingID>& FindBindingsByTag(FName InBindingName)const
```

Find all object binding IDs associated with the specified tag name (set up through RMB->Expose on Object bindings from within sequencer)

### GetEarliestTimecodeSource

```
FMovieSceneTimecodeSource GetEarliestTimecodeSource()const
```

Get the earliest timecode source out of all of the movie scene sections contained within this sequence's movie scene.

### FindBindingByTag

```
FMovieSceneObjectBindingID FindBindingByTag(FName InBindingName)const
```

Find the first object binding ID associated with the specified tag name (set up through RMB->Expose on Object bindings from within sequencer)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneSequence::StaticClass()
```
