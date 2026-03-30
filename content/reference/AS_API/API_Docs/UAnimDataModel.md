# UAnimDataModel

**Visibility:** public

## Inheritance

UObject → UAnimDataModel

## Description

The Model represents the source data for animations. It contains both bone animation data as well as animated curves.  They are currently only a sub-object of a AnimSequenceBase instance. The instance derives all runtime data from the source data.

## Members

### MODEL

```
ANIMATION DATA MODEL
```

NumberOfFrames const int NumberOfFrames

### Total number of sampled animated frames

```
Total number of sampled animated frames
```

AnimatedBoneAttributes

### TArray<FAnimatedBoneAttribute> AnimatedBoneAttributes

```
TArray<FAnimatedBoneAttribute> AnimatedBoneAttributes
```

Container with all animated (bone) attribute data

### BoneAnimationTracks

```
const TArray<FBoneAnimationTrack> BoneAnimationTracks
```

All individual bone animation tracks

NumberOfKeys

### NumberOfKeys

```
const int NumberOfKeys
```

Total number of sampled animated keys

### CurveData

```
FAnimationCurveData CurveData
```

Container with all animated curve data

PlayLength

### PlayLength

```
const float32 PlayLength
```

Total playable length of the contained animation data

---

## ANIMATIONDATAMODEL

NumberOfTransformCurves

### NumberOfTransformCurves

```
const int NumberOfTransformCurves
```

NumBoneTracks const int NumBoneTracks NumberOfFloatCurves const int NumberOfFloatCurves

### AnimationSequence

```
const UAnimSequence AnimationSequence ANIMATIONDATAMODEL GetNumberOfFloatCurves int GetNumberOfFloatCurves()const
```

**Returns**

Total number of stored float curves

GetBoneAnimationTracks
const TArray<FBoneAnimationTrack>& GetBoneAnimationTracks() const

**Returns**

Array containg all bone animation tracks

GetBoneTrackByIndex
const FBoneAnimationTrack& GetBoneTrackByIndex(
int 	TrackIndex
	) const

**Returns**

Bone animation track for the provided index

GetBoneTrackByName
const FBoneAnimationTrack& GetBoneTrackByName(
FName 	TrackName
	) const

**Returns**

Bone animation track for the provided (bone) name

GetBoneTrackIndex
int GetBoneTrackIndex(
FBoneAnimationTrack 	Track
	) const

**Returns**

Internal track index for the provided bone animation track if found, otherwise returns INDEX_NONE

GetBoneTrackIndexByName
int GetBoneTrackIndexByName(
FName 	TrackName
	) const

**Returns**

Internal track index for the provided (bone) name if found, otherwise returns INDEX_NONE

GetBoneTrackNames
void GetBoneTrackNames(
TArray<FName>& 	OutNames
	) const

Populates the provided array with all contained (bone) track names

**Parameters**

OutNames
TArray<FName>&

[out] Array containing all bone track names

GetAnimationSequence
UAnimSequence GetAnimationSequence() const

**Returns**

The outer UAnimSequence object if found, otherwise returns a nullptr

GetNumberOfFrames
int GetNumberOfFrames() const

**Returns**

Total number of frames of animation data stored

GetNumberOfKeys
int GetNumberOfKeys() const

**Returns**

Total number of animation data keys stored

GetNumberOfTransformCurves
int GetNumberOfTransformCurves() const

**Returns**

Total number of stored FTransform curves

GetNumBoneTracks
const int GetNumBoneTracks() const

**Returns**

Total number of bone animation tracks

GetPlayLength
float32 GetPlayLength() const

**Returns**

Total length of play-able animation data

IsValidBoneTrackIndex
bool IsValidBoneTrackIndex(
int 	TrackIndex
	) const

**Returns**

Whether or not the provided track index is valid

STATIC FUNCTIONS
StaticClass
static UClass UAnimDataModel::StaticClass()
