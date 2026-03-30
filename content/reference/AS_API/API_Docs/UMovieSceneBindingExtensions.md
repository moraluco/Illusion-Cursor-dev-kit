# UMovieSceneBindingExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UMovieSceneBindingExtensions

## Description

Function library containing methods that should be hoisted onto FMovieSceneBindingProxies for scripting

## SEQUENCER \| SEQUENCE

### GetPossessedObjectClass

```
static UClass UMovieSceneBindingExtensions::GetPossessedObjectClass(
```

### InBinding

```
FSequencerBindingProxy InBinding
```

)

Get this binding's possessed object class

**Parameters**

InBinding
FSequencerBindingProxy

The binding to get the possessed object class of

**Returns**

The possessed object class of the binding

FindTracksByExactType
static TArray<UMovieSceneTrack> UMovieSceneBindingExtensions::FindTracksByExactType(

FSequencerBindingProxy 	InBinding,
TSubclassOf<UMovieSceneTrack> 	TrackType

)

Find all tracks within a given binding of the specified type, not allowing sub-classed types

**Parameters**

InBinding
FSequencerBindingProxy

The binding to find tracks in

TrackType
TSubclassOf<UMovieSceneTrack>

A UMovieSceneTrack class type specifying the exact types of track to return

**Returns**

An array containing any tracks that are exactly the same as the type specified

FindTracksByType
static TArray<UMovieSceneTrack> UMovieSceneBindingExtensions::FindTracksByType(

FSequencerBindingProxy 	InBinding,
TSubclassOf<UMovieSceneTrack> 	TrackType

)

Find all tracks within a given binding of the specified type

**Parameters**

InBinding
FSequencerBindingProxy

The binding to find tracks in

TrackType
TSubclassOf<UMovieSceneTrack>

A UMovieSceneTrack class type specifying which types of track to return

**Returns**

An array containing any tracks that match the type specified

GetChildPossessables
static TArray<FSequencerBindingProxy> UMovieSceneBindingExtensions::GetChildPossessables(

FSequencerBindingProxy 	InBinding

)

Get all the children of this binding

**Parameters**

InBinding
FSequencerBindingProxy

The binding to to get children of

**Returns**

An array containing all the binding's children

GetDisplayName
static FText UMovieSceneBindingExtensions::GetDisplayName(
FSequencerBindingProxy 	InBinding
	)

Get this binding's name

**Parameters**

InBinding
FSequencerBindingProxy

The binding to get the name of

**Returns**

The display name of the binding

GetId
static FGuid UMovieSceneBindingExtensions::GetId(
FSequencerBindingProxy 	InBinding
	)

Get this binding's ID

**Parameters**

InBinding
FSequencerBindingProxy

The binding to get the ID of

**Returns**

The guid that uniquely represents this binding

GetName
static FString UMovieSceneBindingExtensions::GetName(
FSequencerBindingProxy 	InBinding
	)

Get this binding's object non-display name

**Parameters**

InBinding
FSequencerBindingProxy

The binding to get the name of

**Returns**

The name of the binding

GetObjectTemplate
static UObject UMovieSceneBindingExtensions::GetObjectTemplate(
FSequencerBindingProxy 	InBinding
	)

Get this binding's object template

**Parameters**

InBinding
FSequencerBindingProxy

The binding to get the object template of

**Returns**

The object template of the binding

GetParent
static FSequencerBindingProxy UMovieSceneBindingExtensions::GetParent(

FSequencerBindingProxy 	InBinding

)

Get the parent of this binding

**Parameters**

InBinding
FSequencerBindingProxy

The binding to get the parent of

**Returns**

The binding's parent

AddTrack
static UMovieSceneTrack UMovieSceneBindingExtensions::AddTrack(

FSequencerBindingProxy 	InBinding,
TSubclassOf<UMovieSceneTrack> 	TrackType

)

Add a new track to the specified binding

**Parameters**

InBinding
FSequencerBindingProxy

The binding to add tracks to

TrackType
TSubclassOf<UMovieSceneTrack>

A UMovieSceneTrack class type specifying the type of track to create

**Returns**

The newly created track, if successful

GetTracks
static TArray<UMovieSceneTrack> UMovieSceneBindingExtensions::GetTracks(

FSequencerBindingProxy 	InBinding

)

Get all the tracks stored within this binding

**Parameters**

InBinding
FSequencerBindingProxy

The binding to find tracks in

**Returns**

An array containing all the binding's tracks

IsValid
static bool UMovieSceneBindingExtensions::IsValid(
FSequencerBindingProxy 	InBinding
	)

Check whether the specified binding is valid

MoveBindingContents
static void UMovieSceneBindingExtensions::MoveBindingContents(

FSequencerBindingProxy 	SourceBindingId,
FSequencerBindingProxy 	DestinationBindingId

)

Move all the contents (tracks, child bindings) of the specified binding ID onto another

**Parameters**

SourceBindingId
FSequencerBindingProxy

The identifier of the binding ID to move all tracks and children from

DestinationBindingId
FSequencerBindingProxy

The identifier of the binding ID to move the contents to

Remove
static void UMovieSceneBindingExtensions::Remove(
FSequencerBindingProxy 	InBinding
	)

Remove the specified binding

**Parameters**

InBinding
FSequencerBindingProxy

The binding to remove the track from

RemoveTrack
static void UMovieSceneBindingExtensions::RemoveTrack(
FSequencerBindingProxy 	InBinding,
UMovieSceneTrack 	TrackToRemove
	)

Remove the specified track from this binding

**Parameters**

InBinding
FSequencerBindingProxy

The binding to remove the track from

TrackToRemove
UMovieSceneTrack

The track to remove

SetDisplayName
static void UMovieSceneBindingExtensions::SetDisplayName(
FSequencerBindingProxy 	InBinding,
FText 	InDisplayName
	)

Set this binding's name

**Parameters**

InBinding
FSequencerBindingProxy

The binding to get the name of

SetName
static void UMovieSceneBindingExtensions::SetName(
FSequencerBindingProxy 	InBinding,
FString 	InName
	)

Set this binding's object non-display name

**Parameters**

InBinding
FSequencerBindingProxy

The binding to get the name of

InName
FString

The name of the binding

SetParent
static void UMovieSceneBindingExtensions::SetParent(
FSequencerBindingProxy 	InBinding,
FSequencerBindingProxy 	InParentBinding
	)

Set the parent to this binding

**Parameters**

InBinding
FSequencerBindingProxy

The binding to set

InParentBinding
FSequencerBindingProxy

The parent to set the InBinding to

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneBindingExtensions::StaticClass()
