# UPhysicsConstraintComponent

**Visibility:** public

## Inheritance

USceneComponent → UPhysicsConstraintComponent

## Description

This is effectively a joint that allows you to connect 2 rigid bodies together. You can create different types of joints using the various parameters of this component.

## CONSTRAINT

### ConstraintActor1

```
AActor ConstraintActor1
```

Pointer to first Actor to constrain.

### ComponentName1

```
FConstrainComponentPropName ComponentName1
```

Name of first component property to constrain. If Actor1 is NULL, will look within Owner.  If this is NULL, will use RootComponent of Actor1

### ConstraintActor2

```
AActor ConstraintActor2
```

Pointer to second Actor to constrain.

### ComponentName2

```
FConstrainComponentPropName ComponentName2
```

Name of second component property to constrain. If Actor2 is NULL, will look within Owner.  If this is NULL, will use RootComponent of Actor2

---

## CONSTRAINTCOMPONENT

### ConstraintInstance

```
FConstraintInstance ConstraintInstance
```

All constraint settings

---

## PHYSICS \| COMPONENTS \| PHYSICSCONSTRAINT

CurrentTwist

### CurrentTwist

```
const float32 CurrentTwist
```

Gets the current Angular Twist of the constraint

### Constraint

```
const FConstraintInstanceAccessor Constraint
```

Gets the constraint object

CurrentSwing1

### CurrentSwing1

```
const float32 CurrentSwing1
```

Gets the current Swing1 of the constraint

CurrentSwing2

### CurrentSwing2

```
const float32 CurrentSwing2
```

Gets the current Swing2 of the constraint

---

## VARIABLES

### OnConstraintBroken

```
FConstraintBrokenSignature OnConstraintBroken
```

Notification when constraint is broken.

### OnPlasticDeformation

```
FPlasticDeformationEventSignature OnPlasticDeformation
```

Notification when constraint plasticity drive target changes.

---

## PHYSICS \| COMPONENTS \| PHYSICSCONSTRAINT

### SetConstraintReferenceFrame

```
void SetConstraintReferenceFrame(EConstraintFrame Frame, FTransform RefFrame)
```

Pass in reference frame in. If the constraint is currently active, this will set its active local pose. Otherwise the change will take affect in InitConstraint.

### GetConstrainedComponents

```
void GetConstrainedComponents(UPrimitiveComponent& OutComponent1, FName& OutBoneName1, UPrimitiveComponent& OutComponent2, FName& OutBoneName2)
```

Get connected components and potential related attachement bones

### GetConstraint

```
FConstraintInstanceAccessor GetConstraint()
```

Gets the constraint object

### GetConstraintForce

```
void GetConstraintForce(FVector& OutLinearForce, FVector& OutAngularForce)
```

Retrieve the constraint force most recently applied to maintain this constraint. Returns 0 forces if the constraint is not initialized or broken.

### GetCurrentSwing1

```
float32 GetCurrentSwing1()const
```

Gets the current Swing1 of the constraint

### GetCurrentSwing2

```
float32 GetCurrentSwing2()const
```

Gets the current Swing2 of the constraint

### GetCurrentTwist

```
float32 GetCurrentTwist()const
```

Gets the current Angular Twist of the constraint

### IsBroken

```
bool IsBroken()
```

Retrieve the status of constraint being broken.

### SetAngularBreakable

```
void SetAngularBreakable(bool bAngularBreakable, float32 AngularBreakThreshold)
```

Sets the Angular Breakable properties

**Parameters**

bAngularBreakable
bool

Whether it is possible to break the joint with angular force

AngularBreakThreshold
float32

Torque needed to break the joint

SetAngularDriveMode
void SetAngularDriveMode(
EAngularDriveMode 	DriveMode
	)

Switches the angular drive mode between SLERP and Twist And Swing

**Parameters**

DriveMode
EAngularDriveMode

The angular drive mode to use. SLERP uses shortest spherical path, but will not work if any angular constraints are locked. Twist and Swing decomposes the path into the different angular degrees of freedom but may experience gimbal lock

SetAngularDriveParams
void SetAngularDriveParams(
float32 	PositionStrength,
float32 	VelocityStrength,
float32 	InForceLimit
	)

Sets the drive params for the angular drive.

**Parameters**

PositionStrength
float32

Positional strength for the drive (stiffness)

VelocityStrength
float32

