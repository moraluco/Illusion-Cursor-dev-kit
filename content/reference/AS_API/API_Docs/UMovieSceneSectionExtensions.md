# UMovieSceneSectionExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UMovieSceneSectionExtensions

## Description

Function library containing methods that should be hoisted onto UMovieSceneSections for scripting

## SEQUENCER \| SECTION

### HasStartFrame

```
static bool UMovieSceneSectionExtensions::HasStartFrame(UMovieSceneSection Section)
```

Has start frame

**Parameters**

Section
UMovieSceneSection

The section being queried

**Returns**

Whether this section has a valid start frame (else infinite)

GetAllChannels
static TArray<UMovieSceneScriptingChannel> UMovieSceneSectionExtensions::GetAllChannels(

UMovieSceneSection 	Section

)

Find all channels that belong to the specified UMovieSceneSection. Some sections have many channels (such as Transforms containing 9 double channels to represent Translation/Rotation/Scale), and a section may have mixed channel types.

**Parameters**

Section
UMovieSceneSection

The section to use.

**Returns**

An array containing any key channels that match the type specified

GetChannels
static TArray<UMovieSceneScriptingChannel> UMovieSceneSectionExtensions::GetChannels(

UMovieSceneSection 	Section

)
GetChannelsByType
static TArray<UMovieSceneScriptingChannel> UMovieSceneSectionExtensions::GetChannelsByType(

UMovieSceneSection 	Section,
TSubclassOf<UMovieSceneScriptingChannel> 	ChannelType

)

Find all channels that belong to the specified UMovieSceneSection that match the specific type. This will filter out any children who do not inherit from the specified type for you.

**Parameters**

Section
UMovieSceneSection

The section to use.

ChannelType
TSubclassOf<UMovieSceneScriptingChannel>

The class type to look for.

**Returns**

An array containing any key channels that match the type specified

GetEndFrame
static int UMovieSceneSectionExtensions::GetEndFrame(
UMovieSceneSection 	Section
	)

Get end frame

**Parameters**

Section
UMovieSceneSection

The section within which to get the end frame

**Returns**

End frame of this section

GetEndFrameSeconds
static float32 UMovieSceneSectionExtensions::GetEndFrameSeconds(
UMovieSceneSection 	Section
	)

Get end time in seconds

**Parameters**

Section
UMovieSceneSection

The section within which to get the end time

**Returns**

End time of this section

GetParentSequenceFrame
static int UMovieSceneSectionExtensions::GetParentSequenceFrame(

UMovieSceneSubSection 	Section,
int 	InFrame,
UMovieSceneSequence 	ParentSequence

)

Get the frame in the space of its parent sequence

**Parameters**

Section
UMovieSceneSubSection

The section that the InFrame is local to

InFrame
int

The desired local frame

ParentSequence
UMovieSceneSequence

The parent sequence to traverse from

**Returns**

The frame at the parent sequence

GetStartFrame
static int UMovieSceneSectionExtensions::GetStartFrame(
UMovieSceneSection 	Section
	)

Get start frame

**Parameters**

Section
UMovieSceneSection

The section within which to get the start frame

**Returns**

Start frame of this section

GetStartFrameSeconds
static float32 UMovieSceneSectionExtensions::GetStartFrameSeconds(
UMovieSceneSection 	Section
	)

Get start time in seconds

**Parameters**

Section
UMovieSceneSection

The section within which to get the start time

**Returns**

Start time of this section

HasEndFrame
static bool UMovieSceneSectionExtensions::HasEndFrame(
UMovieSceneSection 	Section
	)

Has end frame

**Parameters**

Section
UMovieSceneSection

The section being queried

**Returns**

Whether this section has a valid end frame (else infinite)

FindChannelsByType
static TArray<UMovieSceneScriptingChannel> UMovieSceneSectionExtensions::FindChannelsByType(

UMovieSceneSection 	Section,
TSubclassOf<UMovieSceneScriptingChannel> 	ChannelType

)
SetEndFrame
static void UMovieSceneSectionExtensions::SetEndFrame(
UMovieSceneSection 	Section,
int 	EndFrame
	)

Set end frame

**Parameters**

Section
UMovieSceneSection

The section within which to set the end frame

EndFrame
int

The desired start frame for this section

SetEndFrameBounded
static void UMovieSceneSectionExtensions::SetEndFrameBounded(
UMovieSceneSection 	Section,
bool 	bIsBounded
	)

Set end frame bounded

**Parameters**

Section
UMovieSceneSection

The section to set whether the end frame is bounded or not

SetEndFrameSeconds
static void UMovieSceneSectionExtensions::SetEndFrameSeconds(
UMovieSceneSection 	Section,
float32 	EndTime
	)

Set end time in seconds

**Parameters**

Section
UMovieSceneSection

The section within which to set the end time

EndTime
float32

The desired end time for this section

SetRange
static void UMovieSceneSectionExtensions::SetRange(
UMovieSceneSection 	Section,
int 	StartFrame,
int 	EndFrame
	)

Set range

**Parameters**

Section
UMovieSceneSection

The section within which to set the range

StartFrame
int

The desired start frame for this section

EndFrame
int

The desired end frame for this section

SetRangeSeconds
static void UMovieSceneSectionExtensions::SetRangeSeconds(
UMovieSceneSection 	Section,
float32 	StartTime,
float32 	EndTime
	)

Set range in seconds

**Parameters**

Section
UMovieSceneSection

The section within which to set the range

StartTime
float32

The desired start frame for this section

EndTime
float32

The desired end frame for this section

SetStartFrame
static void UMovieSceneSectionExtensions::SetStartFrame(
UMovieSceneSection 	Section,
int 	StartFrame
	)

Set start frame

**Parameters**

Section
UMovieSceneSection

The section within which to set the start frame

StartFrame
int

The desired start frame for this section

SetStartFrameBounded
static void UMovieSceneSectionExtensions::SetStartFrameBounded(
UMovieSceneSection 	Section,
bool 	bIsBounded
	)

Set start frame bounded

**Parameters**

Section
UMovieSceneSection

The section to set whether the start frame is bounded or not

SetStartFrameSeconds
static void UMovieSceneSectionExtensions::SetStartFrameSeconds(
UMovieSceneSection 	Section,
float32 	StartTime
	)

Set start time in seconds

**Parameters**

Section
UMovieSceneSection

The section within which to set the start time

StartTime
float32

The desired start time for this section

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneSectionExtensions::StaticClass()
