# UMovieScenePropertyTrackExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UMovieScenePropertyTrackExtensions

## Description

Function library containing methods that should be hoisted onto UMovieScenePropertyTrack for scripting

## SEQUENCER \| TRACK

### GetPropertyName

```
static FName UMovieScenePropertyTrackExtensions::GetPropertyName(
```

### Track

```
UMovieScenePropertyTrack Track
```

)

Get this track's property name

**Parameters**

Track
UMovieScenePropertyTrack

The track to use

**Returns**

This track's property name

GetPropertyPath
static FString UMovieScenePropertyTrackExtensions::GetPropertyPath(

UMovieScenePropertyTrack 	Track

)

Get this track's property path

**Parameters**

Track
UMovieScenePropertyTrack

The track to use

**Returns**

This track's property path

GetUniqueTrackName
static FName UMovieScenePropertyTrackExtensions::GetUniqueTrackName(

UMovieScenePropertyTrack 	Track

)

Get this track's unique name

**Parameters**

Track
UMovieScenePropertyTrack

The track to use

**Returns**

This track's unique name

SetObjectPropertyClass
static void UMovieScenePropertyTrackExtensions::SetObjectPropertyClass(

UMovieSceneObjectPropertyTrack 	Track,
UClass 	PropertyClass

)

Set this object property track's property class

**Parameters**

Track
UMovieSceneObjectPropertyTrack

The track to use

PropertyClass
UClass

The property class to set

SetPropertyNameAndPath
static void UMovieScenePropertyTrackExtensions::SetPropertyNameAndPath(

UMovieScenePropertyTrack 	Track,
FName 	InPropertyName,
FString 	InPropertyPath

)

Set this track's property name and path

**Parameters**

Track
UMovieScenePropertyTrack

The track to use

InPropertyName
FName

The property name

InPropertyPath
FString

The property path

GetObjectPropertyClass
static UClass UMovieScenePropertyTrackExtensions::GetObjectPropertyClass(

UMovieSceneObjectPropertyTrack 	Track

)

Get this object property track's property class

**Parameters**

Track
UMovieSceneObjectPropertyTrack

The track to use

**Returns**

The property class for this object property track

STATIC FUNCTIONS
StaticClass
static UClass UMovieScenePropertyTrackExtensions::StaticClass()
