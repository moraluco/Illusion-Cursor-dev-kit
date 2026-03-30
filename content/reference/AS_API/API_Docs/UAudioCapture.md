# UAudioCapture

**Visibility:** public

## Inheritance

UAudioGenerator → UAudioCapture

## Description

Class which opens up a handle to an audio capture device.  Allows other objects to get audio buffers from the capture device.

## AUDIOCAPTURE

### IsCapturingAudio

```
bool IsCapturingAudio()
```

Returns true if capturing audio

### StartCapturingAudio

```
void StartCapturingAudio()
```

Starts capturing audio

### StopCapturingAudio

```
void StopCapturingAudio()
```

Stops capturing audio

### GetAudioCaptureDeviceInfo

```
bool GetAudioCaptureDeviceInfo(FAudioCaptureDeviceInfo& OutInfo)
```

Returns the audio capture device info

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAudioCapture::StaticClass()
```
