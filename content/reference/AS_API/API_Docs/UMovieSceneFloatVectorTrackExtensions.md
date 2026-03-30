# UMovieSceneFloatVectorTrackExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UMovieSceneFloatVectorTrackExtensions

## Description

Function library containing methods that should be hoisted onto UMovieSceneFloatVectorTrack for scripting

## SEQUENCER \| TRACK

### SetNumChannelsUsed

```
static void UMovieSceneFloatVectorTrackExtensions::SetNumChannelsUsed(
```

UMovieSceneFloatVectorTrack 	Track,

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
UMovieSceneFloatVectorTrack

The track to set

InNumChannelsUsed
int

The number of channels to use for this track

GetNumChannelsUsed
static int UMovieSceneFloatVectorTrackExtensions::GetNumChannelsUsed(

UMovieSceneFloatVectorTrack 	Track

)

Get the number of channels used for this track

**Parameters**

Track
UMovieSceneFloatVectorTrack

The track to query for the number of channels used

**Returns**

The number of channels used for this track

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneFloatVectorTrackExtensions::StaticClass()
