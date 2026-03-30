# ULevelSequenceEditorSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → ULevelSequenceEditorSubsystem

## Description

ULevelSequenceEditorSubsystem Subsystem for level sequencer related utilities to scripts

### LEVEL SEQUENCE EDITOR

```
LEVEL SEQUENCE EDITOR RemoveInvalidBindings void RemoveInvalidBindings(FSequencerBindingProxy ObjectBinding)
```

Remove missing objects bound to this track

### FixActorReferences

```
void FixActorReferences()
```

Attempts to automatically fix up broken actor references in the current scene

### RebindComponent

```
void RebindComponent(TArray<FSequencerBindingProxy> ComponentBindings, FName ComponentName)
```

Rebind the component binding to the requested component

### RemoveActorsFromBinding

```
void RemoveActorsFromBinding(TArray<AActor> Actors, FSequencerBindingProxy ObjectBinding)
```

Removes the given actors from the binding

### RemoveAllBindings

```
void RemoveAllBindings(FSequencerBindingProxy ObjectBinding)
```

Remove all bound actors from this track

### AddActorsToBinding

```
void AddActorsToBinding(TArray<AActor> Actors, FSequencerBindingProxy ObjectBinding)
```

Assigns the given actors to the binding

### ReplaceBindingWithActors

```
void ReplaceBindingWithActors(TArray<AActor> Actors, FSequencerBindingProxy ObjectBinding)
```

Replaces the binding with the given actors

### SnapSectionsToTimelineUsingSourceTimecode

```
void SnapSectionsToTimelineUsingSourceTimecode(TArray<UMovieSceneSection> Sections)
```

Snap sections to timeline using source timecode

### SyncSectionsUsingSourceTimecode

```
void SyncSectionsUsingSourceTimecode(TArray<UMovieSceneSection> Sections)
```

Sync section using source timecode

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static ULevelSequenceEditorSubsystem ULevelSequenceEditorSubsystem::Get()
```

StaticClass

### static UClass ULevelSequenceEditorSubsystem::StaticClass

```
static UClass ULevelSequenceEditorSubsystem::StaticClass()
```
