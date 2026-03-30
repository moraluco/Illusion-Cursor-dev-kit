# UControlRigComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UControlRigComponent

## Description

A component that hosts an animation ControlRig, manages control components and marshals data between the two

## ANIMATION

### bResetTransformBeforeTick

```
bool bResetTransformBeforeTick
```

When checked the transforms are reset before a tick / update of the rig

### bResetInitialsBeforeSetup

```
bool bResetInitialsBeforeSetup
```

When checked the initial transforms on bones, nulls and controls are reset prior to a setup event

### bUpdateInEditor

```
bool bUpdateInEditor
```

When checked the rig is run in the editor viewport without running / simulation the game

### bUpdateRigOnTick

```
bool bUpdateRigOnTick
```

When checked this ensures to run the rig's update on the component's tick automatically

---

## CONTROLRIG

### OnPostSetupDelegate

```
FControlRigComponentDelegate OnPostSetupDelegate
```

Event fired after this component's ControlRig is setup

### OnPostInitializeDelegate

```
FControlRigComponentDelegate OnPostInitializeDelegate
```

Event fired after this component's ControlRig is initialized

### OnPostForwardsSolveDelegate

```
FControlRigComponentDelegate OnPostForwardsSolveDelegate
```

Event fired after this component's ControlRig's forwards solve

### OnPreSetupDelegate

```
FControlRigComponentDelegate OnPreSetupDelegate
```

Event fired before this component's ControlRig is setup

### ControlRigClass

```
TSubclassOf<UControlRig> ControlRigClass
```

The class of control rig to instantiate

### OnPreInitializeDelegate

```
FControlRigComponentDelegate OnPreInitializeDelegate
```

Event fired just before this component's ControlRig is initialized

### OnPreForwardsSolveDelegate

```
FControlRigComponentDelegate OnPreForwardsSolveDelegate
```

Event fired before this component's ControlRig's forwards solve

AbsoluteTime

### AbsoluteTime

```
const float32 AbsoluteTime
```

Get the ControlRig's local time in seconds since its last initialize

### EVALUATION

```
LAZY EVALUATION
```
### LazyEvaluationPositionThreshold

```
float32 LazyEvaluationPositionThreshold
```

The delta threshold for a translation / position difference. 0.0 disables position differences.

### LazyEvaluationScaleThreshold

```
float32 LazyEvaluationScaleThreshold
```

The delta threshold for a scale difference. 0.0 disables scale differences.

### bEnableLazyEvaluation

```
bool bEnableLazyEvaluation
```

When checked the rig will only run if any of the mapped inputs has changed

### LazyEvaluationRotationThreshold

```
float32 LazyEvaluationRotationThreshold
```

The delta threshold for a rotation difference (in degrees). 0.0 disables rotation differences.

---

## RENDERING

### bDrawBones

```
bool bDrawBones
```

When checked the rig's bones are drawn using debug drawing similar to the animation editor viewport

### bShowDebugDrawing

```
bool bShowDebugDrawing
```

When checked the rig's debug drawing instructions are drawn in the viewport

---

## VARIABLES

### ControlRig

```
const UControlRig ControlRig CONTROLRIG OnPostForwardsSolve void OnPostForwardsSolve(UControlRigComponent Component)
```

AddMappedComponents

### void AddMappedComponents

```
void AddMappedComponents(TArray<FControlRigComponentMappedComponent> Components)
```

Adds a series of mapped bones to the rig, should not be used before OnPreInitialize Event

### AddMappedElements

```
void AddMappedElements(TArray<FControlRigComponentMappedElement> NewMappedElements)
```

Adds the provided mapped elements to the component, should not be used before OnPreInitialize Event

### AddMappedSkeletalMesh

```
void AddMappedSkeletalMesh(USkeletalMeshComponent SkeletalMeshComponent, TArray<FControlRigComponentMappedBone> Bones, TArray<FControlRigComponentMappedCurve> Curves)
```

Adds a series of mapped bones to the rig, should not be used before OnPreInitialize Event

### CanExecute

```
bool CanExecute()
```

Returns true if the Component can execute its Control Rig

### ClearMappedElements

```
void ClearMappedElements()
```

Removes all mapped elements from the component

### DoesElementExist

```
bool DoesElementExist(FName Name, ERigElementType ElementType = ERigElementType :: Bone)
```

Returns true if an element given a type and name exists in the rig

**Parameters**

Name
FName

The name for the element to look up

ElementType
ERigElementType

The type of element to look up

**Returns**

true if the element exists

GetAbsoluteTime
float32 GetAbsoluteTime() const

Get the ControlRig's local time in seconds since its last initialize

GetBoneTransform
FTransform GetBoneTransform(

FName 	BoneName,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace

)

