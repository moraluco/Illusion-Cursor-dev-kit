# Animation

## Inheritance

Animation → ANIMATION → GetAnimationGraphs

## Description

static void Animation::GetAnimationGraphs( UAnimBlueprint 	AnimationBlueprint, TArray<UAnimationGraph>& 	AnimationGraphs 	)

Returns all Animation Graphs contained by the provided Animation Blueprint

GetNodesOfClass static void Animation::GetNodesOfClass(

UAnimBlueprint 	AnimationBlueprint, TSubclassOf<UAnimGraphNode_Base> 	NodeClass, TArray<UAnimGraphNode_Base>& 	GraphNodes, bool 	bIncludeChildClasses	 = 	true

)

Returns all Animation Graph Nodes of the provided Node Class contained by the Animation Blueprint

## ANIMATIONBLUEPRINTLIBRARY \| ADDITIVE

### SetAdditiveAnimationType

```
static void Animation::SetAdditiveAnimationType(UAnimSequence AnimationSequence, EAdditiveAnimationType AdditiveAnimationType)
```

Sets the Additive Animation type for the given Animation Sequence

### GetAdditiveBasePoseType

```
static void Animation::GetAdditiveBasePoseType(
```

const 	UAnimSequence 	AnimationSequence,

	EAdditiveBasePoseType& 	AdditiveBasePoseType

)

### Retrieves the Additive Base Pose type for the given Animation Sequence

```
Retrieves the Additive Base Pose type for the given Animation Sequence
```

GetAdditiveAnimationType

### static void Animation::GetAdditiveAnimationType

```
static void Animation::GetAdditiveAnimationType(
```

const 	UAnimSequence 	AnimationSequence,

	EAdditiveAnimationType& 	AdditiveAnimationType

### )

```
)
```

Retrieves the Additive Animation type for the given Animation Sequence

### SetAdditiveBasePoseType

```
static void Animation::SetAdditiveBasePoseType(UAnimSequence AnimationSequence, EAdditiveBasePoseType AdditiveBasePoseType)
```

Sets the Additive Base Pose type for the given Animation Sequence

---

## ANIMATIONBLUEPRINTLIBRARY \| ANIMATION

### GetNumFrames

```
static void Animation::GetNumFrames(const UAnimSequenceBase AnimationSequenceBase, int& NumFrames)
```

Retrieves the number of animation frames for the given Animation Sequence

### GetSequenceLength

```
static void Animation::GetSequenceLength(const UAnimSequenceBase AnimationSequenceBase, float32& Length)
```

Retrieves the Length of the given Animation Sequence

### GetRateScale

```
static void Animation::GetRateScale(const UAnimSequenceBase AnimationSequenceBase, float32& RateScale)
```

Retrieves the (Play) Rate Scale of the given Animation Sequence

### GetNumKeys

```
static void Animation::GetNumKeys(const UAnimSequenceBase AnimationSequenceBase, int& NumKeys)
```

Retrieves the number of animation keys for the given Animation Sequence

### SetRateScale

```
static void Animation::SetRateScale(UAnimSequenceBase AnimationSequenceBase, float32 RateScale)
```

Sets the (Play) Rate Scale for the given Animation Sequence

### GetAnimationTrackNames

```
static void Animation::GetAnimationTrackNames(const UAnimSequenceBase AnimationSequenceBase, TArray<FName>& TrackNames)
```

Retrieves the Names of the individual ATracks for the given Animation Sequence

### GetAnimationCurveNames

```
static void Animation::GetAnimationCurveNames(const UAnimSequence AnimationSequence, ERawCurveTrackTypes CurveType, TArray<FName>& CurveNames)
```

Retrieves the Names of the individual float curves for the given Animation Sequence

---

## ANIMATIONBLUEPRINTLIBRARY \| ANIMATIONNOTIFIES

### GetAnimNotifyEventDuration

```
static float32 Animation::GetAnimNotifyEventDuration(FAnimNotifyEvent NotifyEvent)
```

Returns the duration for a NotifyEvent, only non-zero for Anim Notify States

### RemoveAllAnimationNotifyTracks

```
static void Animation::RemoveAllAnimationNotifyTracks(UAnimSequenceBase AnimationSequenceBase)
```

Removes All Animation Notify Tracks from Animation Sequence

### AddAnimationNotifyTrack

```
static void Animation::AddAnimationNotifyTrack(
```

UAnimSequenceBase 	AnimationSequenceBase,

### FName 	NotifyTrackName,

```
FName NotifyTrackName, FLinearColor TrackColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000)
```

)

### Adds an Animation Notify Track to the Animation Sequence

```
Adds an Animation Notify Track to the Animation Sequence
```

RemoveAnimationNotifyTrack

### static void Animation::RemoveAnimationNotifyTrack

```
static void Animation::RemoveAnimationNotifyTrack(UAnimSequenceBase AnimationSequenceBase, FName NotifyTrackName)
```

Removes an Animation Notify Track from Animation Sequence by Name

### GetAnimNotifyEventTriggerTime

```
static float32 Animation::GetAnimNotifyEventTriggerTime(FAnimNotifyEvent NotifyEvent)
```

