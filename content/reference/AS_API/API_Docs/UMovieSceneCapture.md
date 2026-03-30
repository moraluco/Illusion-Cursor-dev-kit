# UMovieSceneCapture

**Visibility:** public

## Inheritance

UObject → UMovieSceneCapture → UAutomatedLevelSequenceCapture → ULevelCapture

## Description

Class responsible for capturing scene data

## CAPTURESETTINGS

### ImageCaptureProtocol

```
UMovieSceneCaptureProtocolBase ImageCaptureProtocol
```

Capture protocol responsible for actually capturing frame data

### AudioCaptureProtocol

```
UMovieSceneCaptureProtocolBase AudioCaptureProtocol
```
### Settings

```
FMovieSceneCaptureSettings Settings
```

Settings that define how to capture

---

## GENERAL

### InheritedCommandLineArguments

```
FString InheritedCommandLineArguments
```

Command line arguments inherited from this process

### AdditionalCommandLineArguments

```
FString AdditionalCommandLineArguments
```

Additional command line arguments to pass to the external process when capturing

### bCloseEditorWhenCaptureStarts

```
bool bCloseEditorWhenCaptureStarts
```

When enabled, the editor will shutdown when the capture starts

### bUseSeparateProcess

```
bool bUseSeparateProcess
```

Whether to capture the movie in a separate process or not

---

## CAPTURE

### GetImageCaptureProtocol

```
UMovieSceneCaptureProtocolBase GetImageCaptureProtocol()
```

Access the capture protocol we are using

### SetAudioCaptureProtocolType

```
void SetAudioCaptureProtocolType(TSubclassOf<UMovieSceneCaptureProtocolBase> ProtocolType)
```

SetImageCaptureProtocolType

### void SetImageCaptureProtocolType

```
void SetImageCaptureProtocolType(TSubclassOf<UMovieSceneCaptureProtocolBase> ProtocolType)
```

GetAudioCaptureProtocol

### UMovieSceneCaptureProtocolBase GetAudioCaptureProtocol

```
UMovieSceneCaptureProtocolBase GetAudioCaptureProtocol()
```

---

## FUNCTIONS

### SetAudioCaptureProtocol

```
void SetAudioCaptureProtocol(UMovieSceneAudioCaptureProtocolBase Value)
```

SetImageCaptureProtocol

### void SetImageCaptureProtocol

```
void SetImageCaptureProtocol(UMovieSceneImageCaptureProtocolBase Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneCapture::StaticClass()
```
