# UMovieSceneSequenceExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UMovieSceneSequenceExtensions

## Description

Function library containing methods that should be hoisted onto UMovieSceneSequences for scripting purposes

## SEQUENCER \| SEQUENCE

### GetPortableBindingID

```
static FMovieSceneObjectBindingID UMovieSceneSequenceExtensions::GetPortableBindingID(
```

UMovieSceneSequence 	MasterSequence,

### UMovieSceneSequence 	DestinationSequence,

```
FSequencerBindingProxy 	InBinding
```

)

### Get a portable binding ID for a binding that resides in a different sequence to the one where this binding will be resolved.  Note:: This function must be used over GetBindingID when the target binding resides in different shots or sub-sequences.  Note:: Only unique instances of sequences within a master sequences are supported

```
Get a portable binding ID for a binding that resides in a different sequence to the one where this binding will be resolved.  Note:: This function must be used over GetBindingID when the target binding resides in different shots or sub-sequences.  Note:: Only unique instances of sequences within a master sequences are supported
```

**Parameters**

MasterSequence
UMovieSceneSequence

The master sequence that contains both the destination sequence (that will resolve the binding ID) and the target sequence that contains the actual binding

DestinationSequence
UMovieSceneSequence

The sequence that will own or resolve the resulting binding ID. For example, if the binding ID will be applied to a camera cut section pass the sequence that contains the camera cut track to this parameter.

**Returns**

The binding's id

AddMasterTrack
static UMovieSceneTrack UMovieSceneSequenceExtensions::AddMasterTrack(

UMovieSceneSequence 	Sequence,
TSubclassOf<UMovieSceneTrack> 	TrackType

)

Add a new master track of the specified type

**Parameters**

Sequence
UMovieSceneSequence

The sequence to use

TrackType
TSubclassOf<UMovieSceneTrack>

A UMovieSceneTrack class type to create

**Returns**

The newly created track, if successful

AddPossessable
static FSequencerBindingProxy UMovieSceneSequenceExtensions::AddPossessable(

UMovieSceneSequence 	Sequence,
UObject 	ObjectToPossess

)

Add a new binding to this sequence that will possess the specified object

**Parameters**

Sequence
UMovieSceneSequence

The sequence to add a possessable to

ObjectToPossess
UObject

The object that this sequence should possess when evaluating

**Returns**

A unique identifier for the new binding

AddRootFolderToSequence
static UMovieSceneFolder UMovieSceneSequenceExtensions::AddRootFolderToSequence(

UMovieSceneSequence 	Sequence,
FString 	NewFolderName

)

Add a root folder to the given sequence

**Parameters**

Sequence
UMovieSceneSequence

The sequence to add a folder to

NewFolderName
FString

The name to give the added folder

**Returns**

The newly created folder

AddSpawnableFromClass
static FSequencerBindingProxy UMovieSceneSequenceExtensions::AddSpawnableFromClass(

UMovieSceneSequence 	Sequence,
UClass 	ClassToSpawn

)

Add a new binding to this sequence that will spawn the specified object

**Parameters**

Sequence
UMovieSceneSequence

The sequence to add to

ClassToSpawn
UClass

A class or blueprint type to spawn for this binding

**Returns**

A unique identifier for the new binding

AddSpawnableFromInstance
static FSequencerBindingProxy UMovieSceneSequenceExtensions::AddSpawnableFromInstance(

UMovieSceneSequence 	Sequence,
UObject 	ObjectToSpawn

)

Add a new binding to this sequence that will spawn the specified object

**Parameters**

Sequence
UMovieSceneSequence

The sequence to add to

ObjectToSpawn
UObject

An object instance to use as a template for spawning

**Returns**

A unique identifier for the new binding

DeleteMarkedFrame
static void UMovieSceneSequenceExtensions::DeleteMarkedFrame(
UMovieSceneSequence 	Sequence,
int 	DeleteIndex
	)

Delete the user marked frame by index.

@DeleteIndex The index to the user marked frame to delete

DeleteMarkedFrames
static void UMovieSceneSequenceExtensions::DeleteMarkedFrames(
UMovieSceneSequence 	Sequence
	)

Delete all user marked frames

FindBindingById
static FSequencerBindingProxy UMovieSceneSequenceExtensions::FindBindingById(

UMovieSceneSequence 	Sequence,
FGuid 	BindingId

)

Attempt to locate a binding in this sequence by its Id

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to find the binding

BindingId
FGuid

The binding Id to look up

**Returns**

A unique identifier for the binding, or invalid

FindBindingByName
static FSequencerBindingProxy UMovieSceneSequenceExtensions::FindBindingByName(

UMovieSceneSequence 	Sequence,
FString 	Name

)