Returns the actual trigger time for a NotifyEvent

### GetAnimationNotifyTrackNames

```
static void Animation::GetAnimationNotifyTrackNames(
```

const 	UAnimSequenceBase 	AnimationSequenceBase,

	TArray<FName>& 	TrackNames

)

### Sequence

```
Retrieves all Unique Animation Notify Track Names found within the given Animation Sequence
```

---

## ANIMATIONBLUEPRINTLIBRARY \| BONES

### RemoveBoneAnimation

```
static void Animation::RemoveBoneAnimation(UAnimSequence AnimationSequence, FName BoneName, bool bIncludeChildren = true, bool bFinalize = true)
```

Removes an Animation Curve by Name from the given Animation Sequence (Raw Animation Curves [Names] may not be removed from the Skeleton)

**Parameters**

AnimationSequence
UAnimSequence

: AnimSequence

BoneName
FName

: Name of bone track user wants to remove

bIncludeChildren
bool

: true if user wants to include all children of BoneName

bFinalize
bool

: If you set this to true, it will trigger compression. If you set bFinalize to be false, you'll have to manually trigger Finalize.

---

## ANIMATIONBLUEPRINTLIBRARY \| COMPRESSION

### SetCurveCompressionSettings

```
static void Animation::SetCurveCompressionSettings(
```

UAnimSequence 	AnimationSequence,

### CompressionSettings

```
UAnimCurveCompressionSettings CompressionSettings
```

)

### Sets the Curve Compression Settings for the given Animation Sequence

```
Sets the Curve Compression Settings for the given Animation Sequence
```

GetCurveCompressionSettings

### static void Animation::GetCurveCompressionSettings

```
static void Animation::GetCurveCompressionSettings(
```

const 	UAnimSequence 	AnimationSequence,

	UAnimCurveCompressionSettings& 	CompressionSettings

)

### Retrieves the Curve Compression Settings for the given Animation Sequence

```
Retrieves the Curve Compression Settings for the given Animation Sequence
```

SetBoneCompressionSettings

### static void Animation::SetBoneCompressionSettings

```
static void Animation::SetBoneCompressionSettings(
```

UAnimSequence 	AnimationSequence,

### CompressionSettings

```
UAnimBoneCompressionSettings CompressionSettings
```

)

### Sets the Bone Compression Settings for the given Animation Sequence

```
Sets the Bone Compression Settings for the given Animation Sequence
```

GetBoneCompressionSettings

### static void Animation::GetBoneCompressionSettings

```
static void Animation::GetBoneCompressionSettings(
```

const 	UAnimSequence 	AnimationSequence,

	UAnimBoneCompressionSettings& 	CompressionSettings

)

### Sequence

```
Retrieves the Bone Compression Settings for the given Animation Sequence
```

---

## ANIMATIONBLUEPRINTLIBRARY \| CURVES

### CopyAnimationCurveNamesToSkeleton

```
static void Animation::CopyAnimationCurveNamesToSkeleton(USkeleton OldSkeleton, USkeleton NewSkeleton, UAnimSequenceBase SequenceBase, ERawCurveTrackTypes CurveType)
```

Ensures that any curve names that do not exist on the NewSkeleton are added to it, in which case the SmartName on the actual curve itself will also be updated

### DoesCurveExist

```
static bool Animation::DoesCurveExist(UAnimSequence AnimationSequence, FName CurveName, ERawCurveTrackTypes CurveType)
```

Checks whether or not the given Curve Name exist on the Skeleton referenced by the given Animation Sequence

### GetFloatKeys

```
static void Animation::GetFloatKeys(UAnimSequence AnimationSequence, FName CurveName, TArray<float32>& Times, TArray<float32>& Values)
```

Retrieves, a multiple of, Float Key(s) from the specified Animation Curve inside of the given Animation Sequence

### RemoveCurve

```
static void Animation::RemoveCurve(UAnimSequence AnimationSequence, FName CurveName, bool bRemoveNameFromSkeleton = false)
```

Removes an Animation Curve by Name from the given Animation Sequence (Raw Animation Curves [Names] may not be removed from the Skeleton)

### AddVectorCurveKeys

```
static void Animation::AddVectorCurveKeys(UAnimSequence AnimationSequence, FName CurveName, TArray<float32> Times, TArray<FVector> Vectors)
```

Adds a multiple of Vector Keys to the specified Animation Curve inside of the given Animation Sequence

### AddTransformationCurveKeys

```
static void Animation::AddTransformationCurveKeys(UAnimSequence AnimationSequence, FName CurveName, TArray<float32> Times, TArray<FTransform> Transforms)
```

Adds a multiple of Transformation Keys to the specified Animation Curve inside of the given Animation Sequence

### AddFloatCurveKey

```
static void Animation::AddFloatCurveKey(UAnimSequence AnimationSequence, FName CurveName, float32 Time, float32 Value)
```

Adds a Float Key to the specified Animation Curve inside of the given Animation Sequence

### AddVectorCurveKey

