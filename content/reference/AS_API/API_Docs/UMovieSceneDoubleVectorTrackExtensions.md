# UMovieSceneDoubleVectorTrackExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UMovieSceneDoubleVectorTrackExtensions

## Description

Function library containing methods that should be hoisted onto UMovieSceneDoubleVectorTrack for scripting

## SEQUENCER \| TRACK

### SetNumChannelsUsed

```
static void UMovieSceneDoubleVectorTrackExtensions::SetNumChannelsUsed(
```

UMovieSceneDoubleVectorTrack 	Track,

### InNumChannelsUsed

```
int InNumChannelsUsed
```

)

### track

```
Set the number of channels used for this track
```
**Parameters**

Track
UMovieSceneDoubleVectorTrack

The track to set

InNumChannelsUsed
int

The number of channels to use for this track

GetNumChannelsUsed
static int UMovieSceneDoubleVectorTrackExtensions::GetNumChannelsUsed(

UMovieSceneDoubleVectorTrack 	Track

)

Get the number of channels used for this track

**Parameters**

Track
UMovieSceneDoubleVectorTrack

The track to query for the number of channels used

**Returns**

The number of channels used for this track

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneDoubleVectorTrackExtensions::StaticClass()
