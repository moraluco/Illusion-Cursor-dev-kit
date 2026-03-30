# UAnimationDataController

**Visibility:** public

## Inheritance

UInterface → UAnimationDataController → ANIMATIONDATA → Model

## Description

UAnimDataModel Model

## ANIMATIONDATA

### InsertBoneTrack

```
int InsertBoneTrack(FName BoneName, int DesiredIndex, bool bShouldTransact = true)
```

Inserts a new bone animation track for the provided name, at the provided index. Broadcasts a EAnimDataModelNotifyType::TrackAdded notify if successful.  The bone name is verified with the AnimModel's outer target USkeleton to ensure the bone exists.

**Parameters**

BoneName
FName

Bone name for which a track should be inserted

DesiredIndex
int

Index at which the track should be inserted

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

The index at which the bone track was inserted, INDEX_NONE if the insertion failed

AddBoneTrack
int AddBoneTrack(
FName 	BoneName,
bool 	bShouldTransact	 = 	true
	)

Adds a new bone animation track for the provided name. Broadcasts a EAnimDataModelNotifyType::TrackAdded notify if successful.

**Parameters**

BoneName
FName

Bone name for which a track should be added

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

The index at which the bone track was added, INDEX_NONE if adding it failed

SetModel
void SetModel(
UAnimDataModel 	InModel
	)

Sets the AnimDataModel instance this controller is supposed to be targeting

**Parameters**

InModel
UAnimDataModel

UAnimDataModel instance to target

CloseBracket
void CloseBracket(
bool 	bShouldTransact	 = 	true
	)

Closes a previously opened interaction bracket, used for combining a set of controller actions. Broadcasts a EAnimDataModelNotifyType::BracketClosed notify.

**Parameters**

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

OpenBracket
void OpenBracket(
FText 	InTitle,
bool 	bShouldTransact	 = 	true
	)

Opens an interaction bracket, used for combining a set of controller actions. Broadcasts a EAnimDataModelNotifyType::BracketOpened notify, this can be used by any Views or dependendent systems to halt any unnecessary or invalid operations until the (last) bracket is closed.

**Parameters**

InTitle
FText

Description of the bracket, e.g. "Generating Curve Data"

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

SetBoneTrackKeys
bool SetBoneTrackKeys(
FName 	BoneName,
TArray<FVector> 	PositionalKeys,
TArray<FQuat> 	RotationalKeys,
TArray<FVector> 	ScalingKeys,
bool 	bShouldTransact	 = 	true
	)

Removes an existing bone animation track with the provided name. Broadcasts a EAnimDataModelNotifyType::TrackChanged notify if successful.  The provided number of keys provided is expected to match for each component, and be non-zero.

**Parameters**

BoneName
FName

Bone name of the track for which the keys should be set

PositionalKeys
TArray<FVector>

Array of keys for the translation component

RotationalKeys
TArray<FQuat>

Array of keys for the rotation component

ScalingKeys
TArray<FVector>

Array of keys for the scale component

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the keys were successfully set

ResizePlayLength
void ResizePlayLength(
float32 	NewLength,
float32 	T0,
float32 	T1,
bool 	bShouldTransact	 = 	true
	)

Sets the total play-able length in seconds. Broadcasts a EAnimDataModelNotifyType::SequenceLengthChanged notify if successful.  T0 and T1 are expected to represent the window of time that was either added or removed. E.g. for insertion T0 indicates the time at which additional time starts and T1 were it ends. For removal T0 indicates the time at which time should be started to remove, and T1 indicates the end. Giving a total of T1 - T0 added or removed length.  The number of frames and keys for the provided length is recalculated according to the current value of UAnimDataModel::FrameRate.

**Parameters**

---

## T0

float32

### starts

```
Point between 0 and Length at which the change in time starts
```

---

## T1

float32

### ends

```
Point between 0 and Length at which the change in time ends
```

bShouldTransact bool

### Whether or not any undo-redo changes should be generated

```
Whether or not any undo-redo changes should be generated
```

GetModel

### UAnimDataModel GetModel

```
UAnimDataModel GetModel()
```

**Returns**

The AnimDataModel instance this controller is currently targeting

RemoveBoneTrack
bool RemoveBoneTrack(
FName 	BoneName,
bool 	bShouldTransact	 = 	true
	)

Removes an existing bone animation track with the provided name. Broadcasts a EAnimDataModelNotifyType::TrackRemoved notify if successful.

**Parameters**

BoneName
FName

Bone name of the track which should be removed

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the removal was successful