```
static void Animation::AddVectorCurveKey(UAnimSequence AnimationSequence, FName CurveName, float32 Time, const FVector Vector)
```

Adds a Vector Key to the specified Animation Curve inside of the given Animation Sequence

### AddCurve

```
static void Animation::AddCurve(
```

UAnimSequence 	AnimationSequence,

FName 	CurveName,

ERawCurveTrackTypes 	CurveType	 = 	ERawCurveTrackTypes :: RCT_Float,

bool 	bMetaDataCurve	 = 	false

)

### Adds an Animation Curve by Type and Name to the given Animation Sequence

```
Adds an Animation Curve by Type and Name to the given Animation Sequence
```

AddTransformationCurveKey

### static void Animation::AddTransformationCurveKey

```
static void Animation::AddTransformationCurveKey(UAnimSequence AnimationSequence, FName CurveName, float32 Time, FTransform Transform)
```

Adds a Transformation Key to the specified Animation Curve inside of the given Animation Sequence

### AddFloatCurveKeys

```
static void Animation::AddFloatCurveKeys(UAnimSequence AnimationSequence, FName CurveName, TArray<float32> Times, TArray<float32> Values)
```

Adds a multiple of Float Keys to the specified Animation Curve inside of the given Animation Sequence

### GetTransformationKeys

```
static void Animation::GetTransformationKeys(UAnimSequence AnimationSequence, FName CurveName, TArray<float32>& Times, TArray<FTransform>& Values)
```

Retrieves, a multiple of, Transformation Key(s) from the specified Animation Curve inside of the given Animation Sequence

### GetVectorKeys

```
static void Animation::GetVectorKeys(UAnimSequence AnimationSequence, FName CurveName, TArray<float32>& Times, TArray<FVector>& Values)
```

Retrieves, a multiple of, Vector Key(s) from the specified Animation Curve inside of the given Animation Sequence

### RemoveAllCurveData

```
static void Animation::RemoveAllCurveData(UAnimSequence AnimationSequence)
```

Removes all Animation Curve Data from the given Animation Sequence (Raw Animation Curves [Names] may not be removed from the Skeleton)

### RemoveAllBoneAnimation

```
static void Animation::RemoveAllBoneAnimation(UAnimSequence AnimationSequence)
```

Removes all Animation Bone Track Data from the given Animation Sequence

---

## ANIMATIONBLUEPRINTLIBRARY \| HELPERS

### GetFrameAtTime

```
static void Animation::GetFrameAtTime(const UAnimSequenceBase AnimationSequenceBase, float32 Time, int& Frame)
```

Retrieves the Frame Index at the specified Time Value for the given Animation Sequence

### GetTimeAtFrame

```
static void Animation::GetTimeAtFrame(const UAnimSequenceBase AnimationSequenceBase, int Frame, float32& Time)
```

Retrieves the Time Value at the specified Frame Indexfor the given Animation Sequence

### IsValidRawAnimationTrackName

```
static bool Animation::IsValidRawAnimationTrackName(
```

const 	UAnimSequenceBase 	AnimationSequenceBase,

### TrackName

```
const 	FName TrackName
```

)

### Checks whether or not the given Animation Track Name is contained within the Animation Sequence

```
Checks whether or not the given Animation Track Name is contained within the Animation Sequence
```

FindBonePathToRoot

### static void Animation::FindBonePathToRoot

```
static void Animation::FindBonePathToRoot(const UAnimSequenceBase AnimationSequenceBase, FName BoneName, TArray<FName>& BonePath)
```

Finds the Bone Path from the given Bone to the Root Bone

### IsValidTime

```
static void Animation::IsValidTime(const UAnimSequenceBase AnimationSequenceBase, float32 Time, bool& IsValid)
```

Checks whether or not the given Time Value lies within the given Animation Sequence's Length

### IsValidAnimNotifyTrackName

```
static bool Animation::IsValidAnimNotifyTrackName(
```

const 	UAnimSequenceBase 	AnimationSequenceBase,

### NotifyTrackName

```
FName NotifyTrackName
```

)

### Checks whether or not the given Track Name is a valid Animation Notify Track in the Animation Sequence

```
Checks whether or not the given Track Name is a valid Animation Notify Track in the Animation Sequence
```

IsValidAnimationSyncMarkerName

### static bool Animation::IsValidAnimationSyncMarkerName

```
static bool Animation::IsValidAnimationSyncMarkerName(const UAnimSequence AnimationSequence, FName MarkerName)
```

Checks whether or not the given Marker Name is a valid Animation Sync Marker Name

---

## ANIMATIONBLUEPRINTLIBRARY \| INTERPOLATION

### GetAnimationInterpolationType

```
static void Animation::GetAnimationInterpolationType(
```

const 	UAnimSequence 	AnimationSequence,

	EAnimInterpolationType& 	InterpolationType

### )

```
)
```

Retrieves the Animation Interpolation type for the given Animation Sequence

### SetAnimationInterpolationType

```
static void Animation::SetAnimationInterpolationType(UAnimSequence AnimationSequence, EAnimInterpolationType InterpolationType)
```

Sets the Animation Interpolation type for the given Animation Sequence

