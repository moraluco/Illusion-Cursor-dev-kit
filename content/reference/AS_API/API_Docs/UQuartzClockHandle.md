# UQuartzClockHandle

**Visibility:** public

## Inheritance

UObject → UQuartzClockHandle → QUANTIZATION → SetBeatsPerMinute

## Description

void SetBeatsPerMinute( FQuartzQuantizationBoundary 	QuantizationBoundary, FOnQuartzCommandEventBP 	Delegate, UQuartzClockHandle& 	ClockHandle, float32 	BeatsPerMinute	 = 	60.000000 	) SetMillisecondsPerTick void SetMillisecondsPerTick( FQuartzQuantizationBoundary 	QuantizationBoundary, FOnQuartzCommandEventBP 	Delegate, UQuartzClockHandle& 	ClockHandle, float32 	MillisecondsPerTick	 = 	100.000000 	)

Metronome Alteration (setters)

SetThirtySecondNotesPerMinute void SetThirtySecondNotesPerMinute(

FQuartzQuantizationBoundary 	QuantizationBoundary, FOnQuartzCommandEventBP 	Delegate, UQuartzClockHandle& 	ClockHandle, float32 	ThirtySecondsNotesPerMinute	 = 	960.000000

) SetTicksPerSecond void SetTicksPerSecond( FQuartzQuantizationBoundary 	QuantizationBoundary, FOnQuartzCommandEventBP 	Delegate, UQuartzClockHandle& 	ClockHandle, float32 	TicksPerSecond	 = 	10.000000 	) GetMillisecondsPerTick float32 GetMillisecondsPerTick() const

### Metronome getters

```
Metronome getters
```

GetSecondsPerTick

### float32 GetSecondsPerTick

```
float32 GetSecondsPerTick()const GetThirtySecondNotesPerMinute
```

float32 GetThirtySecondNotesPerMinute() const

### GetTicksPerSecond

```
float32 GetTicksPerSecond()const
```

SetSecondsPerTick

### void SetSecondsPerTick

```
void SetSecondsPerTick(FQuartzQuantizationBoundary QuantizationBoundary, FOnQuartzCommandEventBP Delegate, UQuartzClockHandle& ClockHandle, float32 SecondsPerTick = 0.250000)
```

GetBeatsPerMinute

### float32 GetBeatsPerMinute

```
float32 GetBeatsPerMinute()const QUARTZ CLOCK
```

ResetTransportQuantized

### void ResetTransportQuantized

```
void ResetTransportQuantized(FQuartzQuantizationBoundary InQuantizationBoundary, FOnQuartzCommandEventBP InDelegate, UQuartzClockHandle& ClockHandle)
```

SubscribeToQuantizationEvent

### void SubscribeToQuantizationEvent

```
void SubscribeToQuantizationEvent(EQuartzCommandQuantization InQuantizationBoundary, FOnQuartzMetronomeEventBP OnQuantizationEvent, UQuartzClockHandle& ClockHandle)
```

### Metronome subscription

```
Metronome subscription
```

GetDurationOfQuantizationTypeInSeconds

### float32 GetDurationOfQuantizationTypeInSeconds

```
float32 GetDurationOfQuantizationTypeInSeconds(
```

const 	EQuartzCommandQuantization& 	QuantizationType,

## Members

	float32 	Multiplier	 = 	1.000000

)

### Type

```
Returns the duration in seconds of the given Quantization Type
```
**Returns**

The duration, in seconds, of a multiplier amount of the Quantization Type, or -1 in the case the clock is invalid

UnsubscribeFromTimeDivision
void UnsubscribeFromTimeDivision(
EQuartzCommandQuantization 	InQuantizationBoundary,
UQuartzClockHandle& 	ClockHandle
	)
IsClockRunning
bool IsClockRunning()
ResumeClock
void ResumeClock(
UQuartzClockHandle& 	ClockHandle
	)
StartClock
void StartClock(
UQuartzClockHandle& 	ClockHandle
	)

Clock manipulation

StartOtherClock
void StartOtherClock(

FName 	OtherClockName,
FQuartzQuantizationBoundary 	InQuantizationBoundary,
FOnQuartzCommandEventBP 	InDelegate	 = 	FOnQuartzCommandEventBP ( )

)

"other" clock manipulation

UnsubscribeFromAllTimeDivisions
void UnsubscribeFromAllTimeDivisions(
UQuartzClockHandle& 	ClockHandle
	)
SubscribeToAllQuantizationEvents
void SubscribeToAllQuantizationEvents(
FOnQuartzMetronomeEventBP 	OnQuantizationEvent,
UQuartzClockHandle& 	ClockHandle
	)
QUARTZ CLOCK HANDLE
GetEstimatedRunTime
float32 GetEstimatedRunTime()

Returns the amount of time, in seconds, the clock has been running. Caution: due to latency, this will not be perfectly accurate

GetCurrentTimestamp
FQuartzTransportTimeStamp GetCurrentTimestamp()

Retrieves a timestamp for the clock

QUARTZ SUBSYSTEM
PauseClock
void PauseClock(
UQuartzClockHandle& 	ClockHandle
	)
StopClock
void StopClock(
bool 	CancelPendingEvents,
UQuartzClockHandle& 	ClockHandle
	)
STATIC FUNCTIONS
StaticClass
static UClass UQuartzClockHandle::StaticClass()