SetPlayLength
void SetPlayLength(
float32 	Length,
bool 	bShouldTransact	 = 	true
	)

Sets the total play-able length in seconds. Broadcasts a EAnimDataModelNotifyType::SequenceLengthChanged notify if successful.  The number of frames and keys for the provided length is recalculated according to the current value of UAnimDataModel::FrameRate.

**Parameters**

Length
float32

New play-able length value, has to be positive and non-zero

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

RemoveAllBoneTracks
void RemoveAllBoneTracks(
bool 	bShouldTransact	 = 	true
	)

Removes all existing Bone Animation tracks. Broadcasts a EAnimDataModelNotifyType::TrackRemoved for each removed track, wrapped within BracketOpened/BracketClosed notifies.

**Parameters**

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

Resize
void Resize(
float32 	Length,
float32 	T0,
float32 	T1,
bool 	bShouldTransact	 = 	true
	)

Sets the total play-able length in seconds and resizes curves. Broadcasts EAnimDataModelNotifyType::SequenceLengthChanged and EAnimDataModelNotifyType::CurveChanged notifies if successful.  T0 and T1 are expected to represent the window of time that was either added or removed. E.g. for insertion T0 indicates the time at which additional time starts and T1 were it ends. For removal T0 indicates the time at which time should be started to remove, and T1 indicates the end. Giving a total of T1 - T0 added or removed length.  The number of frames and keys for the provided length is recalculated according to the current value of UAnimDataModel::FrameRate.

**Parameters**

Length
float32

Total new play-able length value, has to be positive and non-zero

---

## T0

float32

### starts

```
Point between 0 and Length at which the change in time starts
```

---

## T1

float32

### ends

```
Point between 0 and Length at which the change in time ends
```

bShouldTransact bool

### Whether or not any undo-redo changes should be generated

```
Whether or not any undo-redo changes should be generated
```

---

## ATTRIBUTEDATA

### RemoveAllAttributesForBone

```
int RemoveAllAttributesForBone(FName BoneName, bool bShouldTransact = true)
```

Removes all attributes for the specified bone name, if any. Broadcasts a EAnimDataModelNotifyType::AttributeRemoved notify for each removed attribute.

**Parameters**

BoneName
FName

Name of the bone to remove attributes for

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Total number of removes attributes

RemoveAttribute
bool RemoveAttribute(
FAnimationAttributeIdentifier 	AttributeIdentifier,
bool 	bShouldTransact	 = 	true
	)

Removes an attribute, if found, with the provided information. Broadcasts a EAnimDataModelNotifyType::AttributeRemoved notify if successful.

**Parameters**

AttributeIdentifier
FAnimationAttributeIdentifier

Identifier for the to-be-removed attribute

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the attribute was successfully removed

DuplicateAttribute
bool DuplicateAttribute(
FAnimationAttributeIdentifier 	AttributeIdentifier,
FAnimationAttributeIdentifier 	NewAttributeIdentifier,
bool 	bShouldTransact	 = 	true
	)

Duplicated the attribute (curve) with the identifier. Broadcasts a EAnimDataModelNotifyType::AttributeAdded notify if successful.

**Parameters**

AttributeIdentifier
FAnimationAttributeIdentifier

Identifier for the to-be-duplicated attribute

NewAttributeIdentifier
FAnimationAttributeIdentifier

Identifier for the to-be-added attribute

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the attribute was successfully duplicated

RemoveAllAttributes
int RemoveAllAttributes(
bool 	bShouldTransact	 = 	true
	)

Removes all stored attributes. Broadcasts a EAnimDataModelNotifyType::AttributeRemoved notify for each removed attribute.

**Parameters**

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Total number of removes attributes

RemoveAttributeKey
bool RemoveAttributeKey(
FAnimationAttributeIdentifier 	AttributeIdentifier,
float32 	Time,
bool 	bShouldTransact	 = 	true
	)

Remove a single key from the attribute with provided identifier. Broadcasts a EAnimDataModelNotifyType::AttributeChanged notify if successful.

**Parameters**

AttributeIdentifier
FAnimationAttributeIdentifier

Identifier for the attribute from which the key is to be removed

Time
float32

Time of the key to be removed

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the attribute key was successfully removed

AddAttribute
bool AddAttribute(
FAnimationAttributeIdentifier 	AttributeIdentifier,
bool 	bShouldTransact	 = 	true
	)

Adds a new attribute with the provided information. Broadcasts a EAnimDataModelNotifyType::AttributeAdded notify if successful.

**Parameters**

AttributeIdentifier
FAnimationAttributeIdentifier

Identifier for the to-be-added attribute

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the attribute was successfully added

