# USequencerScriptingRangeExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → USequencerScriptingRangeExtensions

## Description

Function library containing methods that should be hoisted onto FSequencerScriptingRanges

## SEQUENCER \| SEQUENCE

### RemoveEnd

```
static void USequencerScriptingRangeExtensions::RemoveEnd(FSequencerScriptingRange& Range)
```

Remove the end from this range, making it infinite

**Parameters**

Range
FSequencerScriptingRange&

The range to remove the end from

GetEndSeconds
static float32 USequencerScriptingRangeExtensions::GetEndSeconds(

FSequencerScriptingRange 	Range

)

Get the ending time for the specified range in seconds, if it has one. Defined as the first time that is outside of the range.

**Parameters**

Range
FSequencerScriptingRange

The range to get the end from

GetStartFrame
static int USequencerScriptingRangeExtensions::GetStartFrame(
FSequencerScriptingRange 	Range
	)

Get the starting frame for the specified range, if it has one. Defined as the first valid frame that is inside the range.

**Parameters**

Range
FSequencerScriptingRange

The range to get the start from

GetStartSeconds
static float32 USequencerScriptingRangeExtensions::GetStartSeconds(

FSequencerScriptingRange 	Range

)

Get the starting time for the specified range in seconds, if it has one. Defined as the first valid time that is inside the range.

**Parameters**

Range
FSequencerScriptingRange

The range to get the start from

HasEnd
static bool USequencerScriptingRangeExtensions::HasEnd(
FSequencerScriptingRange 	Range
	)

Check whether this range has an end

**Parameters**

Range
FSequencerScriptingRange

The range to check

HasStart
static bool USequencerScriptingRangeExtensions::HasStart(
FSequencerScriptingRange 	Range
	)

Check whether this range has a start

**Parameters**

Range
FSequencerScriptingRange

The range to check

GetEndFrame
static int USequencerScriptingRangeExtensions::GetEndFrame(
FSequencerScriptingRange 	Range
	)

Get the ending frame for the specified range, if it has one. Defined as the first subsequent frame that is outside of the range.

**Parameters**

Range
FSequencerScriptingRange

The range to get the end from

RemoveStart
static void USequencerScriptingRangeExtensions::RemoveStart(
FSequencerScriptingRange& 	Range
	)

Remove the start from this range, making it infinite

**Parameters**

Range
FSequencerScriptingRange&

The range to remove the start from

SetEndFrame
static void USequencerScriptingRangeExtensions::SetEndFrame(
FSequencerScriptingRange& 	Range,
int 	End
	)

Set the ending frame for the specified range. Interpreted as the first subsequent frame that is outside of the range.

**Parameters**

Range
FSequencerScriptingRange&

The range to set the end on

SetEndSeconds
static void USequencerScriptingRangeExtensions::SetEndSeconds(
FSequencerScriptingRange& 	Range,
float32 	End
	)

Set the ending time for the specified range in seconds. Interpreted as the first time that is outside of the range.

**Parameters**

Range
FSequencerScriptingRange&

The range to set the end on

SetStartFrame
static void USequencerScriptingRangeExtensions::SetStartFrame(
FSequencerScriptingRange& 	Range,
int 	Start
	)

Set the starting frame for the specified range. Interpreted as the first valid frame that is inside the range.

**Parameters**

Range
FSequencerScriptingRange&

The range to set the start on

SetStartSeconds
static void USequencerScriptingRangeExtensions::SetStartSeconds(

FSequencerScriptingRange& 	Range,
float32 	Start

)

Set the starting time for the specified range in seconds. Interpreted as the first valid time that is inside the range.

**Parameters**

Range
FSequencerScriptingRange&

The range to set the start on

STATIC FUNCTIONS
StaticClass
static UClass USequencerScriptingRangeExtensions::StaticClass()