---

## ANIMATIONBLUEPRINTLIBRARY \| MARKERSYNCING

### GetAnimationSyncMarkers

```
static void Animation::GetAnimationSyncMarkers(
```

const 	UAnimSequence 	AnimationSequence,

	TArray<FAnimSyncMarker>& 	Markers

### )

```
)
```

Retrieves all the Animation Sync Markers for the given Animation Sequence

### RemoveAnimationSyncMarkersByName

```
static int Animation::RemoveAnimationSyncMarkersByName(UAnimSequence AnimationSequence, FName MarkerName)
```

Removes All Animation Sync Marker found within the Animation Sequence whose name matches MarkerName, and returns the number of removed instances

### GetAnimationSyncMarkersForTrack

```
static void Animation::GetAnimationSyncMarkersForTrack(
```

const 	UAnimSequence 	AnimationSequence,

	FName 	NotifyTrackName,

	TArray<FAnimSyncMarker>& 	Markers

### )

```
)
```

Retrieves all Animation Sync Markers for the given Notify Track Name from the given Animation Sequence

### RemoveAnimationSyncMarkersByTrack

```
static int Animation::RemoveAnimationSyncMarkersByTrack(UAnimSequence AnimationSequence, FName NotifyTrackName)
```

Removes All Animation Sync Marker found within the Animation Sequence that belong to the specific Notify Track, and returns the number of removed instances

### AddAnimationSyncMarker

```
static void Animation::AddAnimationSyncMarker(UAnimSequence AnimationSequence, FName MarkerName, float32 Time, FName NotifyTrackName)
```

Adds an Animation Sync Marker to Notify track in the given Animation with the corresponding Marker Name and Time

### RemoveAllAnimationSyncMarkers

```
static void Animation::RemoveAllAnimationSyncMarkers(UAnimSequence AnimationSequence)
```

Removes All Animation Sync Markers found within the Animation Sequence, and returns the number of removed instances

### GetUniqueMarkerNames

```
static void Animation::GetUniqueMarkerNames(const UAnimSequence AnimationSequence, TArray<FName>& MarkerNames)
```

Retrieves all the Unique Names for the Animation Sync Markers contained by the given Animation Sequence

---

## ANIMATIONBLUEPRINTLIBRARY \| METADATA

### AddMetaDataObject

```
static void Animation::AddMetaDataObject(UAnimationAsset AnimationAsset, UAnimMetaData MetaDataObject)
```

Adds an instance of the specified MetaData Class to the given Animation Asset (requires MetaDataObject's outer to be the Animation Asset)

### RemoveMetaData

```
static void Animation::RemoveMetaData(UAnimationAsset AnimationAsset, UAnimMetaData MetaDataObject)
```

Removes the specified Meta Data Instance from the given Animation Asset

### AddMetaData

```
static void Animation::AddMetaData(UAnimationAsset AnimationAsset, TSubclassOf<UAnimMetaData> MetaDataClass, UAnimMetaData& MetaDataInstance)
```

Creates and Adds an instance of the specified MetaData Class to the given Animation Asset

### RemoveMetaDataOfClass

```
static void Animation::RemoveMetaDataOfClass(UAnimationAsset AnimationAsset, TSubclassOf<UAnimMetaData> MetaDataClass)
```

Removes all Meta Data Instance of the specified Class from the given Animation Asset

### ContainsMetaDataOfClass

```
static bool Animation::ContainsMetaDataOfClass(
```

const 	UAnimationAsset 	AnimationAsset,

### MetaDataClass

```
TSubclassOf<UAnimMetaData> MetaDataClass
```

)

### Checks whether or not the given Animation Asset contains Meta Data Instance of the specified Meta Data Class

```
Checks whether or not the given Animation Asset contains Meta Data Instance of the specified Meta Data Class
```

RemoveAllMetaData

### static void Animation::RemoveAllMetaData

```
static void Animation::RemoveAllMetaData(UAnimationAsset AnimationAsset)
```

Removes all Meta Data from the given Animation Asset

### GetMetaData

```
static void Animation::GetMetaData(const UAnimationAsset AnimationAsset, TArray<UAnimMetaData>& MetaData)
```

Retrieves all Meta Data Instances from the given Animation Asset

### GetMetaDataOfClass

```
static void Animation::GetMetaDataOfClass(const UAnimationAsset AnimationAsset, TSubclassOf<UAnimMetaData> MetaDataClass, TArray<UAnimMetaData>& MetaDataOfClass)
```

Retrieves all Meta Data Instances from the given Animation Asset

---

## ANIMATIONBLUEPRINTLIBRARY \| NOTIFYEVENTS

### GetAnimationNotifyEventsForTrack

```
static void Animation::GetAnimationNotifyEventsForTrack(
```

const 	UAnimSequenceBase 	AnimationSequenceBase,

	FName 	NotifyTrackName,

	TArray<FAnimNotifyEvent>& 	Events

)

### Retrieves all Animation Notify Events for the given Notify Track Name from the given Animation Sequence

```
Retrieves all Animation Notify Events for the given Notify Track Name from the given Animation Sequence
```

