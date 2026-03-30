# UUserDefinedCaptureProtocol

**Visibility:** public

## Inheritance

UMovieSceneImageCaptureProtocolBase → UUserDefinedCaptureProtocol → UUserDefinedImageCaptureProtocol

## Description

A blueprintable capture protocol that defines how to capture frames from the engine

## CAPTURE

### CurrentFrameMetrics

```
const FFrameMetrics CurrentFrameMetrics
```

Access this protocol's current frame metrics

---

## CAPTURE

### OnPreTick

```
void OnPreTick()
```

Called before the capture process itself is ticked, before each frame is set up for capture Useful for any pre-frame set up or resetting the previous frame's state

### GetCurrentFrameMetrics

```
FFrameMetrics GetCurrentFrameMetrics()const
```

Access this protocol's current frame metrics

### OnBeginFinalize

```
void OnBeginFinalize()
```

Called when this protocol is going to be shut down

### should not capture any more frames

```
should not capture any more frames
```

OnCanFinalize

### bool OnCanFinalize

```
bool OnCanFinalize()const
```

Called to check whether this protocol has finished any pending tasks, and can now be shut down

### OnCaptureFrame

```
void OnCaptureFrame()
```

Called when this protocol should capture the current frame

### OnFinalize

```
void OnFinalize()
```

Called to complete finalization of this protocol

### OnPauseCapture

```
void OnPauseCapture()
```

Called when this protocol should temporarily stop capturing frames

### OnPixelsReceived

```
void OnPixelsReceived(FCapturedPixels Pixels, FCapturedPixelsID ID, FFrameMetrics FrameMetrics)
```

Called when pixels have been received for the specified stream name

### GenerateFilename

```
FString GenerateFilename(FFrameMetrics InFrameMetrics)const
```

Generate a filename for the current frame

### OnSetup

```
bool OnSetup()
```

Called once at the start of the capture process, but before any warmup frames

**Returns**

true if this protocol set up successfully, false otherwise

OnStartCapture
void OnStartCapture()

Called when this protocol should start capturing frames

OnTick
void OnTick()

Called after the capture process itself is ticked, after the frame is set up for capture, but before most actors have ticked

OnWarmUp
void OnWarmUp()

Called when the capture process is warming up. Protocols may transition from either an initialized, or capturing state to warm-up

ResolveBuffer
void ResolveBuffer(
UTexture 	Buffer,
FCapturedPixelsID 	BufferID
	)

Resolve the specified buffer and pass it directly to the specified handler when done (does not pass to any bound streams) * *

**Parameters**

Buffer
UTexture

The desired buffer to save *

BufferID
FCapturedPixelsID

The ID of this buffer that is passed to the pixel handler (e.g. a composition pass name).

StartCapturingFinalPixels
void StartCapturingFinalPixels(
FCapturedPixelsID 	StreamID
	)

Instruct this protocol to start capturing LDR final pixels (including slate widgets and burn-ins)

**Parameters**

StreamID
FCapturedPixelsID

The identifier to use for the final pixels buffer

StopCapturingFinalPixels
void StopCapturingFinalPixels()

Instruct this protocol to stop capturing LDR final pixels

STATIC FUNCTIONS
StaticClass
static UClass UUserDefinedCaptureProtocol::StaticClass()