Velocity strength of the drive (damping)

InForceLimit
float32

Max force applied by the drive

SetAngularOrientationTarget
void SetAngularOrientationTarget(
FRotator 	InPosTarget
	)

Sets the target orientation for the angular drive.

**Parameters**

InPosTarget
FRotator

Target orientation

SetAngularPlasticity
void SetAngularPlasticity(
bool 	bAngularPlasticity,
float32 	AngularPlasticityThreshold
	)

Sets the Angular Plasticity properties

**Parameters**

bAngularPlasticity
bool

Whether it is possible to reset the target angle from the angular displacement

AngularPlasticityThreshold
float32

Degrees needed to reset the rest state of the joint

SetAngularSwing1Limit
void SetAngularSwing1Limit(
EAngularConstraintMotion 	MotionType,
float32 	Swing1LimitAngle
	)

Sets the Angular Swing1 Motion Type

**Parameters**

Swing1LimitAngle
float32

Size of limit in degrees

SetAngularSwing2Limit
void SetAngularSwing2Limit(
EAngularConstraintMotion 	MotionType,
float32 	Swing2LimitAngle
	)

Sets the Angular Swing2 Motion Type

**Parameters**

Swing2LimitAngle
float32

Size of limit in degrees

SetAngularTwistLimit
void SetAngularTwistLimit(
EAngularConstraintMotion 	ConstraintType,
float32 	TwistLimitAngle
	)

Sets the Angular Twist Motion Type

**Parameters**

ConstraintType
EAngularConstraintMotion

New Constraint Type

TwistLimitAngle
float32

Size of limit in degrees

SetAngularVelocityDriveSLERP
void SetAngularVelocityDriveSLERP(
bool 	bEnableSLERP
	)

Enables/Disables the angular velocity slerp drive. Only relevant if the AngularDriveMode is set to SLERP

**Parameters**

bEnableSLERP
bool

Indicates whether the SLERP drive should be enabled. Only relevant if the AngularDriveMode is set to SLERP

SetAngularVelocityDriveTwistAndSwing
void SetAngularVelocityDriveTwistAndSwing(
bool 	bEnableTwistDrive,
bool 	bEnableSwingDrive
	)

Enables/Disables angular velocity twist and swing drive. Only relevant if the AngularDriveMode is set to Twist and Swing

**Parameters**

bEnableTwistDrive
bool

Indicates whether the drive for the twist axis should be enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

bEnableSwingDrive
bool

Indicates whether the drive for the swing axis should be enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

SetAngularVelocityTarget
void SetAngularVelocityTarget(
FVector 	InVelTarget
	)

Sets the target velocity for the angular drive.

**Parameters**

InVelTarget
FVector

Target velocity

SetConstrainedComponents
void SetConstrainedComponents(
UPrimitiveComponent 	Component1,
FName 	BoneName1,
UPrimitiveComponent 	Component2,
FName 	BoneName2
	)

Directly specify component to connect. Will update frames based on current position.

BreakConstraint
void BreakConstraint()

Break this constraint

SetConstraintReferenceOrientation
void SetConstraintReferenceOrientation(
EConstraintFrame 	Frame,
FVector 	PriAxis,
FVector 	SecAxis
	)

Pass in reference orientation in (maintains reference position). If the constraint is currently active, this will set its active local pose. Otherwise the change will take affect in InitConstraint.

SetConstraintReferencePosition
void SetConstraintReferencePosition(
EConstraintFrame 	Frame,
FVector 	RefPosition
	)

Pass in reference position in (maintains reference orientation). If the constraint is currently active, this will set its active local pose. Otherwise the change will take affect in InitConstraint.

SetContactTransferScale
void SetContactTransferScale(
float32 	ContactTransferScale
	)

Sets the contact transfer scale properties

**Parameters**

ContactTransferScale
float32

Set the contact transfer scale for the parent of the joint

SetDisableCollision
void SetDisableCollision(
bool 	bDisableCollision
	)

If true, the collision between the two rigid bodies of the constraint will be disabled.

SetLinearBreakable
void SetLinearBreakable(
bool 	bLinearBreakable,
float32 	LinearBreakThreshold
	)

Sets the Linear Breakable properties

**Parameters**

bLinearBreakable
bool

Whether it is possible to break the joint with linear force

LinearBreakThreshold
float32

Force needed to break the joint