GetAnimationNotifyEvents

### static void Animation::GetAnimationNotifyEvents

```
static void Animation::GetAnimationNotifyEvents(
```

const 	UAnimSequenceBase 	AnimationSequenceBase,

	TArray<FAnimNotifyEvent>& 	NotifyEvents

)

### Retrieves all Animation Notify Events found within the given Animation Sequence

```
Retrieves all Animation Notify Events found within the given Animation Sequence
```

GetAnimationNotifyEventNames

### static void Animation::GetAnimationNotifyEventNames

```
static void Animation::GetAnimationNotifyEventNames(
```

const 	UAnimSequenceBase 	AnimationSequenceBase,

	TArray<FName>& 	EventNames

)

### Sequence

```
Retrieves all Unique Animation Notify Events found within the given Animation Sequence
```

CopyAnimNotifiesFromSequence static void Animation::CopyAnimNotifiesFromSequence(

UAnimSequenceBase 	SourceAnimationSequenceBase,

UAnimSequenceBase 	DestinationAnimationSequenceBase,

bool 	bDeleteExistingNotifies	 = 	false

)

### Copies animation notifies from Src Animation Sequence to Dest. Creates anim notify tracks as necessary. Returns true on success.

```
Copies animation notifies from Src Animation Sequence to Dest. Creates anim notify tracks as necessary. Returns true on success.
```

ReplaceAnimNotifies

### static void Animation::ReplaceAnimNotifies

```
static void Animation::ReplaceAnimNotifies(
```

UAnimSequenceBase 	AnimationSequenceBase,

### TSubclassOf<UAnimNotify> 	OldNotifyClass,

```
TSubclassOf<UAnimNotify> OldNotifyClass, TSubclassOf<UAnimNotify> NewNotifyClass, FOnNotifyReplaced OnNotifyReplaced = FOnNotifyReplaced()
```

)

### Sequence

```
Replaces animation notifies in the specified Animation Sequence
```

AddAnimationNotifyEvent static const UAnimNotify Animation::AddAnimationNotifyEvent(

UAnimSequenceBase 	AnimationSequenceBase,

FName 	NotifyTrackName,

### float32 	StartTime,

```
TSubclassOf<UAnimNotify> 	NotifyClass
```

)

### data

```
Adds an Animation Notify Event to Notify track in the given Animation with the given Notify creation data
```

AddAnimationNotifyStateEvent static const UAnimNotifyState Animation::AddAnimationNotifyStateEvent(

UAnimSequenceBase 	AnimationSequenceBase,

FName 	NotifyTrackName,

float32 	StartTime,

### float32 	Duration,

```
TSubclassOf<UAnimNotifyState> 	NotifyStateClass
```

)

### Adds an Animation Notify State Event to Notify track in the given Animation with the given Notify State creation data

```
Adds an Animation Notify State Event to Notify track in the given Animation with the given Notify State creation data
```

ReplaceAnimNotifyStates

### static void Animation::ReplaceAnimNotifyStates

```
static void Animation::ReplaceAnimNotifyStates(
```

UAnimSequenceBase 	AnimationSequenceBase,

### TSubclassOf<UAnimNotifyState> 	OldNotifyClass,

```
TSubclassOf<UAnimNotifyState> OldNotifyClass, TSubclassOf<UAnimNotifyState> NewNotifyClass, FOnNotifyStateReplaced OnNotifyStateReplaced = FOnNotifyStateReplaced()
```

)

### Sequence

```
Replaces animation notifies in the specified Animation Sequence
```

AddAnimationNotifyStateEventObject static void Animation::AddAnimationNotifyStateEventObject(

### UAnimSequenceBase 	AnimationSequenceBase,

```
UAnimSequenceBase 	AnimationSequenceBase, 	float32 	StartTime, 	float32 	Duration, const 	UAnimNotifyState 	NotifyState, 	FName 	NotifyTrackName
```

)

### Adds an the specific Animation Notify State to the Animation Sequence

```
Adds an the specific Animation Notify State to the Animation Sequence(requires Notify State's outer to be the Animation Sequence)
```

RemoveAnimationNotifyEventsByName

### static int Animation::RemoveAnimationNotifyEventsByName

```
static int Animation::RemoveAnimationNotifyEventsByName(
```

UAnimSequenceBase 	AnimationSequenceBase,

### NotifyName

```
FName NotifyName
```

)

### Removes Animation Notify Events found by Name within the Animation Sequence, and returns the number of removed name instances

```
Removes Animation Notify Events found by Name within the Animation Sequence, and returns the number of removed name instances
```

RemoveAnimationNotifyEventsByTrack

### static int Animation::RemoveAnimationNotifyEventsByTrack

```
static int Animation::RemoveAnimationNotifyEventsByTrack(
```

UAnimSequenceBase 	AnimationSequenceBase,

### NotifyTrackName

```
FName NotifyTrackName
```

)

### instances

```
Removes Animation Notify Events found by Track within the Animation Sequence, and returns the number of removed name instances
```