Attempt to locate a binding in this sequence by its name

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to find the binding

Name
FString

The display name of the binding to look up

**Returns**

A unique identifier for the binding, or invalid

FindMarkedFrameByFrameNumber
static int UMovieSceneSequenceExtensions::FindMarkedFrameByFrameNumber(

UMovieSceneSequence 	Sequence,
FFrameNumber 	InFrameNumber

)

Find the user marked frame by frame number

@InFrameNumber The frame number of the user marked frame to find

FindMarkedFrameByLabel
static int UMovieSceneSequenceExtensions::FindMarkedFrameByLabel(
UMovieSceneSequence 	Sequence,
FString 	InLabel
	)

Find the user marked frame by label

@InLabel The label to the user marked frame to find

FindMasterTracksByExactType
static TArray<UMovieSceneTrack> UMovieSceneSequenceExtensions::FindMasterTracksByExactType(

UMovieSceneSequence 	Sequence,
TSubclassOf<UMovieSceneTrack> 	TrackType

)

Find all master tracks of the specified type, not allowing sub-classed types

**Parameters**

Sequence
UMovieSceneSequence

The sequence to use

TrackType
TSubclassOf<UMovieSceneTrack>

A UMovieSceneTrack class type specifying the exact types of track to return

**Returns**

An array containing any tracks that are exactly the same as the type specified

FindMasterTracksByType
static TArray<UMovieSceneTrack> UMovieSceneSequenceExtensions::FindMasterTracksByType(

UMovieSceneSequence 	Sequence,
TSubclassOf<UMovieSceneTrack> 	TrackType

)

Find all master tracks of the specified type

**Parameters**

Sequence
UMovieSceneSequence

The sequence to use

TrackType
TSubclassOf<UMovieSceneTrack>

A UMovieSceneTrack class type specifying which types of track to return

**Returns**

An array containing any tracks that match the type specified

FindNextMarkedFrame
static int UMovieSceneSequenceExtensions::FindNextMarkedFrame(
UMovieSceneSequence 	Sequence,
FFrameNumber 	InFrameNumber,
bool 	bForward
	)

Find the next/previous user marked frame from the given frame number

@InFrameNumber The frame number to find the next/previous user marked frame from @bForward Find forward from the given frame number.

GetBindingID
static FMovieSceneObjectBindingID UMovieSceneSequenceExtensions::GetBindingID(

FSequencerBindingProxy 	InBinding

)

Get the binding ID for a binding within a sequence.  Note:: The resulting binding is only valid when applied to properties within the same sequence as this binding. Use GetPortableBindingID for bindings which live in different sub-sequences.

**Returns**

The binding's id

GetBindings
static TArray<FSequencerBindingProxy> UMovieSceneSequenceExtensions::GetBindings(

UMovieSceneSequence 	Sequence

)

Get all the bindings in this sequence

**Parameters**

Sequence
UMovieSceneSequence

The sequence to get bindings for

**Returns**

An array of unique identifiers for all the bindings in this sequence

GetClockSource
static EUpdateClockSource UMovieSceneSequenceExtensions::GetClockSource(

UMovieSceneSequence 	InSequence

)

Get the clock source for this sequence

**Returns**

The clock source for this sequence

GetEvaluationType
static EMovieSceneEvaluationType UMovieSceneSequenceExtensions::GetEvaluationType(

UMovieSceneSequence 	InSequence

)

Get the evaluation type for this sequence

**Returns**

The evaluation type for this sequence

GetMarkedFrames
static TArray<FMovieSceneMarkedFrame> UMovieSceneSequenceExtensions::GetMarkedFrames(

UMovieSceneSequence 	Sequence

)

*

**Returns**

Return the user marked frames

GetMasterTracks
static TArray<UMovieSceneTrack> UMovieSceneSequenceExtensions::GetMasterTracks(

UMovieSceneSequence 	Sequence

)

Get all master tracks

**Parameters**

Sequence
UMovieSceneSequence

The sequence to use

**Returns**

An array containing all master tracks in this sequence

GetMovieScene
static UMovieScene UMovieSceneSequenceExtensions::GetMovieScene(
UMovieSceneSequence 	Sequence
	)

Get this sequence's movie scene data

**Parameters**

Sequence
UMovieSceneSequence

The sequence to use

**Returns**

This sequence's movie scene data object

GetPlaybackEnd
static int UMovieSceneSequenceExtensions::GetPlaybackEnd(
UMovieSceneSequence 	Sequence
	)

Get playback end of this sequence in display rate resolution

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to get the playback end

**Returns**

Playback end of this sequence

GetPlaybackEndSeconds
static float32 UMovieSceneSequenceExtensions::GetPlaybackEndSeconds(
UMovieSceneSequence 	Sequence
	)

