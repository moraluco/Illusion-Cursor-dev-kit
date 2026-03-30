# UMovieSceneEventTrackExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UMovieSceneEventTrackExtensions

## Description

Function library containing methods that should be hoisted onto UMovieSceneEventTrack for scripting

## SEQUENCER \| EVENT

### GetBoundObjectPropertyClass

```
static UClass UMovieSceneEventTrackExtensions::GetBoundObjectPropertyClass(
```

### EventKey

```
FMovieSceneEvent EventKey
```

)

Return the class of the bound object property * *

**Parameters**

EventKey
FMovieSceneEvent

The event key to get the bound object property from *

**Returns**

The class of the bound object property

---

## SEQUENCER \| TRACK

### AddEventTriggerSection

```
static UMovieSceneEventTriggerSection UMovieSceneEventTrackExtensions::AddEventTriggerSection(
```

### InTrack

```
UMovieSceneEventTrack InTrack
```

)

### track

```
Create a new event trigger section for the given track
```
**Returns**

The newly created event trigger section

AddEventRepeaterSection
static UMovieSceneEventRepeaterSection UMovieSceneEventTrackExtensions::AddEventRepeaterSection(

UMovieSceneEventTrack 	InTrack

)

Create a new event repeater section for the given track

**Returns**

The newly created event repeater section

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneEventTrackExtensions::StaticClass()
