# ControlRigSequencerEditor

## Inheritance

ControlRigSequencerEditor

## Description

STATIC VARIABLES VisibleControlRigs static const TArray<UControlRig> ControlRigSequencerEditor::VisibleControlRigs WorldSpaceReferenceKey static const FRigElementKey ControlRigSequencerEditor::WorldSpaceReferenceKey DefaultParentKey static const FRigElementKey ControlRigSequencerEditor::DefaultParentKey EDITOR SCRIPTING | SEQUENCER TOOLS | CONTROL RIG GetSkeletalMeshComponentWorldTransform static FTransform ControlRigSequencerEditor::GetSkeletalMeshComponentWorldTransform(

ULevelSequence 	LevelSequence, USkeletalMeshComponent 	SkeletalMeshComponent, FFrameNumber 	Frame, ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate, FName 	ReferenceName	 = 	NAME_None

)

Get SkeletalMeshComponent World Transform at a specific time

Parameters LevelSequence ULevelSequence

Active Sequence to get transform for

SkeletalMeshComponent USkeletalMeshComponent

## Members

### SkeletalMeshComponent

```
The SkeletalMeshComponent
```

Frame FFrameNumber

### transform

```
Time to get the transform
```

TimeUnit ESequenceTimeUnit

### resolution

```
Unit for frame values, either in display rate or tick resolution
```

ReferenceName FName

### referencer

```
Optional name of the referencer
```
**Returns**

Returns World Transform

BakeToControlRig
static bool ControlRigSequencerEditor::BakeToControlRig(

UWorld 	World,
ULevelSequence 	LevelSequence,
UClass 	ControlRigClass,
UAnimSeqExportOption 	ExportOptions,
bool 	bReduceKeys,
float32 	Tolerance,
FSequencerBindingProxy 	Binding

)

Bake the current animation in the binding to a Control Rig track

**Parameters**

World
UWorld

The active world

LevelSequence
ULevelSequence

The LevelSequence we are baking

ControlRigClass
UClass

The class of the Control Rig

ExportOptions
UAnimSeqExportOption

Export options for creating an animation sequence

Tolerance
float32

If reducing keys, tolerance about which keys will be removed, smaller tolerance, more keys usually.

Binding
FSequencerBindingProxy

The binding upon which to bake

**Returns**

returns True if successful, False otherwise

CollapseControlRigAnimLayers
static bool ControlRigSequencerEditor::CollapseControlRigAnimLayers(

ULevelSequence 	InSequence,
UMovieSceneControlRigParameterTrack 	InTrack,
bool 	bKeyReduce	 = 	false,
float32 	Tolerance	 = 	0.001000

)

Collapse and bake all sections and layers on a control rig track to just one section.  * *

**Parameters**

InSequence
ULevelSequence

Sequence that has track to collapse *

InTrack
UMovieSceneControlRigParameterTrack

Track for layers to collapse *

bKeyReduce
bool

If true do key reduction based upon Tolerance, if false don't *

Tolerance
float32

If reducing keys, tolerance about which keys will be removed, smaller tolerance, more keys usually.

