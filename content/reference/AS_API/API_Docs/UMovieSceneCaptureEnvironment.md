# UMovieSceneCaptureEnvironment

**Visibility:** public

## Inheritance

UObject → UMovieSceneCaptureEnvironment

## Description

STATIC VARIABLES CaptureFrameNumber static const int UMovieSceneCaptureEnvironment::CaptureFrameNumber CaptureElapsedTime static const float32 UMovieSceneCaptureEnvironment::CaptureElapsedTime

## CINEMATICS \| CAPTURE

### FindImageCaptureProtocol

```
static UMovieSceneImageCaptureProtocolBase UMovieSceneCaptureEnvironment::FindImageCaptureProtocol()
```

Attempt to locate a capture protocol

### may not be in a capturing state

```
may not be in a capturing state
```

GetCaptureElapsedTime

### static float32 UMovieSceneCaptureEnvironment::GetCaptureElapsedTime

```
static float32 UMovieSceneCaptureEnvironment::GetCaptureElapsedTime()
```

Get the total elapsed time of the current capture in seconds

### GetCaptureFrameNumber

```
static int UMovieSceneCaptureEnvironment::GetCaptureFrameNumber()
```

Get the frame number of the current capture

### IsCaptureInProgress

```
static bool UMovieSceneCaptureEnvironment::IsCaptureInProgress()
```

Return true if there is any capture currently active (even in a warm-up state).  Useful for checking whether to do certain operations in BeginPlay

### FindAudioCaptureProtocol

```
static UMovieSceneAudioCaptureProtocolBase UMovieSceneCaptureEnvironment::FindAudioCaptureProtocol()
```

Attempt to locate a capture protocol

### may not be in a capturing state

```
may not be in a capturing state
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneCaptureEnvironment::StaticClass()
```
