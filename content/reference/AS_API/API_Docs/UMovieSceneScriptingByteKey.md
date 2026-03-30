# UMovieSceneScriptingByteKey

**Visibility:** public

## Inheritance

UMovieSceneScriptingKey → UMovieSceneScriptingByteKey

## Description

Exposes a Sequencer byte/enum type key to Python/Blueprints.  Stores a reference to the data so changes to this class are forwarded onto the underlying data structures.

## SEQUENCER \| KEYS

### Value

```
uint8 Value
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
uint8 	InNewValue
	)

Sets the value for this key, reflecting it in the owning channel.

**Parameters**

InNewValue
uint8

The new value for this key.

GetValue
uint8 GetValue() const

Gets the value for this key from the owning channel.

**Returns**

The value for this key.

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneScriptingByteKey::StaticClass()
