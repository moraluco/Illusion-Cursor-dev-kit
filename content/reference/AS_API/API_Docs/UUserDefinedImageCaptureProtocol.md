# UUserDefinedImageCaptureProtocol

**Visibility:** public

## Inheritance

UUserDefinedCaptureProtocol → UUserDefinedImageCaptureProtocol

## Description

A blueprintable capture protocol tailored to capturing and exporting frames as images

## CAPTURE

### bEnableCompression

```
bool bEnableCompression
```

Whether to save images with compression or not. Not supported for bitmaps.

### CompressionQuality

```
int CompressionQuality
```

The compression quality for the image type. For EXRs, 0 = Default ZIP compression, 1 = No compression, PNGs and JPEGs expect a value between 0 and 100

### Format

```
EDesiredImageFormat Format
```

The image format to save as

---

## CAPTURE

### GenerateFilenameForCurrentFrame

```
FString GenerateFilenameForCurrentFrame()
```

Generate a filename for the current frame using this protocol's file name formatter * *

**Returns**

A fully qualified file name for the current frame number

WriteImageToDisk
void WriteImageToDisk(
FCapturedPixels 	PixelData,
FCapturedPixelsID 	StreamID,
FFrameMetrics 	FrameMetrics,
bool 	bCopyImageData	 = 	false
	)

Generate a filename for the current frame using this protocol's file name formatter * *

**Returns**

A fully qualified file name for the current frame number

GenerateFilenameForBuffer
FString GenerateFilenameForBuffer(
UTexture 	Buffer,
FCapturedPixelsID 	StreamID
	)

Generate a filename for the specified buffer using this protocol's file name formatter * *

**Parameters**

Buffer
UTexture

The desired buffer to generate a filename for *

StreamID
FCapturedPixelsID

The ID of the stream for this buffer (e.g. a composition pass name) *

**Returns**

A fully qualified file name

STATIC FUNCTIONS
StaticClass
static UClass UUserDefinedImageCaptureProtocol::StaticClass()
