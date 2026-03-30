# UMovieSceneScriptingFloatKey

**Visibility:** public

## Inheritance

UMovieSceneScriptingKey → UMovieSceneScriptingFloatKey → UMovieSceneScriptingActualFloatKey → UMovieSceneScriptingDoubleAsFloatKey

## Description

Exposes a Sequencer float type key to Python/Blueprints.  Stores a reference to the data so changes to this class are forwarded onto the underlying data structures.

## SEQUENCER \| KEYS

### ArriveTangentWeight

```
float32 ArriveTangentWeight
```

If Tangent Weight Mode is RCTWM_WeightedArrive or RCTWM_WeightedBoth, the weight of the arriving tangent on the left side.

### InterpolationMode

```
ERichCurveInterpMode InterpolationMode
```

Gets the interpolation mode for this key from the owning channel.

### LeaveTangent

```
float32 LeaveTangent
```

If Interpolation Mode is RCIM_Cubic, the leaving tangent at this key

### LeaveTangentWeight

```
float32 LeaveTangentWeight
```

If Tangent Weight Mode is RCTWM_WeightedLeave or RCTWM_WeightedBoth, the weight of the leaving tangent on the right side.

### TangentMode

```
ERichCurveTangentMode TangentMode
```

Gets the tangent mode for this key from the owning channel.

### TangentWeightMode

```
ERichCurveTangentWeightMode TangentWeightMode
```

If Interpolation Mode is RCIM_Cubic, the tangent weight mode at this key

### Value

```
float32 Value
```

Gets the value for this key from the owning channel.

### ArriveTangent

```
float32 ArriveTangent
```

If Interpolation Mode is RCIM_Cubic, the arriving tangent at this key

---

## SEQUENCER \| KEYS

### SetArriveTangentWeight

```
void SetArriveTangentWeight(float32 InNewValue)
```

If Tangent Weight Mode is RCTWM_WeightedArrive or RCTWM_WeightedBoth, the weight of the arriving tangent on the left side.

**Parameters**

InNewValue
float32

Specifies the new arriving tangent weight. Represents the length of the hypotenuse in the form of "sqrt(x*x+y*y)" using the same definitions for x and y as tangents.

GetArriveTangentWeight
float32 GetArriveTangentWeight() const

If Tangent Weight Mode is RCTWM_WeightedArrive or RCTWM_WeightedBoth, the weight of the arriving tangent on the left side.

**Returns**

Tangent Weight. Represents the length of the hypotenuse in the form of "sqrt(x*x+y*y)" using the same definitions for x and y as tangents.

GetInterpolationMode
ERichCurveInterpMode GetInterpolationMode() const

Gets the interpolation mode for this key from the owning channel.

**Returns**

Interpolation mode this key uses to interpolate between this key and the next.

GetLeaveTangent
float32 GetLeaveTangent() const

If Interpolation Mode is RCIM_Cubic, the leaving tangent at this key

**Returns**

Leaving Tangent value. Represents the geometric tangents in the form of "tan(y/x)" where y is the key's value and x is the seconds (both relative to key)

GetLeaveTangentWeight
float32 GetLeaveTangentWeight() const

If Tangent Weight Mode is RCTWM_WeightedLeave or RCTWM_WeightedBoth, the weight of the leaving tangent on the right side.

**Returns**

Tangent Weight. Represents the length of the hypotenuse in the form of "sqrt(x*x+y*y)" using the same definitions for x and y as tangents.

GetTangentMode
ERichCurveTangentMode GetTangentMode() const

Gets the tangent mode for this key from the owning channel.

**Returns**

Tangent mode that this key is using specifying which tangent values are respected when evaluating.

GetTangentWeightMode
ERichCurveTangentWeightMode GetTangentWeightMode() const

If Interpolation Mode is RCIM_Cubic, the tangent weight mode at this key

**Returns**

Tangent Weight Mode. See ERichCurveTangentWeightMode for more detail on what each mode does.

GetValue
float32 GetValue() const

Gets the value for this key from the owning channel.

**Returns**

The float value this key represents.

SetArriveTangent
void SetArriveTangent(
float32 	InNewValue
	)

If Interpolation Mode is RCIM_Cubic, the arriving tangent at this key.

**Parameters**

InNewValue
float32

Represents the geometric tangents in the form of "tan(y/x)" where y is the key's value and x is the seconds (both relative to key)

GetArriveTangent
float32 GetArriveTangent() const

If Interpolation Mode is RCIM_Cubic, the arriving tangent at this key

**Returns**

Arrival Tangent value. Represents the geometric tangents in the form of "tan(y/x)" where y is the key's value and x is the seconds (both relative to key)

SetInterpolationMode
void SetInterpolationMode(
ERichCurveInterpMode 	InNewValue
	)

Sets the interpolation mode for this key, reflecting it in the owning channel.

**Parameters**

InNewValue
ERichCurveInterpMode

Interpolation mode this key should use to interpolate between this key and the next.

SetLeaveTangent
void SetLeaveTangent(
float32 	InNewValue
	)

If Interpolation Mode is RCIM_Cubic, the leaving tangent at this key.

**Parameters**

InNewValue
float32

Represents the geometric tangents in the form of "tan(y/x)" where y is the key's value and x is the seconds (both relative to key)

SetLeaveTangentWeight
void SetLeaveTangentWeight(
float32 	InNewValue
	)

If Tangent Weight Mode is RCTWM_WeightedLeave or RCTWM_WeightedBoth, the weight of the leaving tangent on the right side.

**Parameters**

InNewValue
float32

Specifies the new leaving tangent weight. Represents the length of the hypotenuse in the form of "sqrt(x*x+y*y)" using the same definitions for x and y as tangents.

SetTangentMode
void SetTangentMode(
ERichCurveTangentMode 	InNewValue
	)

Sets the tangent mode for this key, reflecting it in the owning channel.

**Parameters**

InNewValue
ERichCurveTangentMode

Tangent mode that this key should use to specify which tangent values are respected when evaluating. See ERichCurveTangentMode for more details.

SetTangentWeightMode
void SetTangentWeightMode(
ERichCurveTangentWeightMode 	InNewValue
	)

If Interpolation Mode is RCIM_Cubic, the tangent weight mode at this key.

**Parameters**

InNewValue
ERichCurveTangentWeightMode

Specifies which tangent weights should be respected when evaluating the key.

SetTime
void SetTime(
FFrameNumber 	NewFrameNumber,
float32 	SubFrame	 = 	0.000000,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate
	)

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
float32 	InNewValue
	)

Sets the value for this key, reflecting it in the owning channel.

**Parameters**

InNewValue
float32

The new float value for this key.

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneScriptingFloatKey::StaticClass()
