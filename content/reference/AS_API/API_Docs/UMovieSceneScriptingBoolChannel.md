# UMovieSceneScriptingBoolChannel

**Visibility:** public

## Inheritance

UMovieSceneScriptingChannel → UMovieSceneScriptingBoolChannel

## SEQUENCER \| KEYS

### Keys

```
const TArray<UMovieSceneScriptingKey> Keys
```

Gets all of the keys in this channel.

### NumKeys

```
const int NumKeys
```

Returns number of keys in this channel.

### Default

```
bool Default
```

Get this channel's default value that will be used when no keys are present. Only a valid value when HasDefault() returns true.

---

## SEQUENCER \| KEYS

### HasDefault

```
bool HasDefault()const
```

**Returns**

Does this channel have a default value set?

ComputeEffectiveRange
FSequencerScriptingRange ComputeEffectiveRange() const

Compute the effective range of this channel, for example, the extents of its key times

**Returns**

A range that represents the greatest range of times occupied by this channel, in the sequence's frame resolution

GetDefault
bool GetDefault() const

Get this channel's default value that will be used when no keys are present. Only a valid value when HasDefault() returns true.

GetKeys
TArray<UMovieSceneScriptingKey> GetKeys() const

Gets all of the keys in this channel.

**Returns**

An array of UMovieSceneScriptingBoolKey's contained by this channel. Returns all keys even if clipped by the owning section's boundaries or outside of the current sequence play range.

GetNumKeys
int GetNumKeys() const

Returns number of keys in this channel.

AddKey
UMovieSceneScriptingBoolKey AddKey(

FFrameNumber 	InTime,
bool 	NewValue,
float32 	SubFrame	 = 	0.000000,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Add a key to this channel. This initializes a new key and returns a reference to it.

**Parameters**

InTime
FFrameNumber

The frame this key should go on. Respects TimeUnit to determine if it is a display rate frame or a tick resolution frame.

NewValue
bool

The value that this key should be created with.

SubFrame
float32

Optional [0-1) clamped sub-frame to put this key on. Ignored if TimeUnit is set to Tick Resolution.

TimeUnit
ESequenceTimeUnit

Is the specified InTime in Display Rate frames or Tick Resolution.

**Returns**

The key that was created with the specified values at the specified time.

RemoveDefault
void RemoveDefault()

Remove this channel's default value causing the channel to have no effect where no keys are present

RemoveKey
void RemoveKey(
UMovieSceneScriptingKey 	Key
	)

Removes the specified key. Does nothing if the key is not specified or the key belongs to another channel.

SetDefault
void SetDefault(
bool 	InDefaultValue
	)

Set this channel's default value that should be used when no keys are present.  Sets bHasDefaultValue to true automatically.

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneScriptingBoolChannel::StaticClass()
