# UTimecodeProvider

**Visibility:** public

## Inheritance

UObject → UTimecodeProvider → UGenlockedTimecodeProvider → USystemTimeTimecodeProvider

## Description

A class responsible of fetching a timecode from a source.  Note, FApp::GetTimecode and FApp::GetTimecodeFramerate should be used to retrieve the current system Timecode and Framerate.

## PROVIDER

### SynchronizationState

```
const ETimecodeProviderSynchronizationState SynchronizationState
```

The state of the TimecodeProvider and if it's currently synchronized and the Timecode and FrameRate getters are valid.

---

## SETTINGS

### FrameDelay

```
float32 FrameDelay
```

Number of frames to subtract from the qualified frame time when GetDelayedQualifiedFrameTime or GetDelayedTimecode is called.  @see GetDelayedQualifiedFrameTime, GetDelayedTimecode

---

## PROVIDER

### GetSynchronizationState

```
ETimecodeProviderSynchronizationState GetSynchronizationState()const
```

The state of the TimecodeProvider and if it's currently synchronized and the Timecode and FrameRate getters are valid.

### FetchAndUpdate

```
void FetchAndUpdate()
```

Update the state of the provider. Call it to ensure timecode and state are updated.  It is suggested to fetch timecode from its source and cache it for the getters.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTimecodeProvider::StaticClass()
```