Get playback end of this sequence in seconds

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to get the playback end

**Returns**

Playback end of this sequence

GetPlaybackRange
static FSequencerScriptingRange UMovieSceneSequenceExtensions::GetPlaybackRange(

UMovieSceneSequence 	Sequence

)

Get playback range of this sequence in display rate resolution

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to get the playback range

**Returns**

Playback range of this sequence

GetPlaybackStart
static int UMovieSceneSequenceExtensions::GetPlaybackStart(
UMovieSceneSequence 	Sequence
	)

Get playback start of this sequence in display rate resolution

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to get the playback start

**Returns**

Playback start of this sequence

GetPlaybackStartSeconds
static float32 UMovieSceneSequenceExtensions::GetPlaybackStartSeconds(

UMovieSceneSequence 	Sequence

)

Get playback start of this sequence in seconds

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to get the playback start

**Returns**

Playback start of this sequence

AddMarkedFrame
static int UMovieSceneSequenceExtensions::AddMarkedFrame(
UMovieSceneSequence 	Sequence,
FMovieSceneMarkedFrame 	InMarkedFrame
	)

Add a given user marked frame.

A unique label will be generated if the marked frame label is empty *

@InMarkedFrame The given user marked frame to add *

**Returns**

The index to the newly added marked frame

GetPossessables
static TArray<FSequencerBindingProxy> UMovieSceneSequenceExtensions::GetPossessables(

UMovieSceneSequence 	Sequence

)

Get all the possessables in this sequence

**Parameters**

Sequence
UMovieSceneSequence

The sequence to get possessables for

**Returns**

Possessables in this sequence

GetRootFoldersInSequence
static TArray<UMovieSceneFolder> UMovieSceneSequenceExtensions::GetRootFoldersInSequence(

UMovieSceneSequence 	Sequence

)

Get the root folders in the provided sequence

**Parameters**

Sequence
UMovieSceneSequence

The sequence to retrieve folders from

**Returns**

The folders contained within the given sequence

GetSpawnables
static TArray<FSequencerBindingProxy> UMovieSceneSequenceExtensions::GetSpawnables(

UMovieSceneSequence 	Sequence

)

Get all the spawnables in this sequence

**Parameters**

Sequence
UMovieSceneSequence

The sequence to get spawnables for

**Returns**

Spawnables in this sequence

GetViewRangeEnd
static float32 UMovieSceneSequenceExtensions::GetViewRangeEnd(
UMovieSceneSequence 	InSequence
	)

Get the sequence view range end in seconds

**Returns**

The view range end time in seconds for this sequence

GetViewRangeStart
static float32 UMovieSceneSequenceExtensions::GetViewRangeStart(
UMovieSceneSequence 	InSequence
	)

Get the sequence view range start in seconds

**Returns**

The view range start time in seconds for this sequence

GetWorkRangeEnd
static float32 UMovieSceneSequenceExtensions::GetWorkRangeEnd(
UMovieSceneSequence 	InSequence
	)

Get the sequence work range end in seconds

**Returns**

The work range end time in seconds for this sequence

GetWorkRangeStart
static float32 UMovieSceneSequenceExtensions::GetWorkRangeStart(
UMovieSceneSequence 	InSequence
	)

Get the sequence work range start in seconds

**Returns**

The work range start time in seconds for this sequence

IsReadOnly
static bool UMovieSceneSequenceExtensions::IsReadOnly(
UMovieSceneSequence 	Sequence
	)

Is read only * *

**Returns**

Whether the movie scene is read only or not

LocateBoundObjects
static TArray<UObject> UMovieSceneSequenceExtensions::LocateBoundObjects(

UMovieSceneSequence 	Sequence,
FSequencerBindingProxy 	InBinding,
UObject 	Context

)

Locate all the objects that correspond to the specified object ID, using the specified context

**Parameters**

Sequence
UMovieSceneSequence

The sequence to locate bound objects for

InBinding
FSequencerBindingProxy

The object binding

Context
UObject

Optional context to use to find the required object

**Returns**

An array of all bound objects

MakeRange
static FSequencerScriptingRange UMovieSceneSequenceExtensions::MakeRange(

UMovieSceneSequence 	Sequence,
int 	StartFrame,
int 	Duration

)

Make a new range for this sequence in its display rate

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to find the binding

StartFrame
int

The frame at which to start the range

Duration
int

The length of the range

**Returns**

Specified sequencer range

MakeRangeSeconds
static FSequencerScriptingRange UMovieSceneSequenceExtensions::MakeRangeSeconds(

UMovieSceneSequence 	Sequence,
float32 	StartTime,
float32 	Duration

)

Make a new range for this sequence in seconds

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to find the binding

StartTime
float32

The time in seconds at which to start the range

