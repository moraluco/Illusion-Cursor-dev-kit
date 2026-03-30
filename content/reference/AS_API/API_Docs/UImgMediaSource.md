# UImgMediaSource

**Visibility:** public

## Inheritance

UBaseMediaSource → UImgMediaSource

## Description

Media source for EXR image sequences.

Image sequence media sources point to a directory that contains a series of image files in which each image represents a single frame of the sequence.  BMP, EXR, PNG and JPG images are currently supported. EXR image sequences are optimized for performance. The first frame of an image sequence is used to determine the image dimensions (all formats) and frame rate (EXR only).

The image sequence directory may contain sub-directories, which are called 'proxies'. Proxies can be used to provide alternative media for playback during development and testing of a game. One common scenario is the use of low resolution versions of image sequence media on computers that are too slow or don't have enough storage to play the original high-res media.

## SEQUENCE

### ProxyOverride

```
FString ProxyOverride
```

Name of the proxy directory to use.

### bFillGapsInSequence

```
bool bFillGapsInSequence
```

If true, then any gaps in the sequence will be filled with blank frames.

### SequencePath

```
FString SequencePath
```

The directory that contains the image sequence files.

### IsPathRelativeToProjectRoot

```
bool IsPathRelativeToProjectRoot
```

If true, then relative Sequence Paths are relative to the project root directory. If false, then relative to the Content directory.

---

## IMGMEDIA \| IMGMEDIASOURCE

### RemoveGlobalCamera

```
void RemoveGlobalCamera(AActor InActor)
```

This camera is no longer looking at any img seqeunces.

**Parameters**

InActor
AActor

Camera Object.

AddTargetObject
void AddTargetObject(
AActor 	InActor,
float32 	Width	 = 	- 1.000000
	)

This object is using our img sequence.

**Parameters**

InActor
AActor

Object using our img sequence.

Width
float32

Width of the object. If < 0, then get the width automatically.

GetProxies
void GetProxies(
TArray<FString>& 	OutProxies
	) const

Get the names of available proxy directories.

**Parameters**

OutProxies
TArray<FString>&

Will contain the names of available proxy directories, if any.

GetSequencePath
const FString GetSequencePath() const

Get the path to the image sequence directory to be played.

**Returns**

The file path.

AddGlobalCamera
void AddGlobalCamera(
AActor 	InActor
	)

This camera could be looking at any img sequence.

**Parameters**

InActor
AActor

Camera object.

RemoveTargetObject
void RemoveTargetObject(
AActor 	InActor
	)

This object is no longer using our img sequence.

**Parameters**

InActor
AActor

Object no longer using our img sequence.

SetMipLevelDistance
void SetMipLevelDistance(
float32 	Distance
	)

Manually set when mip level 0 should appear.

**Parameters**

Distance
float32

Furthest distance from the camera when mip level 0 should be at 100%.

SetSequencePath
void SetSequencePath(
FString 	Path
	)

Set the path to the image sequence directory this source represents.

**Parameters**

Path
FString

The path to an image file in the desired directory.

STATIC FUNCTIONS
StaticClass
static UClass UImgMediaSource::StaticClass()