Returns the transform of the bone in the requested space

**Parameters**

BoneName
FName

The name of the bone to retrieve the transform for

Space
EControlRigComponentSpace

The space to retrieve the transform in

**Returns**

the transform of the bone in the requested space

GetControlBool
bool GetControlBool(
FName 	ControlName
	)

Returns the value of a bool control

**Parameters**

ControlName
FName

The name of the control to retrieve the value for

**Returns**

The bool value of the control

GetControlFloat
float32 GetControlFloat(
FName 	ControlName
	)

Returns the value of a float control

**Parameters**

ControlName
FName

The name of the control to retrieve the value for

**Returns**

The float value of the control

GetControlInt
int GetControlInt(
FName 	ControlName
	)

Returns the value of an integer control

**Parameters**

ControlName
FName

The name of the control to retrieve the value for

**Returns**

The int32 value of the control

GetControlOffset
FTransform GetControlOffset(

FName 	ControlName,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace

)

Returns the offset transform of a control

**Parameters**

ControlName
FName

The name of the control to retrieve the offset transform for

Space
EControlRigComponentSpace

The space to retrieve the offset transform in

**Returns**

The offset transform of a control

GetControlPosition
FVector GetControlPosition(

FName 	ControlName,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: LocalSpace

)

Returns the value of a position control

**Parameters**

ControlName
FName

The name of the control to retrieve the value for

Space
EControlRigComponentSpace

The space to retrieve the control's value in

**Returns**

The position value of the control

GetControlRig
UControlRig GetControlRig()

Get the ControlRig hosted by this component

GetControlRotator
FRotator GetControlRotator(

FName 	ControlName,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: LocalSpace

)

Returns the value of a rotator control

**Parameters**

ControlName
FName

The name of the control to retrieve the value for

Space
EControlRigComponentSpace

The space to retrieve the control's value in

**Returns**

The rotator value of the control

GetControlScale
FVector GetControlScale(

FName 	ControlName,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: LocalSpace

)

Returns the value of a scale control

**Parameters**

ControlName
FName

The name of the control to retrieve the value for

Space
EControlRigComponentSpace

The space to retrieve the control's value in

**Returns**

The scale value of the control

GetControlTransform
FTransform GetControlTransform(

FName 	ControlName,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace

)

Returns the value of a transform control

**Parameters**

ControlName
FName

The name of the control to retrieve the value for

Space
EControlRigComponentSpace

The space to retrieve the control's value in

**Returns**

The transform value of the control

GetControlVector2D
FVector2D GetControlVector2D(
FName 	ControlName
	)

Returns the value of a Vector3D control

**Parameters**

ControlName
FName

The name of the control to retrieve the value for

**Returns**

The Vector3D value of the control

GetElementNames
TArray<FName> GetElementNames(
ERigElementType 	ElementType	 = 	ERigElementType :: Bone
	)

Returns all of the names for a given element type (Bone, Control, etc)

**Parameters**

ElementType
ERigElementType

The type of elements to return the names for

**Returns**

all of the names for a given element type (Bone, Control, etc)

GetInitialBoneTransform
FTransform GetInitialBoneTransform(

FName 	BoneName,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace

)

Returns the initial transform of the bone in the requested space

**Parameters**

BoneName
FName

The name of the bone to retrieve the transform for

Space
EControlRigComponentSpace

The space to retrieve the transform in

**Returns**

the initial transform of the bone in the requested space

GetInitialSpaceTransform
FTransform GetInitialSpaceTransform(

FName 	SpaceName,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace

)

Returns the initial transform of the space in the requested space

**Parameters**

SpaceName
FName

The name of the space to retrieve the transform for

Space
EControlRigComponentSpace

The space to retrieve the transform in

**Returns**

the initial transform of the space in the requested space

GetSpaceTransform
FTransform GetSpaceTransform(

FName 	SpaceName,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace

)

Returns the transform of the space in the requested space

**Parameters**

SpaceName
FName

The name of the space to retrieve the transform for

Space
EControlRigComponentSpace

The space to retrieve the transform in

**Returns**

the transform of the space in the requested space

Initialize
void Initialize()

Initializes the rig's memory and calls the setup event

AddMappedCompleteSkeletalMesh
void AddMappedCompleteSkeletalMesh(
USkeletalMeshComponent 	SkeletalMeshComponent
	)

Adds all matching bones to the rig, should not be used before OnPreInitialize Event

OnPostInitialize
void OnPostInitialize(
UControlRigComponent 	Component
	)
OnPostSetup
void OnPostSetup(
UControlRigComponent 	Component
	)
OnPreForwardsSolve
void OnPreForwardsSolve(
UControlRigComponent 	Component
	)
OnPreInitialize
void OnPreInitialize(
UControlRigComponent 	Component
	)
