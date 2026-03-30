# UAnimPoseExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UAnimPoseExtensions

## Description

Script exposed functionality for populating, retrieving data from and setting data on FAnimPose

## ANIMATION \| POSE

### GetReferencePose

```
static void UAnimPoseExtensions::GetReferencePose(USkeleton Skeleton, FAnimPose& OutPose)
```

Populates an Anim Pose with the reference poses stored for the provided USkeleton

**Parameters**

Skeleton
USkeleton

USkeleton object to retrieve the reference pose from

OutPose
FAnimPose&

Anim pose to hold the reference pose

GetAnimPoseAtFrame
static void UAnimPoseExtensions::GetAnimPoseAtFrame(

const 	UAnimSequenceBase 	AnimationSequenceBase,
	int 	FrameIndex,
	FAnimPoseEvaluationOptions 	EvaluationOptions,
	FAnimPose& 	Pose

)

Evaluates an Animation Sequence Base to generate a valid Anim Pose instance

**Parameters**

AnimationSequenceBase
const UAnimSequenceBase

Animation sequence base to evaluate the pose from

FrameIndex
int

Exact frame at which the pose should be evaluated

EvaluationOptions
FAnimPoseEvaluationOptions

Options determining the way the pose should be evaluated

Pose
FAnimPose&

Anim Pose to hold the evaluated data

GetAnimPoseAtTime
static void UAnimPoseExtensions::GetAnimPoseAtTime(

const 	UAnimSequenceBase 	AnimationSequenceBase,
	float32 	Time,
	FAnimPoseEvaluationOptions 	EvaluationOptions,
	FAnimPose& 	Pose

)

Evaluates an Animation Sequence Base to generate a valid Anim Pose instance

**Parameters**

AnimationSequenceBase
const UAnimSequenceBase

Animation sequence base to evaluate the pose from

Time
float32

Time at which the pose should be evaluated

EvaluationOptions
FAnimPoseEvaluationOptions

Options determining the way the pose should be evaluated

Pose
FAnimPose&

Anim Pose to hold the evaluated data

GetBoneNames
static void UAnimPoseExtensions::GetBoneNames(
FAnimPose 	Pose,
TArray<FName>& 	Bones
	)

Returns an array of bone names contained by the pose

**Parameters**

Pose
FAnimPose

Anim Pose to retrieve the names from

Bones
TArray<FName>&

Array to be populated with the bone names

GetBonePose
static const FTransform& UAnimPoseExtensions::GetBonePose(

FAnimPose 	Pose,
FName 	BoneName,
EAnimPoseSpaces 	Space	 = 	EAnimPoseSpaces :: Local

)

Retrieves the transform for the provided bone name from a pose

**Parameters**

Pose
FAnimPose

Anim Pose to retrieve the transform from

BoneName
FName

Name of the bone to retrieve

Space
EAnimPoseSpaces

Space in which the transform should be retrieved

**Returns**

Transform in requested space for bone if found, otherwise return identity transform

GetRefBonePose
static const FTransform& UAnimPoseExtensions::GetRefBonePose(

FAnimPose 	Pose,
FName 	BoneName,
EAnimPoseSpaces 	Space	 = 	EAnimPoseSpaces :: Local

)

Retrieves the reference pose transform for the provided bone name

**Parameters**

Pose
FAnimPose

Anim Pose to retrieve the transform from

BoneName
FName

Name of the bone to retrieve

Space
EAnimPoseSpaces

Space in which the transform should be retrieved

**Returns**

Transform in requested space for bone if found, otherwise return identity transform

EvaluateAnimationBlueprintWithInputPose
static void UAnimPoseExtensions::EvaluateAnimationBlueprintWithInputPose(

FAnimPose 	InputPose,
USkeletalMesh 	TargetSkeletalMesh,
UAnimBlueprint 	AnimationBlueprint,
FAnimPose& 	OutPose

)

Evaluates an Animation Blueprint instance, using the provided Anim Pose and its Input Pose value, generating a valid Anim Pose using the result. Warning this function may cause performance issues.

**Parameters**

InputPose
FAnimPose

Anim Pose used to populate the input pose node value inside of the Animation Blueprint

TargetSkeletalMesh
USkeletalMesh

USkeletalMesh object used as the target skeletal mesh, should have same USkeleton as InputPose and Animation Blueprint

AnimationBlueprint
UAnimBlueprint

Animation Blueprint to generate an AnimInstance with, used to evaluate the output Anim Pose

OutPose
FAnimPose&

Anim pose to hold the data from evaluating the Animation Blueprint instance

GetRefPoseRelativeTransform
static FTransform UAnimPoseExtensions::GetRefPoseRelativeTransform(

FAnimPose 	Pose,
FName 	FromBoneName,
FName 	ToBoneName,
EAnimPoseSpaces 	Space	 = 	EAnimPoseSpaces :: Local

)

Retrieves the relative transform for the reference pose between the two provided bone names

**Parameters**

Pose
FAnimPose

Anim Pose to retrieve the transform from

FromBoneName
FName

Name of the bone to retrieve the transform relative from

ToBoneName
FName

Name of the bone to retrieve the transform relative to

Space
EAnimPoseSpaces

Space in which the transform should be retrieved

**Returns**

Relative transform in requested space for bone if found, otherwise return identity transform

GetRelativeToRefPoseTransform
static FTransform UAnimPoseExtensions::GetRelativeToRefPoseTransform(

FAnimPose 	Pose,
FName 	BoneName,
EAnimPoseSpaces 	Space	 = 	EAnimPoseSpaces :: Local

)

Retrieves the relative transform between reference and animated bone transform

**Parameters**

Pose
FAnimPose

Anim Pose to retrieve the transform from

BoneName
FName

Name of the bone to retrieve the relative transform for

Space
EAnimPoseSpaces

Space in which the transform should be retrieved

**Returns**

Relative transform in requested space for bone if found, otherwise return identity transform

GetRelativeTransform
static FTransform UAnimPoseExtensions::GetRelativeTransform(

FAnimPose 	Pose,
FName 	FromBoneName,
FName 	ToBoneName,
EAnimPoseSpaces 	Space	 = 	EAnimPoseSpaces :: Local

)

Retrieves the relative transform between the two provided bone names

**Parameters**

Pose
FAnimPose

Anim Pose to retrieve the transform from

FromBoneName
FName

Name of the bone to retrieve the transform relative from

ToBoneName
FName

Name of the bone to retrieve the transform relative to

Space
EAnimPoseSpaces

Space in which the transform should be retrieved

**Returns**

Relative transform in requested space for bone if found, otherwise return identity transform

IsValid
static bool UAnimPoseExtensions::IsValid(
FAnimPose 	Pose
	)

Returns whether the Anim Pose contains valid data

**Parameters**

Pose
FAnimPose

Anim Pose to validate

**Returns**

Result of the validation

SetBonePose
static void UAnimPoseExtensions::SetBonePose(

FAnimPose& 	Pose,
FTransform 	Transform,
FName 	BoneName,
EAnimPoseSpaces 	Space	 = 	EAnimPoseSpaces :: Local

)

Sets the transform for the provided bone name for a pose

**Parameters**

Pose
FAnimPose&

Anim Pose to set transform in

Transform
FTransform

Transform to set the bone to

BoneName
FName

Name of the bone to set

Space
EAnimPoseSpaces

Space in which the transform should be set

STATIC FUNCTIONS
StaticClass
static UClass UAnimPoseExtensions::StaticClass()