AddAnimationNotifyEventObject static void Animation::AddAnimationNotifyEventObject(

### UAnimSequenceBase 	AnimationSequenceBase,

```
UAnimSequenceBase 	AnimationSequenceBase, 	float32 	StartTime, const 	UAnimNotify 	Notify, 	FName 	NotifyTrackName
```

)

### Adds an the specific Animation Notify to the Animation Sequence

```
Adds an the specific Animation Notify to the Animation Sequence(requires Notify's outer to be the Animation Sequence)
```

---

## ANIMATIONBLUEPRINTLIBRARY \| POSE

GetBonePosesForTime

### static void Animation::GetBonePosesForTime

```
static void Animation::GetBonePosesForTime(
```

const 	UAnimSequenceBase 	AnimationSequenceBase,

	TArray<FName> 	BoneNames,

	float32 	Time,

	bool 	bExtractRootMotion,

	TArray<FTransform>& 	Poses,

const 	USkeletalMesh 	PreviewMesh	 = 	nullptr

)

### Sequence

```
Retrieves Bone Pose data for the given Bone Names at the specified Time from the given Animation Sequence
```

GetBonePoseForTime static void Animation::GetBonePoseForTime( const 	UAnimSequenceBase 	AnimationSequenceBase, FName 	BoneName, float32 	Time, bool 	bExtractRootMotion, FTransform& 	Pose )

### Sequence

```
Retrieves Bone Pose data for the given Bone Name at the specified Time from the given Animation Sequence
```

GetBonePosesForFrame static void Animation::GetBonePosesForFrame(

const 	UAnimSequenceBase 	AnimationSequenceBase,

	TArray<FName> 	BoneNames,

	int 	Frame,

	bool 	bExtractRootMotion,

	TArray<FTransform>& 	Poses,

const 	USkeletalMesh 	PreviewMesh	 = 	nullptr

)

### Sequence

```
Retrieves Bone Pose data for the given Bone Names at the specified Frame from the given Animation Sequence
```

GetBonePoseForFrame static void Animation::GetBonePoseForFrame( const 	UAnimSequenceBase 	AnimationSequenceBase, FName 	BoneName, int 	Frame, bool 	bExtractRootMotion, FTransform& 	Pose )

### Retrieves Bone Pose data for the given Bone Name at the specified Frame from the given Animation Sequence

```
Retrieves Bone Pose data for the given Bone Name at the specified Frame from the given Animation Sequence
```

---

## ANIMATIONBLUEPRINTLIBRARY \| RAWTRACKDATA

### GetRawTrackPositionData

```
static void Animation::GetRawTrackPositionData(const UAnimSequenceBase AnimationSequenceBase, const FName TrackName, TArray<FVector>& PositionData)
```

Retrieves the Raw Translation Animation Data for the given Animation Track Name and Animation Sequence

### GetRawTrackScaleData

```
static void Animation::GetRawTrackScaleData(const UAnimSequenceBase AnimationSequenceBase, const FName TrackName, TArray<FVector>& ScaleData)
```

Retrieves the Raw Scale Animation Data for the given Animation Track Name and Animation Sequence

### GetRawTrackData

```
static void Animation::GetRawTrackData(const UAnimSequenceBase AnimationSequenceBase, const FName TrackName, TArray<FVector>& PositionKeys, TArray<FQuat>& RotationKeys, TArray<FVector>& ScalingKeys)
```

Retrieves the Raw Animation Data for the given Animation Track Name and Animation Sequence

### GetRawTrackRotationData

```
static void Animation::GetRawTrackRotationData(const UAnimSequenceBase AnimationSequenceBase, const FName TrackName, TArray<FQuat>& RotationData)
```

Retrieves the Raw Rotation Animation Data for the given Animation Track Name and Animation Sequence

---

## ANIMATIONBLUEPRINTLIBRARY \| ROOTMOTION

### GetRootMotionLockType

```
static void Animation::GetRootMotionLockType(const UAnimSequence AnimationSequence, ERootMotionRootLock& LockType)
```

Retrieves the Root Motion Lock Type for the given Animation Sequence

### SetRootMotionLockType

```
static void Animation::SetRootMotionLockType(UAnimSequence AnimationSequence, ERootMotionRootLock RootMotionLockType)
```

Sets the Root Motion Lock Type for the given Animation Sequence

### IsRootMotionLockForced

```
static bool Animation::IsRootMotionLockForced(const UAnimSequence AnimationSequence)
```

Checks whether or not Root Motion locking is Forced for the given Animation Sequence

### IsRootMotionEnabled

```
static bool Animation::IsRootMotionEnabled(const UAnimSequence AnimationSequence)
```

Checks whether or not Root Motion is Enabled for the given Animation Sequence

### SetRootMotionEnabled

```
static void Animation::SetRootMotionEnabled(UAnimSequence AnimationSequence, bool bEnabled)
```

Sets whether or not Root Motion is Enabled for the given Animation Sequence

### SetIsRootMotionLockForced

```
static void Animation::SetIsRootMotionLockForced(UAnimSequence AnimationSequence, bool bForced)
```

Sets whether or not Root Motion locking is Forced for the given Animation Sequence

---

