# UMovieSceneScriptingDoubleChannel

**Visibility:** public

## Inheritance

UMovieSceneScriptingChannel → UMovieSceneScriptingDoubleChannel

## SEQUENCER \| KEYS

### Keys

```
const TArray<UMovieSceneScriptingKey> Keys
```

Gets all of the keys in this channel.

NumKeys

### NumKeys

```
const int NumKeys
```

Returns number of keys in this channel.

### PostInfinityExtrapolation

```
ERichCurveExtrapolation PostInfinityExtrapolation PreInfinityExtrapolation ERichCurveExtrapolation PreInfinityExtrapolation Default float Default
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
float GetDefault() const

Get this channel's default value that will be used when no keys are present. Only a valid value when HasDefault() returns true.

GetKeys
TArray<UMovieSceneScriptingKey> GetKeys() const

Gets all of the keys in this channel.

**Returns**

An array of UMovieSceneScriptingDoubleKey's contained by this channel. Returns all keys even if clipped by the owning section's boundaries or outside of the current sequence play range.

GetNumKeys
int GetNumKeys() const

Returns number of keys in this channel.

GetPostInfinityExtrapolation
ERichCurveExtrapolation GetPostInfinityExtrapolation() const

**Returns**

Gets the Post-infinity extrapolation state. See ERichCurveExtrapolation for more detail.

GetPreInfinityExtrapolation
ERichCurveExtrapolation GetPreInfinityExtrapolation() const

**Returns**

Gets the Pre-infinity extrapolation state. See ERichCurveExtrapolation for more detail.

AddKey
UMovieSceneScriptingDoubleKey AddKey(

FFrameNumber 	InTime,
float 	NewValue,
float32 	SubFrame	 = 	0.000000,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
EMovieSceneKeyInterpolation 	InInterpolation	 = 	EMovieSceneKeyInterpolation :: Auto

)

Add a key to this channel. This initializes a new key and returns a reference to it.

**Parameters**

InTime
FFrameNumber

The frame this key should go on. Respects TimeUnit to determine if it is a display rate frame or a tick resolution frame.

NewValue
float

The value that this key should be created with.

SubFrame
float32

Optional [0-1) clamped sub-frame to put this key on. Ignored if TimeUnit is set to Tick Resolution.

TimeUnit
ESequenceTimeUnit

Is the specified InTime in Display Rate frames or Tick Resolution.

InInterpolation
EMovieSceneKeyInterpolation

Interpolation method the key should use.

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
float 	InDefaultValue
	)

Set this channel's default value that should be used when no keys are present.  Sets bHasDefaultValue to true automatically.

SetPostInfinityExtrapolation
void SetPostInfinityExtrapolation(
ERichCurveExtrapolation 	InExtrapolation
	)

Sets the Post-infinity extrapolation state. See ERichCurveExtrapolation for more detail.

**Parameters**

InExtrapolation
ERichCurveExtrapolation

The new extrapolation mode this key should use for evaluating after this key.

SetPreInfinityExtrapolation
void SetPreInfinityExtrapolation(
ERichCurveExtrapolation 	InExtrapolation
	)

Sets the Pre-infinity extrapolation state. See ERichCurveExtrapolation for more detail.

**Parameters**

InExtrapolation
ERichCurveExtrapolation

The new extrapolation mode this key should use for evaluating before this key.

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneScriptingDoubleChannel::StaticClass()
