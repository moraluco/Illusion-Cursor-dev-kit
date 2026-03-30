# UMovieSceneScriptingEventKey

**Visibility:** public

## Inheritance

UMovieSceneScriptingKey → UMovieSceneScriptingEventKey

## Description

Exposes a Sequencer Event type key to Python/Blueprints.  Stores a reference to the data so changes to this class are forwarded onto the underlying data structures.

## SEQUENCER \| KEYS

### Value

```
FMovieSceneEvent Value
```

Gets the value for this key from the owning channel.

---

## SEQUENCER \| KEYS

### SetTime

```
void SetTime(FFrameNumber NewFrameNumber, float32 SubFrame = 0.000000, ESequenceTimeUnit TimeUnit = ESequenceTimeUnit :: DisplayRate)
```

Sets the time for this key in the owning channel. Will replace any key that already exists at that frame number in this channel.

**Parameters**

NewFrameNumber
FFrameNumber

What frame should this key be moved to? This should be in the time unit specified by TimeUnit.

SubFrame
float32

If using Display Rate time, what is the sub-frame this should go to? Clamped [0-1), and ignored with when TimeUnit is set to Tick Resolution.

TimeUnit
ESequenceTimeUnit

Should the NewFrameNumber be interpreted as Display Rate frames or in Tick Resolution?

SetValue
void SetValue(
FMovieSceneEvent 	InNewValue
	)

Sets the value for this key, reflecting it in the owning channel.

**Parameters**

InNewValue
FMovieSceneEvent

The new event payload for this key.

GetValue
FMovieSceneEvent GetValue() const

Gets the value for this key from the owning channel.

**Returns**

The event payload for this key which contains an event name and data.

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneScriptingEventKey::StaticClass()