## ANIMATIONBLUEPRINTLIBRARY \| SKELETON

### DoesBoneNameExist

```
static void Animation::DoesBoneNameExist(UAnimSequence AnimationSequence, FName BoneName, bool& bExists)
```

Checks whether or not the given Bone Name exist on the Skeleton referenced by the given Animation Sequence

---

## ANIMATIONBLUEPRINTLIBRARY \| VIRTUALBONES

### AddVirtualBone

```
static void Animation::AddVirtualBone(const UAnimSequence AnimationSequence, FName SourceBoneName, FName TargetBoneName, FName& VirtualBoneName)
```

Adds a Virtual Bone between the Source and Target Bones to the given Animation Sequence

### RemoveVirtualBones

```
static void Animation::RemoveVirtualBones(const UAnimSequence AnimationSequence, TArray<FName> VirtualBoneNames)
```

Removes Virtual Bones with the specified Bone Names from the given Animation Sequence

### RemoveAllVirtualBones

```
static void Animation::RemoveAllVirtualBones(const UAnimSequence AnimationSequence)
```

Removes all Virtual Bones from the given Animation Sequence

### RemoveVirtualBone

```
static void Animation::RemoveVirtualBone(const UAnimSequence AnimationSequence, FName VirtualBoneName)
```

Removes a Virtual Bone with the specified Bone Name from the given Animation Sequence

---

## UTILITIES \| ANIMATION

### CalculateDirection

```
static float32 Animation::CalculateDirection(FVector Velocity, FRotator BaseRotation)
```

Returns degree of the angle between Velocity and Rotation forward vector The range of return will be from [-180, 180]. Useful for feeding directional blendspaces.

**Parameters**

Velocity
FVector

The velocity to use as direction relative to BaseRotation

BaseRotation
FRotator

The base rotation, e.g. of a pawn

CalculateVelocityFromPositionHistory
static float32 Animation::CalculateVelocityFromPositionHistory(

float32 	DeltaSeconds,
FVector 	Position,
FPositionHistory& 	History,
int 	NumberOfSamples,
float32 	VelocityMin,
float32 	VelocityMax

)

This function calculates the velocity of a position changing over time.  You need to hook up a valid PositionHistory variable to this for storage.

**Parameters**

DeltaSeconds
float32

The time passed in seconds

Position
FVector

The position to track over time.

History
FPositionHistory&

The history to use for storage.

NumberOfSamples
int

The number of samples to use for the history. The higher the number of samples - the smoother the velocity changes.

VelocityMin
float32

The minimum velocity to use for normalization (if both min and max are set to 0, normalization is turned off)

VelocityMax
float32

The maximum velocity to use for normalization (if both min and max are set to 0, normalization is turned off)

CalculateVelocityFromSockets
static float32 Animation::CalculateVelocityFromSockets(

	float32 	DeltaSeconds,
	USkeletalMeshComponent 	Component,
const 	FName 	SocketOrBoneName,
const 	FName 	ReferenceSocketOrBone,
	ERelativeTransformSpace 	SocketSpace,
	FVector 	OffsetInBoneSpace,
	FPositionHistory& 	History,
	int 	NumberOfSamples,
	float32 	VelocityMin,
	float32 	VelocityMax,
	EEasingFuncType 	EasingType,
	FRuntimeFloatCurve 	CustomCurve

)

This function calculates the velocity of an offset position on a bone / socket over time.  The bone's / socket's motion can be expressed within a reference frame (another bone / socket).  You need to hook up a valid PositionHistory variable to this for storage.

**Parameters**

DeltaSeconds
float32

The time passed in seconds

Component
USkeletalMeshComponent

The skeletal component to look for the bones / sockets

SocketOrBoneName
const FName

The name of the bone / socket to track.

ReferenceSocketOrBone
const FName

The name of the bone / socket to use as a frame of reference (or None if no frame of reference == world space).

SocketSpace
ERelativeTransformSpace

The space to use for the two sockets / bones

OffsetInBoneSpace
FVector

The relative position in the space of the bone / socket to track over time.

History
FPositionHistory&

The history to use for storage.

NumberOfSamples
int

The number of samples to use for the history. The higher the number of samples - the smoother the velocity changes.

VelocityMin
float32

The minimum velocity to use for normalization (if both min and max are set to 0, normalization is turned off)

VelocityMax
float32

The maximum velocity to use for normalization (if both min and max are set to 0, normalization is turned off)

EasingType
EEasingFuncType

The easing function to use

CustomCurve
FRuntimeFloatCurve

The curve to use if the easing type is "Custom"

DirectionBetweenSockets
static FVector Animation::DirectionBetweenSockets(

const 	USkeletalMeshComponent 	Component,
const 	FName 	SocketOrBoneNameFrom,
const 	FName 	SocketOrBoneNameTo

)

Computes the direction between two bones / sockets.

**Parameters**

Component
const USkeletalMeshComponent

The skeletal component to look for the sockets / bones within

SocketOrBoneNameFrom
const FName

The name of the first socket / bone

SocketOrBoneNameTo
const FName

The name of the second socket / bone

