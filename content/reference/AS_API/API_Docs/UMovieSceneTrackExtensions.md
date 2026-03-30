# UMovieSceneTrackExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UMovieSceneTrackExtensions

## Description

Function library containing methods that should be hoisted onto UMovieSceneTracks for scripting

## SEQUENCER \| TRACK

### RemoveSection

```
static void UMovieSceneTrackExtensions::RemoveSection(UMovieSceneTrack Track, UMovieSceneSection Section)
```

Remove the specified section

**Parameters**

Track
UMovieSceneTrack

The track to remove the section from, if present

Section
UMovieSceneSection

The section to remove

GetColorTint
static FColor UMovieSceneTrackExtensions::GetColorTint(
UMovieSceneTrack 	Track
	)

Get the color tint for this track

**Parameters**

Track
UMovieSceneTrack

The track to get the color tint from

**Returns**

The color tint of the requested track

GetDisplayName
static FText UMovieSceneTrackExtensions::GetDisplayName(
UMovieSceneTrack 	Track
	)

Get this track's display name

**Parameters**

Track
UMovieSceneTrack

The track to use

**Returns**

This track's display name

GetSections
static TArray<UMovieSceneSection> UMovieSceneTrackExtensions::GetSections(
UMovieSceneTrack 	Track
	)

Access all this track's sections

**Parameters**

Track
UMovieSceneTrack

The track to use

**Returns**

An array of this track's sections

GetSectionToKey
static UMovieSceneSection UMovieSceneTrackExtensions::GetSectionToKey(
UMovieSceneTrack 	Track
	)

Get the section to key for this track

**Parameters**

Track
UMovieSceneTrack

The track to get the section to key for

**Returns**

The section to key for the requested track

GetSortingOrder
static int UMovieSceneTrackExtensions::GetSortingOrder(
UMovieSceneTrack 	Track
	)

Get the sorting order for this track

**Parameters**

Track
UMovieSceneTrack

The track to get the sorting order from

**Returns**

The sorting order of the requested track

GetTrackRowDisplayName
static FText UMovieSceneTrackExtensions::GetTrackRowDisplayName(
UMovieSceneTrack 	Track,
int 	RowIndex
	)

Get this track row's display name

**Parameters**

Track
UMovieSceneTrack

The track to use

RowIndex
int

The row index for the track

**Returns**

This track's display name

AddSection
static UMovieSceneSection UMovieSceneTrackExtensions::AddSection(
UMovieSceneTrack 	Track
	)

Add a new section to this track

**Parameters**

Track
UMovieSceneTrack

The track to use

**Returns**

The newly create section if successful

SetColorTint
static void UMovieSceneTrackExtensions::SetColorTint(
UMovieSceneTrack 	Track,
FColor 	ColorTint
	)

Set the color tint for this track

**Parameters**

Track
UMovieSceneTrack

The track to set the color tint for

ColorTint
FColor

The color tint to set

SetDisplayName
static void UMovieSceneTrackExtensions::SetDisplayName(
UMovieSceneTrack 	Track,
FText 	InName
	)

Set this track's display name

**Parameters**

Track
UMovieSceneTrack

The track to use

InName
FText

The name for this track

SetSectionToKey
static void UMovieSceneTrackExtensions::SetSectionToKey(
UMovieSceneTrack 	Track,
UMovieSceneSection 	Section
	)

Set the section to key for this track. When properties for this section are modified externally, this section will receive those modifications and act accordingly (add/update keys). This is especially useful when there are multiple overlapping sections.

**Parameters**

Track
UMovieSceneTrack

The track to set the section to key for

Section
UMovieSceneSection

The section to key for this track

SetSortingOrder
static void UMovieSceneTrackExtensions::SetSortingOrder(
UMovieSceneTrack 	Track,
int 	SortingOrder
	)

Set the sorting order for this track

**Parameters**

Track
UMovieSceneTrack

The track to get the sorting order from

SortingOrder
int

The sorting order to set

SetTrackRowDisplayName
static void UMovieSceneTrackExtensions::SetTrackRowDisplayName(
UMovieSceneTrack 	Track,
FText 	InName,
int 	RowIndex
	)

Set this track row's display name

**Parameters**

Track
UMovieSceneTrack

The track to use

InName
FText

The name for this track

RowIndex
int

The row index for the track

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneTrackExtensions::StaticClass()