OnPreSetup
void OnPreSetup(
UControlRigComponent 	Component
	)
SetBoneInitialTransformsFromSkeletalMesh
void SetBoneInitialTransformsFromSkeletalMesh(
USkeletalMesh 	InSkeletalMesh
	)

Setup the initial transforms / ref pose of the bones based on a skeletal mesh

SetBoneTransform
void SetBoneTransform(

FName 	BoneName,
FTransform 	Transform,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace,
float32 	Weight	 = 	1.000000,
bool 	bPropagateToChildren	 = 	true

)

Sets the transform of the bone in the requested space

**Parameters**

BoneName
FName

The name of the bone to set the transform for

Space
EControlRigComponentSpace

The space to set the transform in

Weight
float32

The weight of how much the change should be applied (0.0 to 1.0)

bPropagateToChildren
bool

If true the child bones will be moved together with the affected bone

SetControlBool
void SetControlBool(
FName 	ControlName,
bool 	Value
	)

Sets the value of a bool control

**Parameters**

ControlName
FName

The name of the control to set

Value
bool

The new value for the control

SetControlFloat
void SetControlFloat(
FName 	ControlName,
float32 	Value
	)

Sets the value of a float control

**Parameters**

ControlName
FName

The name of the control to set

Value
float32

The new value for the control

SetControlInt
void SetControlInt(
FName 	ControlName,
int 	Value
	)

Sets the value of an integer control

**Parameters**

ControlName
FName

The name of the control to set

Value
int

The new value for the control

SetControlOffset
void SetControlOffset(

FName 	ControlName,
FTransform 	OffsetTransform,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace

)

Sets the offset transform of a control

**Parameters**

ControlName
FName

The name of the control to set

OffsetTransform
FTransform

The new offset trasnform for the control

Space
EControlRigComponentSpace

The space to set the offset transform in

SetControlPosition
void SetControlPosition(

FName 	ControlName,
FVector 	Value,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: LocalSpace

)

Sets the value of a position control

**Parameters**

ControlName
FName

The name of the control to set

Value
FVector

The new value for the control

Space
EControlRigComponentSpace

The space to set the value in

SetControlRotator
void SetControlRotator(

FName 	ControlName,
FRotator 	Value,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: LocalSpace

)

Sets the value of a rotator control

**Parameters**

ControlName
FName

The name of the control to set

Value
FRotator

The new value for the control

Space
EControlRigComponentSpace

The space to set the value in

SetControlScale
void SetControlScale(

FName 	ControlName,
FVector 	Value,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: LocalSpace

)

Sets the value of a scale control

**Parameters**

ControlName
FName

The name of the control to set

Value
FVector

The new value for the control

Space
EControlRigComponentSpace

The space to set the value in

SetControlTransform
void SetControlTransform(

FName 	ControlName,
FTransform 	Value,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace

)

Sets the value of a transform control

**Parameters**

ControlName
FName

The name of the control to set

Value
FTransform

The new value for the control

Space
EControlRigComponentSpace

The space to set the value in

SetControlVector2D
void SetControlVector2D(
FName 	ControlName,
FVector2D 	Value
	)

Sets the value of a vector2D control

**Parameters**

ControlName
FName

The name of the control to set

Value
FVector2D

The new value for the control

SetInitialBoneTransform
void SetInitialBoneTransform(

FName 	BoneName,
FTransform 	InitialTransform,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace,
bool 	bPropagateToChildren	 = 	false

)

Sets the initial transform of the bone in the requested space

**Parameters**

BoneName
FName

The name of the bone to set the transform for

InitialTransform
FTransform

The initial transform to set for the bone

Space
EControlRigComponentSpace

The space to set the transform in

bPropagateToChildren
bool

If true the child bones will be moved together with the affected bone

SetInitialSpaceTransform
void SetInitialSpaceTransform(

FName 	SpaceName,
FTransform 	InitialTransform,
EControlRigComponentSpace 	Space	 = 	EControlRigComponentSpace :: RigSpace

)

Sets the transform of the space in the requested space

**Parameters**

SpaceName
FName

The name of the space to set the transform for

Space
EControlRigComponentSpace

The space to set the transform in

SetMappedElements
void SetMappedElements(
TArray<FControlRigComponentMappedElement> 	NewMappedElements
	)

Replaces the mapped elements on the component with the provided array, should not be used before OnPreInitialize Event

Update
void Update(
float32 	DeltaTime	 = 	0.000000
	)

Updates and ticks the rig.

STATIC FUNCTIONS
Get
static UControlRigComponent UControlRigComponent::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UControlRigComponent UControlRigComponent::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UControlRigComponent UControlRigComponent::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UControlRigComponent::StaticClass()
