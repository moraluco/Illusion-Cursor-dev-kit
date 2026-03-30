# UQuartzSubsystem

**Visibility:** public

## Inheritance

UTickableWorldSubsystem → UQuartzSubsystem

## Description

QUARTZ SUBSYSTEM AudioRenderThreadToGameThreadMaxLatency const float32 AudioRenderThreadToGameThreadMaxLatency AudioRenderThreadToGameThreadMinLatency const float32 AudioRenderThreadToGameThreadMinLatency AudioRenderThreadToGameThreadAverageLatency const float32 AudioRenderThreadToGameThreadAverageLatency

latency data (Audio Render Thread -> Game thread)

### QUARTZ CLOCK HANDLE

```
QUARTZ CLOCK HANDLE GetEstimatedClockRunTime float32 GetEstimatedClockRunTime(FName InClockName)
```

Returns the amount of time, in seconds, the clock has been running. Caution: due to latency, this will not be perfectly accurate

### DeleteClockByHandle

```
void DeleteClockByHandle(UQuartzClockHandle& InClockHandle)
```

delete an existing clock given its clock handle

### DeleteClockByName

```
void DeleteClockByName(FName ClockName)
```

delete an existing clock given its name

### DoesClockExist

```
bool DoesClockExist(FName ClockName)
```

returns true if the clock exists

### CreateNewClock

```
UQuartzClockHandle CreateNewClock(FName ClockName, FQuartzClockSettings InSettings, bool bOverrideSettingsIfClockExists = false, bool bUseAudioEngineClockManager = true)
```

Clock Creation create a new clock (or return handle if clock already exists)

### IsClockRunning

```
bool IsClockRunning(FName ClockName)
```

returns true if the clock is running

### GetCurrentClockTimestamp

```
FQuartzTransportTimeStamp GetCurrentClockTimestamp(FName InClockName)
```

Retrieves a timestamp for the clock

### GetDurationOfQuantizationTypeInSeconds

```
float32 GetDurationOfQuantizationTypeInSeconds(
```

	FName 	ClockName,

## Members

const 	EQuartzCommandQuantization& 	QuantizationType,

	float32 	Multiplier	 = 	1.000000

)

### Returns the duration in seconds of the given Quantization Type

```
Returns the duration in seconds of the given Quantization Type
```

**Returns**

The duration, in seconds, of a multiplier amount of the Quantization Type, or -1 in the case the clock is invalid

IsQuartzEnabled
bool IsQuartzEnabled()
GetHandleForClock
UQuartzClockHandle GetHandleForClock(
FName 	ClockName
	)

get handle for existing clock

QUARTZ SUBSYSTEM
GetAudioRenderThreadToGameThreadMaxLatency
float32 GetAudioRenderThreadToGameThreadMaxLatency()
GetGameThreadToAudioRenderThreadMinLatency
float32 GetGameThreadToAudioRenderThreadMinLatency()
GetAudioRenderThreadToGameThreadMinLatency
float32 GetAudioRenderThreadToGameThreadMinLatency()
GetAudioRenderThreadToGameThreadAverageLatency
float32 GetAudioRenderThreadToGameThreadAverageLatency()

latency data (Audio Render Thread -> Game thread)

GetRoundTripAverageLatency
float32 GetRoundTripAverageLatency()

latency data (Round trip)

GetRoundTripMaxLatency
float32 GetRoundTripMaxLatency()
GetRoundTripMinLatency
float32 GetRoundTripMinLatency()
GetGameThreadToAudioRenderThreadMaxLatency
float32 GetGameThreadToAudioRenderThreadMaxLatency()
GetGameThreadToAudioRenderThreadAverageLatency
float32 GetGameThreadToAudioRenderThreadAverageLatency()

latency data (Game thread -> Audio Render Thread)

STATIC FUNCTIONS
Get
static UQuartzSubsystem UQuartzSubsystem::Get()
StaticClass
static UClass UQuartzSubsystem::StaticClass()