---

## CURVEDATA

### DuplicateCurve

```
bool DuplicateCurve(FAnimationCurveIdentifier CopyCurveId, FAnimationCurveIdentifier NewCurveId, bool bShouldTransact = true)
```

Duplicated the curve with the identifier. Broadcasts a EAnimDataModelNotifyType::CurveAdded notify if successful.

**Parameters**

CopyCurveId
FAnimationCurveIdentifier

Identifier for the to-be-duplicated curve

NewCurveId
FAnimationCurveIdentifier

Identifier for the to-be-added curve

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the curve was successfully duplicated

RemoveTransformCurveKey
bool RemoveTransformCurveKey(
FAnimationCurveIdentifier 	CurveId,
float32 	Time,
bool 	bShouldTransact	 = 	true
	)

Removes a single key for the transform curve with provided identifier. Broadcasts a EAnimDataModelNotifyType::CurveChanged notify if successful.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier for the transform curve for which the key is to be removed

Time
float32

Time of the key to be removed

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the transform curve key was successfully removed

RenameCurve
bool RenameCurve(
FAnimationCurveIdentifier 	CurveToRenameId,
FAnimationCurveIdentifier 	NewCurveId,
bool 	bShouldTransact	 = 	true
	)

Renames the curve with provided identifier. Broadcasts a EAnimDataModelNotifyType::CurveRenamed notify if successful.

**Parameters**

CurveToRenameId
FAnimationCurveIdentifier

Identifier for the curve to be renamed

NewCurveId
FAnimationCurveIdentifier

Time of the key to be removed

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the curve was successfully renamed

RemoveAllCurvesOfType
void RemoveAllCurvesOfType(
ERawCurveTrackTypes 	SupportedCurveType,
bool 	bShouldTransact	 = 	true
	)

Removes all the curves of the provided type. Broadcasts a EAnimDataModelNotifyType::CurveRemoved for each removed curve, wrapped within BracketOpened/BracketClosed notifies.

**Parameters**

SupportedCurveType
ERawCurveTrackTypes

Type for which all curves are to be removed

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

FindOrAddCurveNamesOnSkeleton
void FindOrAddCurveNamesOnSkeleton(
USkeleton 	Skeleton,
ERawCurveTrackTypes 	SupportedCurveType,
bool 	bShouldTransact	 = 	true
	)

Updates the curve names with the provided skeleton, if a display name is not found it will be added thus modifying the skeleton. Broadcasts a EAnimDataModelNotifyType::CurveRenamed for each curve name for which the UID was different or if it was added as a new smartname, wrapped within BracketOpened/BracketClosed notifies.

**Parameters**

Skeleton
USkeleton

Skeleton to retrieve the display name values from

SupportedCurveType
ERawCurveTrackTypes

Curve type for which the names should be updated

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

ScaleCurve
bool ScaleCurve(
FAnimationCurveIdentifier 	CurveId,
float32 	Origin,
float32 	Factor,
bool 	bShouldTransact	 = 	true
	)

Scales the curve with provided identifier. Broadcasts a EAnimDataModelNotifyType::CurveScaled notify if successful.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier of the curve to scale

Origin
float32

Time to use as the origin when scaling the curve

Factor
float32

Factor with which the curve is supposed to be scaled

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not scaling the curve was successful

RemoveCurve
bool RemoveCurve(
FAnimationCurveIdentifier 	CurveId,
bool 	bShouldTransact	 = 	true
	)

Remove the curve with provided identifier. Broadcasts a EAnimDataModelNotifyType::CurveRemoved notify if successful.

**Parameters**

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the curve was successfully removed

SetCurveColor
bool SetCurveColor(
FAnimationCurveIdentifier 	CurveId,
FLinearColor 	Color,
bool 	bShouldTransact	 = 	true
	)

Changes the color of the curve with provided identifier. Broadcasts a EAnimDataModelNotifyType::CurveRenamed notify if successful.  Currently changing curve colors is only supported for float curves.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier of the curve to change the color for

Color
FLinearColor

Color to which the curve is to be set

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the curve color was successfully changed

SetCurveFlag
bool SetCurveFlag(
FAnimationCurveIdentifier 	CurveId,
EAnimAssetCurveFlags 	Flag,
bool 	bState	 = 	true,
bool 	bShouldTransact	 = 	true
	)

Set an individual flag for the curve with provided identifier. Broadcasts a EAnimDataModelNotifyType::CurveFlagsChanged notify if successful.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier for the curve for which the flag state is to be set

Flag
EAnimAssetCurveFlags