DistanceBetweenSockets
static float32 Animation::DistanceBetweenSockets(

const 	USkeletalMeshComponent 	Component,
const 	FName 	SocketOrBoneNameA,
	ERelativeTransformSpace 	SocketSpaceA,
const 	FName 	SocketOrBoneNameB,
	ERelativeTransformSpace 	SocketSpaceB,
	bool 	bRemapRange,
	float32 	InRangeMin,
	float32 	InRangeMax,
	float32 	OutRangeMin,
	float32 	OutRangeMax

)

Computes the distance between two bones / sockets and can remap the range.

**Parameters**

Component
const USkeletalMeshComponent

The skeletal component to look for the sockets / bones within

SocketOrBoneNameA
const FName

The name of the first socket / bone

SocketSpaceA
ERelativeTransformSpace

The space for the first socket / bone

SocketOrBoneNameB
const FName

The name of the second socket / bone

SocketSpaceB
ERelativeTransformSpace

The space for the second socket / bone

bRemapRange
bool

If set to true, the distance will be remapped using the range parameters

InRangeMin
float32

The minimum for the input range (commonly == 0.0)

InRangeMax
float32

The maximum for the input range (the max expected distance)

OutRangeMin
float32

The minimum for the output range (commonly == 0.0)

OutRangeMax
float32

The maximum for the output range (commonly == 1.0)

EndProfilingTimer
static float32 Animation::EndProfilingTimer(
bool 	bLog	 = 	true,
FString 	LogPrefix	 = 	""
	)

This function ends measuring a profiling bracket and optionally logs the result

**Parameters**

bLog
bool

If set to true the result is logged to the OutputLog

LogPrefix
FString

A prefix to use for the log

LookAt
static FTransform Animation::LookAt(
FTransform 	CurrentTransform,
FVector 	TargetPosition,
FVector 	LookAtVector,
bool 	bUseUpVector,
FVector 	UpVector,
float32 	ClampConeInDegree
	)

Computes the transform which is "looking" at target position with a local axis.

**Parameters**

CurrentTransform
FTransform

The input transform to modify

TargetPosition
FVector

The position this transform should look at

LookAtVector
FVector

The local vector to align with the target

bUseUpVector
bool

If set to true the lookat will also perform a twist rotation

UpVector
FVector

The position to use for the upvector target (only used is bUseUpVector is turned on)

ClampConeInDegree
float32

A limit for only allowing the lookat to rotate as much as defined by the float value

MakeFloatFromPerlinNoise
static float32 Animation::MakeFloatFromPerlinNoise(
float32 	Value,
float32 	RangeOutMin,
float32 	RangeOutMax
	)

This function creates perlin noise for a single float and then range map to RangeOut

**Parameters**

Value
float32

The input value for the noise function

RangeOutMin
float32

The minimum for the output range

RangeOutMax
float32

The maximum for the output range

MakeVectorFromPerlinNoise
static FVector Animation::MakeVectorFromPerlinNoise(
float32 	X,
float32 	Y,
float32 	Z,
float32 	RangeOutMinX,
float32 	RangeOutMaxX,
float32 	RangeOutMinY,
float32 	RangeOutMaxY,
float32 	RangeOutMinZ,
float32 	RangeOutMaxZ
	)

This function creates perlin noise from input X, Y, Z, and then range map to RangeOut, and out put to OutX, OutY, OutZ

**Parameters**

X
float32

The x component for the input position of the noise

Y
float32

The y component for the input position of the noise

Z
float32

The z component for the input position of the noise

RangeOutMinX
float32

The minimum for the output range for the x component

RangeOutMaxX
float32

The maximum for the output range for the x component

RangeOutMinY
float32

The minimum for the output range for the y component

RangeOutMaxY
float32

The maximum for the output range for the y component

RangeOutMinZ
float32

The minimum for the output range for the z component

RangeOutMaxZ
float32

The maximum for the output range for the z component

StartProfilingTimer
static void Animation::StartProfilingTimer()

This function starts measuring the time for a profiling bracket

TwoBoneIK
static void Animation::TwoBoneIK(
FVector 	RootPos,
FVector 	JointPos,
FVector 	EndPos,
FVector 	JointTarget,
FVector 	Effector,
FVector& 	OutJointPos,
FVector& 	OutEndPos,
bool 	bAllowStretching,
float32 	StartStretchRatio,
float32 	MaxStretchScale
	)

Computes the transform for two bones using inverse kinematics.

**Parameters**

RootPos
FVector

The input root position of the two bone chain

JointPos
FVector

The input center (elbow) position of the two bone chain

EndPos
FVector

The input end (wrist) position of the two bone chain

JointTarget
FVector

The IK target for the write to reach

Effector
FVector

The position of the target effector for the IK Chain.

OutJointPos
FVector&

The resulting position for the center (elbow)

OutEndPos
FVector&

The resulting position for the end (wrist)

bAllowStretching
bool

If set to true the bones are allowed to stretch

StartStretchRatio
float32

The ratio at which the bones should start to stretch. The higher the value, the later the stretching wil start.

MaxStretchScale
float32

The maximum multiplier for the stretch to reach.