SetLinearDriveParams
void SetLinearDriveParams(
float32 	PositionStrength,
float32 	VelocityStrength,
float32 	InForceLimit
	)

Sets the drive params for the linear drive.

**Parameters**

PositionStrength
float32

Positional strength for the drive (stiffness)

VelocityStrength
float32

Velocity strength of the drive (damping)

InForceLimit
float32

Max force applied by the drive

SetLinearPlasticity
void SetLinearPlasticity(
bool 	bLinearPlasticity,
float32 	LinearPlasticityThreshold,
EConstraintPlasticityType 	PlasticityType
	)

Sets the Linear Plasticity properties

**Parameters**

bLinearPlasticity
bool

Whether it is possible to reset the target angle from the Linear displacement

LinearPlasticityThreshold
float32

Percent deformation needed to reset the rest length of the joint

SetLinearPositionDrive
void SetLinearPositionDrive(
bool 	bEnableDriveX,
bool 	bEnableDriveY,
bool 	bEnableDriveZ
	)

Enables/Disables linear position drive

**Parameters**

bEnableDriveX
bool

Indicates whether the drive for the X-Axis should be enabled

bEnableDriveY
bool

Indicates whether the drive for the Y-Axis should be enabled

bEnableDriveZ
bool

Indicates whether the drive for the Z-Axis should be enabled

SetLinearPositionTarget
void SetLinearPositionTarget(
FVector 	InPosTarget
	)

Sets the target position for the linear drive.

**Parameters**

InPosTarget
FVector

Target position

SetLinearVelocityDrive
void SetLinearVelocityDrive(
bool 	bEnableDriveX,
bool 	bEnableDriveY,
bool 	bEnableDriveZ
	)

Enables/Disables linear position drive

**Parameters**

bEnableDriveX
bool

Indicates whether the drive for the X-Axis should be enabled

bEnableDriveY
bool

Indicates whether the drive for the Y-Axis should be enabled

bEnableDriveZ
bool

Indicates whether the drive for the Z-Axis should be enabled

SetLinearVelocityTarget
void SetLinearVelocityTarget(
FVector 	InVelTarget
	)

Sets the target velocity for the linear drive.

**Parameters**

InVelTarget
FVector

Target velocity

SetLinearXLimit
void SetLinearXLimit(
ELinearConstraintMotion 	ConstraintType,
float32 	LimitSize
	)

Sets the LinearX Motion Type

**Parameters**

ConstraintType
ELinearConstraintMotion

New Constraint Type

LimitSize
float32

Size of limit

SetLinearYLimit
void SetLinearYLimit(
ELinearConstraintMotion 	ConstraintType,
float32 	LimitSize
	)

Sets the LinearY Motion Type

**Parameters**

ConstraintType
ELinearConstraintMotion

New Constraint Type

LimitSize
float32

Size of limit

SetLinearZLimit
void SetLinearZLimit(
ELinearConstraintMotion 	ConstraintType,
float32 	LimitSize
	)

Sets the LinearZ Motion Type

**Parameters**

ConstraintType
ELinearConstraintMotion

New Constraint Type

LimitSize
float32

Size of limit

SetOrientationDriveSLERP
void SetOrientationDriveSLERP(
bool 	bEnableSLERP
	)

Enables/Disables the angular orientation slerp drive. Only relevant if the AngularDriveMode is set to SLERP

**Parameters**

bEnableSLERP
bool

Indicates whether the SLERP drive should be enabled. Only relevant if the AngularDriveMode is set to SLERP

SetOrientationDriveTwistAndSwing
void SetOrientationDriveTwistAndSwing(
bool 	bEnableTwistDrive,
bool 	bEnableSwingDrive
	)

Enables/Disables angular orientation drive. Only relevant if the AngularDriveMode is set to Twist and Swing

**Parameters**

bEnableTwistDrive
bool

Indicates whether the drive for the twist axis should be enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

bEnableSwingDrive
bool

Indicates whether the drive for the swing axis should be enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

STATIC FUNCTIONS
Get
static UPhysicsConstraintComponent UPhysicsConstraintComponent::Get(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
GetOrCreate
static UPhysicsConstraintComponent UPhysicsConstraintComponent::GetOrCreate(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
Create
static UPhysicsConstraintComponent UPhysicsConstraintComponent::Create(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
StaticClass
static UClass UPhysicsConstraintComponent::StaticClass()