Flag for which the state is supposed to be set

bState
bool

State of the flag to be, true=set/false=not set

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the flag state was successfully set

SetCurveFlags
bool SetCurveFlags(
FAnimationCurveIdentifier 	CurveId,
int 	Flags,
bool 	bShouldTransact	 = 	true
	)

Replace the flags for the curve with provided identifier. Broadcasts a EAnimDataModelNotifyType::CurveFlagsChanged notify if successful.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier for the curve for which the flag state is to be set

Flags
int

Flag mask with which the existings flags are to be replaced

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the flag mask was successfully set

SetCurveKey
bool SetCurveKey(
FAnimationCurveIdentifier 	CurveId,
FRichCurveKey 	Key,
bool 	bShouldTransact	 = 	true
	)

Sets a single key for the curve with provided identifier and name. Broadcasts a EAnimDataModelNotifyType::CurveChanged notify if successful.  In case a key for the provided key time already exists the key is replaced.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier for the curve for which the key is to be set

Key
FRichCurveKey

Key to be set

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the curve key was successfully set

SetCurveKeys
bool SetCurveKeys(
FAnimationCurveIdentifier 	CurveId,
TArray<FRichCurveKey> 	CurveKeys,
bool 	bShouldTransact	 = 	true
	)

Replace the keys for the curve with provided identifier and name. Broadcasts a EAnimDataModelNotifyType::CurveChanged notify if successful.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier for the curve for which the keys are to be replaced

CurveKeys
TArray<FRichCurveKey>

Keys with which the existing keys are to be replaced

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not replacing curve keys was successful

AddCurve
bool AddCurve(
FAnimationCurveIdentifier 	CurveId,
int 	CurveFlags	 = 	4,
bool 	bShouldTransact	 = 	true
	)

Adds a new curve with the provided information. Broadcasts a EAnimDataModelNotifyType::CurveAdded notify if successful.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier for the to-be-added curve

CurveFlags
int

Flags to be set for the curve

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the curve was successfully added

RemoveCurveKey
bool RemoveCurveKey(
FAnimationCurveIdentifier 	CurveId,
float32 	Time,
bool 	bShouldTransact	 = 	true
	)

Remove a single key from the curve with provided identifier and name. Broadcasts a EAnimDataModelNotifyType::CurveChanged notify if successful.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier for the curve for which the key is to be removed

Time
float32

Time of the key to be removed

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the curve key was successfully removed

SetTransformCurveKey
bool SetTransformCurveKey(
FAnimationCurveIdentifier 	CurveId,
float32 	Time,
FTransform 	Value,
bool 	bShouldTransact	 = 	true
	)

Sets a single key for the transform curve with provided identifier. Broadcasts a EAnimDataModelNotifyType::CurveChanged notify if successful.  In case a key for any of the individual transform channel curves already exists the value is replaced.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier for the transform curve for which the key is to be set

Time
float32

Time of the key to be set

Value
FTransform

Value of the key to be set

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the transform curve key was successfully set

SetTransformCurveKeys
bool SetTransformCurveKeys(
FAnimationCurveIdentifier 	CurveId,
TArray<FTransform> 	TransformValues,
TArray<float32> 	TimeKeys,
bool 	bShouldTransact	 = 	true
	)

Replace the keys for the transform curve with provided identifier. Broadcasts a EAnimDataModelNotifyType::CurveChanged notify if successful.

**Parameters**

CurveId
FAnimationCurveIdentifier

Identifier for the transform curve for which the keys are to be set

TransformValues
TArray<FTransform>

Transform Values with which the existing values are to be replaced

TimeKeys
TArray<float32>

Time Keys with which the existing keys are to be replaced

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

**Returns**

Whether or not the transform curve keys were successfully set

UpdateCurveNamesFromSkeleton
void UpdateCurveNamesFromSkeleton(
const 	USkeleton 	Skeleton,
	ERawCurveTrackTypes 	SupportedCurveType,
	bool 	bShouldTransact	 = 	true
	)

Updates the display name values for any stored curve, with the names being retrieved from the provided skeleton. Broadcasts a EAnimDataModelNotifyType::CurveRenamed for each to-be-updated curve name, wrapped within BracketOpened/BracketClosed notifies.

**Parameters**

Skeleton
const USkeleton

Skeleton to retrieve the display name values from

SupportedCurveType
ERawCurveTrackTypes

Curve type for which the names should be updated

bShouldTransact
bool

Whether or not any undo-redo changes should be generated

STATIC FUNCTIONS
StaticClass
static UClass UAnimationDataController::StaticClass()