DeleteControlRigSpace
static bool ControlRigSequencerEditor::DeleteControlRigSpace(

ULevelSequence 	InSequence,
UControlRig 	InControlRig,
FName 	InControlName,
FFrameNumber 	InTime,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Delete the Control Rig Space Key for the Control at the specified time. This will delete any attached Control Rig keys at this time and will perform any needed compensation to the new space.

**Parameters**

InSequence
ULevelSequence

Sequence to set the space

InControlRig
UControlRig

ControlRig with the Control

InControlName
FName

The name of the Control

InTime
FFrameNumber

Time to delete the space.

TimeUnit
ESequenceTimeUnit

Unit for the InTime, either in display rate or tick resolution

**Returns**

Will return false if function fails,  for example if there is no key at this time it will fail.

FindOrCreateControlRigComponentTrack
static TArray<UMovieSceneTrack> ControlRigSequencerEditor::FindOrCreateControlRigComponentTrack(

UWorld 	World,
ULevelSequence 	LevelSequence,
FSequencerBindingProxy 	InBinding

)

Find or create a Control Rig Component

**Parameters**

World
UWorld

The world used to spawn into temporarily if binding is a spawnable

LevelSequence
ULevelSequence

The LevelSequence to find or create

InBinding
FSequencerBindingProxy

The binding (actor or component binding) to find or create the Control Rig tracks

**Returns**

returns Find array of component Control Rigs that were found or created

FindOrCreateControlRigTrack
static UMovieSceneTrack ControlRigSequencerEditor::FindOrCreateControlRigTrack(

	UWorld 	World,
	ULevelSequence 	LevelSequence,
const 	UClass 	ControlRigClass,
	FSequencerBindingProxy 	InBinding

)

Find or create a Control Rig track of a specific class based upon the binding

**Parameters**

World
UWorld

The world used to spawn into temporarily if binding is a spawnable

LevelSequence
ULevelSequence

The LevelSequence to find or create

ControlRigClass
const UClass

The class of the Control Rig

InBinding
FSequencerBindingProxy

The binding (actor or component binding) to find or create the Control Rig track

**Returns**

returns Return the found or created track

GetActorWorldTransform
static FTransform ControlRigSequencerEditor::GetActorWorldTransform(

ULevelSequence 	LevelSequence,
AActor 	Actor,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get Actors World Transform at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get transform for

Actor
AActor

The actor

Frame
FFrameNumber

Time to get the transform

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns World Transform

GetActorWorldTransforms
static TArray<FTransform> ControlRigSequencerEditor::GetActorWorldTransforms(

ULevelSequence 	LevelSequence,
AActor 	Actor,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get Actors World Transforms at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get transform for

Actor
AActor

The actor

Frames
TArray<FFrameNumber>

Times to get the transform

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns World Transforms

GetControlRigs
static TArray<FControlRigSequencerBindingProxy> ControlRigSequencerEditor::GetControlRigs(

ULevelSequence 	LevelSequence

)

Get all of the control rigs and their bindings in the level sequence

**Parameters**

LevelSequence
ULevelSequence

The movie scene sequence to look for Control Rigs

**Returns**

returns list of Control Rigs in the level sequence.

GetControlRigWorldTransform
static FTransform ControlRigSequencerEditor::GetControlRigWorldTransform(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's World Transform at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get transform for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control

Frame
FFrameNumber

Time to get the transform

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns World Transform

GetControlRigWorldTransforms
static TArray<FTransform> ControlRigSequencerEditor::GetControlRigWorldTransforms(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's World Transforms at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get transform for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control

Frames
TArray<FFrameNumber>

Times to get the transform

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns World Transforms

GetDefaultParentKey
static FRigElementKey ControlRigSequencerEditor::GetDefaultParentKey()

Get the default parent key, can be used a parent space.

GetLocalControlRigBool
static bool ControlRigSequencerEditor::GetLocalControlRigBool(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's bool value at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a bool control

Frame
FFrameNumber

Time to get the value

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Value at that time

GetLocalControlRigBools
static TArray<bool> ControlRigSequencerEditor::GetLocalControlRigBools(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's bool values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a bool control

Frames
TArray<FFrameNumber>

Times to get the values

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Values at those times

GetLocalControlRigEulerTransform
static FEulerTransform ControlRigSequencerEditor::GetLocalControlRigEulerTransform(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's EulerTransform value at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a EulerTransfom control

Frame
FFrameNumber

Time to get the value

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Value at that time

GetLocalControlRigEulerTransforms
static TArray<FEulerTransform> ControlRigSequencerEditor::GetLocalControlRigEulerTransforms(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's EulerTransform values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a EulerTransform control

Frames
TArray<FFrameNumber>

Times to get the values

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Values at those times

GetLocalControlRigFloat
static float32 ControlRigSequencerEditor::GetLocalControlRigFloat(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's float value at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a float control

Frame
FFrameNumber

Time to get the value

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Value at that time

GetLocalControlRigFloats
static TArray<float32> ControlRigSequencerEditor::GetLocalControlRigFloats(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's float values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a float control

Frames
TArray<FFrameNumber>

Times to get the values

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Values at those times

GetLocalControlRigInt
static int ControlRigSequencerEditor::GetLocalControlRigInt(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's integer value at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a integer control

Frame
FFrameNumber

Time to get the value

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Value at that time

GetLocalControlRigInts
static TArray<int> ControlRigSequencerEditor::GetLocalControlRigInts(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's integer values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a intteger control

Frames
TArray<FFrameNumber>

Times to get the values

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Values at those times

GetLocalControlRigPosition
static FVector ControlRigSequencerEditor::GetLocalControlRigPosition(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's Position value at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Position control

Frame
FFrameNumber

Time to get the value

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Value at that time

GetLocalControlRigPositions
static TArray<FVector> ControlRigSequencerEditor::GetLocalControlRigPositions(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's Position values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Position control

Frames
TArray<FFrameNumber>

Times to get the values

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Values at those times

GetLocalControlRigRotator
static FRotator ControlRigSequencerEditor::GetLocalControlRigRotator(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's Rotator value at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Rotator control

Frame
FFrameNumber

Time to get the value

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Value at that time

GetLocalControlRigRotators
static TArray<FRotator> ControlRigSequencerEditor::GetLocalControlRigRotators(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's Rotator values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Rotator control

Frames
TArray<FFrameNumber>

Times to get the values

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Values at those times

GetLocalControlRigScale
static FVector ControlRigSequencerEditor::GetLocalControlRigScale(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's Scale value at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Scale control

Frame
FFrameNumber

Time to get the value

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Value at that time

GetLocalControlRigScales
static TArray<FVector> ControlRigSequencerEditor::GetLocalControlRigScales(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's Scale values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Scale control

Frames
TArray<FFrameNumber>

Times to get the values

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Values at those times

GetLocalControlRigTransform
static FTransform ControlRigSequencerEditor::GetLocalControlRigTransform(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's Transform value at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Transform control

Frame
FFrameNumber

Time to get the value

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Value at that time

GetLocalControlRigTransformNoScale
static FTransformNoScale ControlRigSequencerEditor::GetLocalControlRigTransformNoScale(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's TransformNoScale value at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a TransformNoScale control

Frame
FFrameNumber

Time to get the value

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Value at that time

GetLocalControlRigTransformNoScales
static TArray<FTransformNoScale> ControlRigSequencerEditor::GetLocalControlRigTransformNoScales(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's TransformNoScale values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a TransformNoScale control

Frames
TArray<FFrameNumber>

Times to get the values

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Values at those times

GetLocalControlRigTransforms
static TArray<FTransform> ControlRigSequencerEditor::GetLocalControlRigTransforms(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's Transform values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Transform control

Frames
TArray<FFrameNumber>

Times to get the values

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Values at those times

GetLocalControlRigVector2D
static FVector2D ControlRigSequencerEditor::GetLocalControlRigVector2D(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's Vector2D value at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Vector2D control

Frame
FFrameNumber

Time to get the value

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Value at that time

GetLocalControlRigVector2Ds
static TArray<FVector2D> ControlRigSequencerEditor::GetLocalControlRigVector2Ds(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Get ControlRig Control's Vector2D values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get value for

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Vector2D control

Frames
TArray<FFrameNumber>

Times to get the values

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

**Returns**

Returns Values at those times

BakeControlRigSpace
static bool ControlRigSequencerEditor::BakeControlRigSpace(

ULevelSequence 	InSequence,
UControlRig 	InControlRig,
TArray<FName> 	InControlNames,
FRigSpacePickerBakeSettings 	InSettings,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Bake specified Control Rig Controls to a specified Space based upon the current settings

**Parameters**

InSequence
ULevelSequence

Sequence to bake

InControlRig
UControlRig

ControlRig to bake

InControlNames
TArray<FName>

The name of the Controls to bake

InSettings
FRigSpacePickerBakeSettings

The settings for the bake, e.g, how long to bake, to key reduce etc.

TimeUnit
ESequenceTimeUnit

Unit for the start and end times in the InSettings parameter.

GetSkeletalMeshComponentWorldTransforms
static TArray<FTransform> ControlRigSequencerEditor::GetSkeletalMeshComponentWorldTransforms(

ULevelSequence 	LevelSequence,
USkeletalMeshComponent 	SkeletalMeshComponent,
TArray<FFrameNumber> 	Frames,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
FName 	ReferenceName	 = 	NAME_None

)

Get SkeletalMeshComponents World Transforms at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to get transform for

SkeletalMeshComponent
USkeletalMeshComponent

The SkeletalMeshComponent

Frames
TArray<FFrameNumber>

Times to get the transform

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

ReferenceName
FName

Optional name of the referencer

**Returns**

Returns World Transforms

GetVisibleControlRigs
static TArray<UControlRig> ControlRigSequencerEditor::GetVisibleControlRigs()

Get all of the visible control rigs in the level

**Returns**

returns list of visible Control Rigs

GetWorldSpaceReferenceKey
static FRigElementKey ControlRigSequencerEditor::GetWorldSpaceReferenceKey()

Get the default world space key, can be used a world space.

SetLocalControlRigPosition
static void ControlRigSequencerEditor::SetLocalControlRigPosition(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
FVector 	Value,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's Position value at specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Position control

Frame
FFrameNumber

Time to set the value

Value
FVector

to set

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

If True set a key, if not just set the value

LoadAnimSequenceIntoControlRigSection
static bool ControlRigSequencerEditor::LoadAnimSequenceIntoControlRigSection(

UMovieSceneSection 	MovieSceneSection,
UAnimSequence 	AnimSequence,
USkeletalMeshComponent 	SkelMeshComp,
FFrameNumber 	InStartFrame,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bKeyReduce	 = 	false,
float32 	Tolerance	 = 	0.001000

)

Load anim sequence into this control rig section

**Parameters**

MovieSceneSection
UMovieSceneSection

The MovieSceneSectionto load into

AnimSequence
UAnimSequence

The Sequence to load

InStartFrame
FFrameNumber

Frame to insert the animation

TimeUnit
ESequenceTimeUnit

Unit for all frame and time values, either in display rate or tick resolution

bKeyReduce
bool

If true do key reduction based upon Tolerance, if false don't

Tolerance
float32

If reducing keys, tolerance about which keys will be removed, smaller tolerance, more keys usually.

**Returns**

returns True if successful, False otherwise

MoveControlRigSpace
static bool ControlRigSequencerEditor::MoveControlRigSpace(

ULevelSequence 	InSequence,
UControlRig 	InControlRig,
FName 	InControlName,
FFrameNumber 	InTime,
FFrameNumber 	InNewTime,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Move the Control Rig Space Key for the Control at the specified time to the new time. This will also move any Control Rig keys at this space switch boundary.

**Parameters**

InSequence
ULevelSequence

Sequence to set the space

InControlRig
UControlRig

ControlRig with the Control

InControlName
FName

The name of the Control

InTime
FFrameNumber

Original time of the space key

InNewTime
FFrameNumber

New time for the space key

TimeUnit
ESequenceTimeUnit

Unit for the time params, either in display rate or tick resolution

**Returns**

Will return false if function fails, for example if there is no key at this time it will fail, or if the new time is invalid it could fail also

SetControlRigSpace
static bool ControlRigSequencerEditor::SetControlRigSpace(

ULevelSequence 	InSequence,
UControlRig 	InControlRig,
FName 	InControlName,
FRigElementKey 	InSpaceKey,
FFrameNumber 	InTime,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set the a key for the Control Rig Space for the Control at the specified time. If space is the same as the current no key witll be set.  * *

**Parameters**

InSequence
ULevelSequence

Sequence to set the space *

InControlRig
UControlRig

ControlRig with the Control *

InControlName
FName

The name of the Control *

InSpaceKey
FRigElementKey

The new space for the Control *

InTime
FFrameNumber

Time to change the space. *

TimeUnit
ESequenceTimeUnit

Unit for the InTime, either in display rate or tick resolution

SetControlRigWorldTransform
static void ControlRigSequencerEditor::SetControlRigWorldTransform(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
FTransform 	WorldTransform,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's World Transform at a specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set transforms for. Must be loaded in Level Editor.

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control

Frame
FFrameNumber

Time to set the transform

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

Whether or not to set a key.

SetControlRigWorldTransforms
static void ControlRigSequencerEditor::SetControlRigWorldTransforms(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
TArray<FFrameNumber> 	Frames,
TArray<FTransform> 	WorldTransforms,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's World Transforms at a specific times.

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set transforms for. Must be loaded in Level Editor.

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control

Frames
TArray<FFrameNumber>

Times to set the transform

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SetLocalControlRigBool
static void ControlRigSequencerEditor::SetLocalControlRigBool(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
bool 	Value,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's bool value at specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a bool control

Frame
FFrameNumber

Time to set the value

Value
bool

to set

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

If True set a key, if not just set the value

SetLocalControlRigBools
static void ControlRigSequencerEditor::SetLocalControlRigBools(

	ULevelSequence 	LevelSequence,
	UControlRig 	ControlRig,
	FName 	ControlName,
	TArray<FFrameNumber> 	Frames,
const 	TArray<bool> 	Values,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's bool values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a bool control

Frames
TArray<FFrameNumber>

Times to set the values

Values
const TArray<bool>

to set at those times

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SetLocalControlRigEulerTransform
static void ControlRigSequencerEditor::SetLocalControlRigEulerTransform(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
FEulerTransform 	Value,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's EulerTransform value at specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a EulerTransform control

Frame
FFrameNumber

Time to set the value

Value
FEulerTransform

to set

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

If True set a key, if not just set the value

SetLocalControlRigEulerTransforms
static void ControlRigSequencerEditor::SetLocalControlRigEulerTransforms(

	ULevelSequence 	LevelSequence,
	UControlRig 	ControlRig,
	FName 	ControlName,
	TArray<FFrameNumber> 	Frames,
const 	TArray<FEulerTransform> 	Values,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's EulerTransform values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a EulerTransform control

Frames
TArray<FFrameNumber>

Times to set the values

Values
const TArray<FEulerTransform>

to set at those times

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SetLocalControlRigFloat
static void ControlRigSequencerEditor::SetLocalControlRigFloat(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
float32 	Value,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's float value at specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a float control

Frame
FFrameNumber

Time to set the value

Value
float32

to set

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

If True set a key, if not just set the value

SetLocalControlRigFloats
static void ControlRigSequencerEditor::SetLocalControlRigFloats(

	ULevelSequence 	LevelSequence,
	UControlRig 	ControlRig,
	FName 	ControlName,
	TArray<FFrameNumber> 	Frames,
const 	TArray<float32> 	Values,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's float values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a float control

Frames
TArray<FFrameNumber>

Times to set the values

Values
const TArray<float32>

to set at those times

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SetLocalControlRigInt
static void ControlRigSequencerEditor::SetLocalControlRigInt(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
int 	Value,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's int value at specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a int control

Frame
FFrameNumber

Time to set the value

Value
int

to set

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

If True set a key, if not just set the value

SetLocalControlRigInts
static void ControlRigSequencerEditor::SetLocalControlRigInts(

	ULevelSequence 	LevelSequence,
	UControlRig 	ControlRig,
	FName 	ControlName,
	TArray<FFrameNumber> 	Frames,
const 	TArray<int> 	Values,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's int values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a int control

Frames
TArray<FFrameNumber>

Times to set the values

Values
const TArray<int>

to set at those times

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SetLocalControlRigTransformNoScale
static void ControlRigSequencerEditor::SetLocalControlRigTransformNoScale(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
FTransformNoScale 	Value,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's TransformNoScale value at specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a TransformNoScale control

Frame
FFrameNumber

Time to set the value

Value
FTransformNoScale

to set

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

If True set a key, if not just set the value

SetLocalControlRigPositions
static void ControlRigSequencerEditor::SetLocalControlRigPositions(

	ULevelSequence 	LevelSequence,
	UControlRig 	ControlRig,
	FName 	ControlName,
	TArray<FFrameNumber> 	Frames,
const 	TArray<FVector> 	Values,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's Position values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Position control

Frames
TArray<FFrameNumber>

Times to set the values

Values
const TArray<FVector>

to set at those times

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SetLocalControlRigRotator
static void ControlRigSequencerEditor::SetLocalControlRigRotator(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
FRotator 	Value,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's Rotator value at specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Rotator control

Frame
FFrameNumber

Time to set the value

Value
FRotator

to set

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

If True set a key, if not just set the value

SetLocalControlRigRotators
static void ControlRigSequencerEditor::SetLocalControlRigRotators(

	ULevelSequence 	LevelSequence,
	UControlRig 	ControlRig,
	FName 	ControlName,
	TArray<FFrameNumber> 	Frames,
const 	TArray<FRotator> 	Values,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's Rotator values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Rotator control

Frames
TArray<FFrameNumber>

Times to set the values

Values
const TArray<FRotator>

to set at those times

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SetLocalControlRigScale
static void ControlRigSequencerEditor::SetLocalControlRigScale(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
FVector 	Value,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's Scale value at specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Scale control

Frame
FFrameNumber

Time to set the value

Value
FVector

to set

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

If True set a key, if not just set the value

SetLocalControlRigScales
static void ControlRigSequencerEditor::SetLocalControlRigScales(

	ULevelSequence 	LevelSequence,
	UControlRig 	ControlRig,
	FName 	ControlName,
	TArray<FFrameNumber> 	Frames,
const 	TArray<FVector> 	Values,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's Scale values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Scale control

Frames
TArray<FFrameNumber>

Times to set the values

Values
const TArray<FVector>

to set at those times

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SetLocalControlRigTransform
static void ControlRigSequencerEditor::SetLocalControlRigTransform(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
FTransform 	Value,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's Transform value at specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Transform control

Frame
FFrameNumber

Time to set the value

Value
FTransform

to set

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

If True set a key, if not just set the value

SetLocalControlRigTransformNoScales
static void ControlRigSequencerEditor::SetLocalControlRigTransformNoScales(

	ULevelSequence 	LevelSequence,
	UControlRig 	ControlRig,
	FName 	ControlName,
	TArray<FFrameNumber> 	Frames,
const 	TArray<FTransformNoScale> 	Values,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's TransformNoScale values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a TransformNoScale control

Frames
TArray<FFrameNumber>

Times to set the values

Values
const TArray<FTransformNoScale>

to set at those times

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SetLocalControlRigTransforms
static void ControlRigSequencerEditor::SetLocalControlRigTransforms(

	ULevelSequence 	LevelSequence,
	UControlRig 	ControlRig,
	FName 	ControlName,
	TArray<FFrameNumber> 	Frames,
const 	TArray<FTransform> 	Values,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's Transform values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Transform control

Frames
TArray<FFrameNumber>

Times to set the values

Values
const TArray<FTransform>

to set at those times

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SetLocalControlRigVector2D
static void ControlRigSequencerEditor::SetLocalControlRigVector2D(

ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
FName 	ControlName,
FFrameNumber 	Frame,
FVector2D 	Value,
ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate,
bool 	bSetKey	 = 	true

)

Set ControlRig Control's Vector2D value at specific time

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Vector2D control

Frame
FFrameNumber

Time to set the value

Value
FVector2D

to set

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

bSetKey
bool

If True set a key, if not just set the value

SetLocalControlRigVector2Ds
static void ControlRigSequencerEditor::SetLocalControlRigVector2Ds(

	ULevelSequence 	LevelSequence,
	UControlRig 	ControlRig,
	FName 	ControlName,
	TArray<FFrameNumber> 	Frames,
const 	TArray<FVector2D> 	Values,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Set ControlRig Control's Vector2D values at specific times

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to set value on

ControlRig
UControlRig

The ControlRig

ControlName
FName

Name of the Control, should be a Vector2D control

Frames
TArray<FFrameNumber>

Times to set the values

Values
const TArray<FVector2D>

to set at those times

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

SnapControlRig
static bool ControlRigSequencerEditor::SnapControlRig(

	ULevelSequence 	LevelSequence,
	FFrameNumber 	StartFrame,
	FFrameNumber 	EndFrame,
	FControlRigSnapperSelection 	ChildrenToSnap,
	FControlRigSnapperSelection 	ParentToSnap,
const 	UControlRigSnapSettings 	SnapSettings,
	ESequenceTimeUnit 	TimeUnit	 = 	ESequenceTimeUnit :: DisplayRate

)

Peform a Snap operation to snap the children to the parent.

**Parameters**

LevelSequence
ULevelSequence

Active Sequence to snap

StartFrame
FFrameNumber

Beginning of the snap

EndFrame
FFrameNumber

End of the snap

ChildrenToSnap
FControlRigSnapperSelection

The children objects that snap and get keys set onto. They need to live in an active Sequencer in the level editor

ParentToSnap
FControlRigSnapperSelection

The parent object to snap relative to. If animated, it needs to live in an active Sequencer in the level editor

SnapSettings
const UControlRigSnapSettings

Settings to use

TimeUnit
ESequenceTimeUnit

Unit for frame values, either in display rate or tick resolution

TweenControlRig
static bool ControlRigSequencerEditor::TweenControlRig(
ULevelSequence 	LevelSequence,
UControlRig 	ControlRig,
float32 	TweenValue
	)

Peform a Tween operation on the current active sequencer time(must be visible).

**Parameters**

LevelSequence
ULevelSequence

The LevelSequence that's loaded in the editor

ControlRig
UControlRig

The Control Rig to tween.

TweenValue
float32

The tween value to use, range from -1(blend to previous) to 1(blend to next)

EDITOR SCRIPTING | SEQUENCER TOOLS | FBX
ImportFBXToControlRigTrack
static bool ControlRigSequencerEditor::ImportFBXToControlRigTrack(

UWorld 	World,
ULevelSequence 	InSequence,
UMovieSceneControlRigParameterTrack 	InTrack,
UMovieSceneControlRigParameterSection 	InSection,
TArray<FString> 	SelectedControlRigNames,
UMovieSceneUserImportFBXControlRigSettings 	ImportFBXControlRigSettings,
FString 	ImportFilename

)

Import FBX onto a control rig with the specified track and section * *

**Parameters**

InSequence
ULevelSequence

Sequence to import *

InTrack
UMovieSceneControlRigParameterTrack

Track to import onto *

InSection
UMovieSceneControlRigParameterSection

Section to import onto, may be null in which case we use the track's section to key *

SelectedControlRigNames
TArray<FString>

List of selected control rig names. Will use them if  ImportFBXControlRigSettings->bImportOntoSelectedControls is true *

ImportFBXControlRigSettings
UMovieSceneUserImportFBXControlRigSettings

Settings to control import. *