Duration
float32

The length of the range in seconds

**Returns**

Specified sequencer range

RemoveMasterTrack
static bool UMovieSceneSequenceExtensions::RemoveMasterTrack(
UMovieSceneSequence 	Sequence,
UMovieSceneTrack 	MasterTrack
	)

Removes a master track

**Parameters**

Sequence
UMovieSceneSequence

The sequence to use

MasterTrack
UMovieSceneTrack

The master track to remove

**Returns**

Whether the master track was successfully removed

ResolveBindingID
static FSequencerBindingProxy UMovieSceneSequenceExtensions::ResolveBindingID(

UMovieSceneSequence 	MasterSequence,
FMovieSceneObjectBindingID 	InObjectBindingID

)

Make a binding for the given binding ID

**Parameters**

MasterSequence
UMovieSceneSequence

The master sequence that contains the sequence

**Returns**

The new binding proxy

SetClockSource
static void UMovieSceneSequenceExtensions::SetClockSource(
UMovieSceneSequence 	InSequence,
EUpdateClockSource 	InClockSource
	)

Set the clock source for this sequence

**Parameters**

InClockSource
EUpdateClockSource

The clock source to set for this sequence

SetEvaluationType
static void UMovieSceneSequenceExtensions::SetEvaluationType(

UMovieSceneSequence 	InSequence,
EMovieSceneEvaluationType 	InEvaluationType

)

Set the evaluation type for this sequence

**Parameters**

InEvaluationType
EMovieSceneEvaluationType

The evaluation type to set for this sequence

SetMarkedFrame
static void UMovieSceneSequenceExtensions::SetMarkedFrame(
UMovieSceneSequence 	Sequence,
int 	InMarkIndex,
FFrameNumber 	InFrameNumber
	)

Sets the frame number for the given marked frame index. Does not maintain sort. Call SortMarkedFrames

@InMarkIndex The given user marked frame index to edit @InFrameNumber The frame number to set

SetPlaybackEnd
static void UMovieSceneSequenceExtensions::SetPlaybackEnd(
UMovieSceneSequence 	Sequence,
int 	EndFrame
	)

Set playback end of this sequence

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to set the playback end

EndFrame
int

The desired end frame for this sequence

SetPlaybackEndSeconds
static void UMovieSceneSequenceExtensions::SetPlaybackEndSeconds(
UMovieSceneSequence 	Sequence,
float32 	EndTime
	)

Set playback end of this sequence in seconds

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to set the playback end

EndTime
float32

The desired end time in seconds for this sequence

SetPlaybackStart
static void UMovieSceneSequenceExtensions::SetPlaybackStart(
UMovieSceneSequence 	Sequence,
int 	StartFrame
	)

Set playback start of this sequence

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to set the playback start

StartFrame
int

The desired start frame for this sequence

SetPlaybackStartSeconds
static void UMovieSceneSequenceExtensions::SetPlaybackStartSeconds(
UMovieSceneSequence 	Sequence,
float32 	StartTime
	)

Set playback start of this sequence in seconds

**Parameters**

Sequence
UMovieSceneSequence

The sequence within which to set the playback start

StartTime
float32

The desired start time in seconds for this sequence

SetReadOnly
static void UMovieSceneSequenceExtensions::SetReadOnly(
UMovieSceneSequence 	Sequence,
bool 	bInReadOnly
	)

Set read only

@bInReadOnly Whether the movie scene should be read only or not

SetViewRangeEnd
static void UMovieSceneSequenceExtensions::SetViewRangeEnd(
UMovieSceneSequence 	InSequence,
float32 	EndTimeInSeconds
	)

Set the sequence view range end in seconds

SetViewRangeStart
static void UMovieSceneSequenceExtensions::SetViewRangeStart(

UMovieSceneSequence 	InSequence,
float32 	StartTimeInSeconds

)

Set the sequence view range start in seconds

**Parameters**

StartTimeInSeconds
float32

The desired view range start time in seconds for this sequence

SetWorkRangeEnd
static void UMovieSceneSequenceExtensions::SetWorkRangeEnd(
UMovieSceneSequence 	InSequence,
float32 	EndTimeInSeconds
	)

Set the sequence work range end in seconds

SetWorkRangeStart
static void UMovieSceneSequenceExtensions::SetWorkRangeStart(

UMovieSceneSequence 	InSequence,
float32 	StartTimeInSeconds

)

Set the sequence work range start in seconds

**Parameters**

StartTimeInSeconds
float32

The desired work range start time in seconds for this sequence

SortMarkedFrames
static void UMovieSceneSequenceExtensions::SortMarkedFrames(
UMovieSceneSequence 	Sequence
	)

Sort the marked frames in chronological order

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneSequenceExtensions::StaticClass()
