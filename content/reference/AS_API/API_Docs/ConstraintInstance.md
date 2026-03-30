# ConstraintInstance

## Inheritance

ConstraintInstance

## PHYSICS \| CONSTRAINTS

### GetProjectionParams

```
static void ConstraintInstance::GetProjectionParams(
```

FConstraintInstanceAccessor& 	Accessor,

bool& 	bEnableProjection,

float32& 	ProjectionLinearAlpha,

float32& 	ProjectionAngularAlpha

)

### constraint

```
Gets projection parameters of the constraint
```
**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

bEnableProjection
bool&

true to enable projection

ProjectionLinearAlpha
float32&

how much linear projection to apply in [0,1] range

ProjectionAngularAlpha
float32&

how much angular projection to apply in [0,1] range

GetAngularBreakable
static void ConstraintInstance::GetAngularBreakable(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bAngularBreakable,
float32& 	AngularBreakThreshold

)

Gets Constraint Angular Breakable properties

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

bAngularBreakable
bool&

Whether it is possible to break the joint with angular force

AngularBreakThreshold
float32&

Torque needed to break the joint

GetAngularDriveMode
static void ConstraintInstance::GetAngularDriveMode(
FConstraintInstanceAccessor& 	Accessor,
EAngularDriveMode& 	OutDriveMode
	)

Gets the angular drive mode ( SLERP or Twist And Swing)

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

OutDriveMode
EAngularDriveMode&

The angular drive mode to use. SLERP uses shortest spherical path, but will not work if any angular constraints are locked. Twist and Swing decomposes the path into the different angular degrees of freedom but may experience gimbal lock

GetAngularDriveParams
static void ConstraintInstance::GetAngularDriveParams(

FConstraintInstanceAccessor& 	Accessor,
float32& 	OutPositionStrength,
float32& 	OutVelocityStrength,
float32& 	OutForceLimit

)

Gets the drive params for the angular drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

OutPositionStrength
float32&

Positional strength for the drive (stiffness)

OutVelocityStrength
float32&

Velocity strength of the drive (damping)

OutForceLimit
float32&

Max force applied by the drive

GetAngularLimits
static void ConstraintInstance::GetAngularLimits(

FConstraintInstanceAccessor& 	Accessor,
EAngularConstraintMotion& 	Swing1MotionType,
float32& 	Swing1LimitAngle,
EAngularConstraintMotion& 	Swing2MotionType,
float32& 	Swing2LimitAngle,
EAngularConstraintMotion& 	TwistMotionType,
float32& 	TwistLimitAngle

)

Gets Constraint Angular Motion Ranges

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

Swing1MotionType
EAngularConstraintMotion&

Type of swing motion ( first axis )

Swing1LimitAngle
float32&

Size of limit in degrees in [0, 180] range

Swing2MotionType
EAngularConstraintMotion&

Type of swing motion ( second axis )

Swing2LimitAngle
float32&

Size of limit in degrees in [0, 180] range

TwistMotionType
EAngularConstraintMotion&

Type of twist motion

TwistLimitAngle
float32&

Size of limit in degrees in [0, 180] range

GetAngularOrientationTarget
static void ConstraintInstance::GetAngularOrientationTarget(

FConstraintInstanceAccessor& 	Accessor,
FRotator& 	OutPosTarget

)

Gets the target orientation for the angular drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

OutPosTarget
FRotator&

Target orientation

GetAngularPlasticity
static void ConstraintInstance::GetAngularPlasticity(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bAngularPlasticity,
float32& 	AngularPlasticityThreshold

)

Sets Constraint Angular Plasticity properties

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

bAngularPlasticity
bool&

Whether it is possible to reset the target angle from the angular displacement

AngularPlasticityThreshold
float32&

Degrees needed to reset the rest state of the joint

GetAngularSoftSwingLimitParams
static void ConstraintInstance::GetAngularSoftSwingLimitParams(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bSoftSwingLimit,
float32& 	SwingLimitStiffness,
float32& 	SwingLimitDamping,
float32& 	SwingLimitRestitution,
float32& 	SwingLimitContactDistance

)

Gets Constraint Angular Soft Swing Limit parameters

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query *

bSoftSwingLimit
bool&

True is the swing limit is soft

SwingLimitStiffness
float32&

Stiffness of the soft swing limit. Only used when Soft limit is on ( positive value )

SwingLimitDamping
float32&

Damping of the soft swing limit. Only used when Soft limit is on ( positive value )

SwingLimitRestitution
float32&

Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead.

SwingLimitContactDistance
float32&

Determines how close to the limit we have to get before turning the joint on. Larger value will be more expensive, but will do a better job not violating constraints. A smaller value will be more efficient, but easier to violate.

GetAngularSoftTwistLimitParams
static void ConstraintInstance::GetAngularSoftTwistLimitParams(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bSoftTwistLimit,
float32& 	TwistLimitStiffness,
float32& 	TwistLimitDamping,
float32& 	TwistLimitRestitution,
float32& 	TwistLimitContactDistance

)

Gets Constraint Angular Soft Twist Limit parameters

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query *

bSoftTwistLimit
bool&

True is the Twist limit is soft

TwistLimitStiffness
float32&

Stiffness of the soft Twist limit. Only used when Soft limit is on ( positive value )

TwistLimitDamping
float32&

Damping of the soft Twist limit. Only used when Soft limit is on ( positive value )

TwistLimitRestitution
float32&

Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead.

TwistLimitContactDistance
float32&

Determines how close to the limit we have to get before turning the joint on. Larger value will be more expensive, but will do a better job not violating constraints. A smaller value will be more efficient, but easier to violate.

GetAngularVelocityDriveSLERP
static void ConstraintInstance::GetAngularVelocityDriveSLERP(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bOutEnableSLERP

)

Gets whether the angular velocity slerp drive is enabled or not. Only relevant if the AngularDriveMode is set to SLERP

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

bOutEnableSLERP
bool&

Indicates whether the SLERP drive is enabled. Only relevant if the AngularDriveMode is set to SLERP

GetAngularVelocityDriveTwistAndSwing
static void ConstraintInstance::GetAngularVelocityDriveTwistAndSwing(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bOutEnableTwistDrive,
bool& 	bOutEnableSwingDrive

)

Gets whether angular velocity twist and swing drive is enabled or not. Only relevant if the AngularDriveMode is set to Twist and Swing

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

bOutEnableTwistDrive
bool&

Indicates whether the drive for the twist axis should be enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

bOutEnableSwingDrive
bool&

Indicates whether the drive for the swing axis should be enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

GetAngularVelocityTarget
static void ConstraintInstance::GetAngularVelocityTarget(

FConstraintInstanceAccessor& 	Accessor,
FVector& 	OutVelTarget

)

Gets the target velocity for the angular drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

OutVelTarget
FVector&

Target velocity

GetAttachedBodyNames
static void ConstraintInstance::GetAttachedBodyNames(
FConstraintInstanceAccessor& 	Accessor,
FName& 	ParentBody,
FName& 	ChildBody
	)

Gets Attached body names

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

ParentBody
FName&

Parent body name of the constraint

ChildBody
FName&

Child body name of the constraint

GetContactTransferScale
static void ConstraintInstance::GetContactTransferScale(

FConstraintInstanceAccessor& 	Accessor,
float32& 	ContactTransferScale

)

Gets Constraint Contact Transfer Scale properties

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

ContactTransferScale
float32&

Scale for transfer of child energy to parent.

GetDisableCollsion
static bool ConstraintInstance::GetDisableCollsion(
FConstraintInstanceAccessor& 	Accessor
	)

Gets whether bodies attched to the constraint can collide or not

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

GetLinearBreakable
static void ConstraintInstance::GetLinearBreakable(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bLinearBreakable,
float32& 	LinearBreakThreshold

)

Gets Constraint Linear Breakable properties

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

bLinearBreakable
bool&

Whether it is possible to break the joint with linear force

LinearBreakThreshold
float32&

Force needed to break the joint

GetLinearDriveParams
static void ConstraintInstance::GetLinearDriveParams(

FConstraintInstanceAccessor& 	Accessor,
float32& 	OutPositionStrength,
float32& 	OutVelocityStrength,
float32& 	OutForceLimit

)

Gets the drive params for the linear drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

OutPositionStrength
float32&

Positional strength for the drive (stiffness)

OutVelocityStrength
float32&

Velocity strength of the drive (damping)

OutForceLimit
float32&

Max force applied by the drive

GetLinearLimits
static void ConstraintInstance::GetLinearLimits(
FConstraintInstanceAccessor& 	Accessor,
ELinearConstraintMotion& 	XMotion,
ELinearConstraintMotion& 	YMotion,
ELinearConstraintMotion& 	ZMotion,
float32& 	Limit
	)

Gets Constraint Linear Motion Ranges

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

XMotion
ELinearConstraintMotion&

Type of motion along the X axis

YMotion
ELinearConstraintMotion&

Type of motion along the Y axis

ZMotion
ELinearConstraintMotion&

Type of motion along the Z axis

Limit
float32&

linear limit applied to all axis

GetLinearPlasticity
static void ConstraintInstance::GetLinearPlasticity(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bLinearPlasticity,
float32& 	LinearPlasticityThreshold,
EConstraintPlasticityType& 	PlasticityType

)

Gets Constraint Linear Plasticity properties

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

GetLinearPositionDrive
static void ConstraintInstance::GetLinearPositionDrive(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bOutEnableDriveX,
bool& 	bOutEnableDriveY,
bool& 	bOutEnableDriveZ

)

Gets whether linear position drive is enabled or not

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

bOutEnableDriveX
bool&

Indicates whether the drive for the X-Axis is enabled

bOutEnableDriveY
bool&

Indicates whether the drive for the Y-Axis is enabled

bOutEnableDriveZ
bool&

Indicates whether the drive for the Z-Axis is enabled

GetLinearPositionTarget
static void ConstraintInstance::GetLinearPositionTarget(

FConstraintInstanceAccessor& 	Accessor,
FVector& 	OutPosTarget

)

Gets the target position for the linear drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

OutPosTarget
FVector&

Target position

GetLinearSoftLimitParams
static void ConstraintInstance::GetLinearSoftLimitParams(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bSoftLinearLimit,
float32& 	LinearLimitStiffness,
float32& 	LinearLimitDamping,
float32& 	LinearLimitRestitution,
float32& 	LinearLimitContactDistance

)

Gets Constraint Linear Soft Limit parameters

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query *

bSoftLinearLimit
bool&

True is the Linear limit is soft

LinearLimitStiffness
float32&

Stiffness of the soft Linear limit. Only used when Soft limit is on ( positive value )

LinearLimitDamping
float32&

Damping of the soft Linear limit. Only used when Soft limit is on ( positive value )

LinearLimitRestitution
float32&

Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead.

LinearLimitContactDistance
float32&

Determines how close to the limit we have to get before turning the joint on. Larger value will be more expensive, but will do a better job not violating constraints. A smaller value will be more efficient, but easier to violate.

GetLinearVelocityDrive
static void ConstraintInstance::GetLinearVelocityDrive(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bOutEnableDriveX,
bool& 	bOutEnableDriveY,
bool& 	bOutEnableDriveZ

)

Gets whether linear velocity drive is enabled or not

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

bOutEnableDriveX
bool&

Indicates whether the drive for the X-Axis is enabled

bOutEnableDriveY
bool&

Indicates whether the drive for the Y-Axis is enabled

bOutEnableDriveZ
bool&

Indicates whether the drive for the Z-Axis is enabled

GetLinearVelocityTarget
static void ConstraintInstance::GetLinearVelocityTarget(

FConstraintInstanceAccessor& 	Accessor,
FVector& 	OutVelTarget

)

Gets the target velocity for the linear drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

OutVelTarget
FVector&

Target velocity

GetOrientationDriveSLERP
static void ConstraintInstance::GetOrientationDriveSLERP(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bOutEnableSLERP

)

Gets whether the angular orientation slerp drive is enabled or not. Only relevant if the AngularDriveMode is set to SLERP

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

bOutEnableSLERP
bool&

Indicates whether the SLERP drive should be enabled. Only relevant if the AngularDriveMode is set to SLERP

GetOrientationDriveTwistAndSwing
static void ConstraintInstance::GetOrientationDriveTwistAndSwing(

FConstraintInstanceAccessor& 	Accessor,
bool& 	bOutEnableTwistDrive,
bool& 	bOutEnableSwingDrive

)

Gets whether angular orientation drive are enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

bOutEnableTwistDrive
bool&

Indicates whether the drive for the twist axis is enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

bOutEnableSwingDrive
bool&

Indicates whether the drive for the swing axis is enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

GetParentDominates
static bool ConstraintInstance::GetParentDominates(
FConstraintInstanceAccessor& 	Accessor
	)

Gets whether the parent body is not affected by it's child motion

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to query

CopyParams
static void ConstraintInstance::CopyParams(

FConstraintInstanceAccessor& 	Accessor,
FConstraintInstanceAccessor& 	SourceAccessor,
bool 	bKeepPosition	 = 	true,
bool 	bKeepRotation	 = 	true

)

Copies all properties from one constraint to another

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to write to

SourceAccessor
FConstraintInstanceAccessor&

Constraint accessor to read from

bKeepPosition
bool

Whether to keep original constraint positions

bKeepRotation
bool

Whether to keep original constraint rotations

SetAngularBreakable
static void ConstraintInstance::SetAngularBreakable(

FConstraintInstanceAccessor& 	Accessor,
bool 	bAngularBreakable,
float32 	AngularBreakThreshold

)

Sets Constraint Angular Breakable properties

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bAngularBreakable
bool

Whether it is possible to break the joint with angular force

AngularBreakThreshold
float32

Torque needed to break the joint

SetAngularDriveMode
static void ConstraintInstance::SetAngularDriveMode(
FConstraintInstanceAccessor& 	Accessor,
EAngularDriveMode 	DriveMode
	)

Switches the angular drive mode between SLERP and Twist And Swing

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

DriveMode
EAngularDriveMode

The angular drive mode to use. SLERP uses shortest spherical path, but will not work if any angular constraints are locked. Twist and Swing decomposes the path into the different angular degrees of freedom but may experience gimbal lock

SetAngularDriveParams
static void ConstraintInstance::SetAngularDriveParams(

FConstraintInstanceAccessor& 	Accessor,
float32 	PositionStrength,
float32 	VelocityStrength,
float32 	InForceLimit

)

Sets the drive params for the angular drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

PositionStrength
float32

Positional strength for the drive (stiffness)

VelocityStrength
float32

Velocity strength of the drive (damping)

InForceLimit
float32

Max force applied by the drive

SetAngularLimits
static void ConstraintInstance::SetAngularLimits(

FConstraintInstanceAccessor& 	Accessor,
EAngularConstraintMotion 	Swing1MotionType,
float32 	Swing1LimitAngle,
EAngularConstraintMotion 	Swing2MotionType,
float32 	Swing2LimitAngle,
EAngularConstraintMotion 	TwistMotionType,
float32 	TwistLimitAngle

)

Sets COnstraint Angular Motion Ranges

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

Swing1MotionType
EAngularConstraintMotion

Type of swing motion ( first axis )

Swing1LimitAngle
float32

Size of limit in degrees in [0, 180] range

Swing2MotionType
EAngularConstraintMotion

Type of swing motion ( second axis )

Swing2LimitAngle
float32

Size of limit in degrees in [0, 180] range

TwistMotionType
EAngularConstraintMotion

Type of twist motion

TwistLimitAngle
float32

Size of limit in degrees in [0, 180] range

SetAngularOrientationTarget
static void ConstraintInstance::SetAngularOrientationTarget(

FConstraintInstanceAccessor& 	Accessor,
FRotator 	InPosTarget

)

Sets the target orientation for the angular drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

InPosTarget
FRotator

Target orientation

SetAngularPlasticity
static void ConstraintInstance::SetAngularPlasticity(

FConstraintInstanceAccessor& 	Accessor,
bool 	bAngularPlasticity,
float32 	AngularPlasticityThreshold

)

Sets Constraint Angular Plasticity properties

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bAngularPlasticity
bool

Whether it is possible to reset the target angle from the angular displacement

AngularPlasticityThreshold
float32

Degrees needed to reset the rest state of the joint

SetAngularSoftSwingLimitParams
static void ConstraintInstance::SetAngularSoftSwingLimitParams(

FConstraintInstanceAccessor& 	Accessor,
bool 	bSoftSwingLimit,
float32 	SwingLimitStiffness,
float32 	SwingLimitDamping,
float32 	SwingLimitRestitution,
float32 	SwingLimitContactDistance

)

Sets Constraint Angular Soft Swing Limit parameters

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change *

bSoftSwingLimit
bool

True is the swing limit is soft

SwingLimitStiffness
float32

Stiffness of the soft swing limit. Only used when Soft limit is on ( positive value )

SwingLimitDamping
float32

Damping of the soft swing limit. Only used when Soft limit is on ( positive value )

SwingLimitRestitution
float32

Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead.

SwingLimitContactDistance
float32

Determines how close to the limit we have to get before turning the joint on. Larger value will be more expensive, but will do a better job not violating constraints. A smaller value will be more efficient, but easier to violate.

SetAngularSoftTwistLimitParams
static void ConstraintInstance::SetAngularSoftTwistLimitParams(

FConstraintInstanceAccessor& 	Accessor,
bool 	bSoftTwistLimit,
float32 	TwistLimitStiffness,
float32 	TwistLimitDamping,
float32 	TwistLimitRestitution,
float32 	TwistLimitContactDistance

)

Sets Constraint Angular Soft Twist Limit parameters

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change *

bSoftTwistLimit
bool

True is the twist limit is soft

TwistLimitStiffness
float32

Stiffness of the soft Twist limit. Only used when Soft limit is on ( positive value )

TwistLimitDamping
float32

Damping of the soft Twist limit. Only used when Soft limit is on ( positive value )

TwistLimitRestitution
float32

Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead.

TwistLimitContactDistance
float32

Determines how close to the limit we have to get before turning the joint on. Larger value will be more expensive, but will do a better job not violating constraints. A smaller value will be more efficient, but easier to violate.

SetAngularVelocityDriveSLERP
static void ConstraintInstance::SetAngularVelocityDriveSLERP(

FConstraintInstanceAccessor& 	Accessor,
bool 	bEnableSLERP

)

Enables/Disables the angular velocity slerp drive. Only relevant if the AngularDriveMode is set to SLERP

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bEnableSLERP
bool

Indicates whether the SLERP drive should be enabled. Only relevant if the AngularDriveMode is set to SLERP

SetAngularVelocityDriveTwistAndSwing
static void ConstraintInstance::SetAngularVelocityDriveTwistAndSwing(

FConstraintInstanceAccessor& 	Accessor,
bool 	bEnableTwistDrive,
bool 	bEnableSwingDrive

)

Enables/Disables angular velocity twist and swing drive. Only relevant if the AngularDriveMode is set to Twist and Swing

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bEnableTwistDrive
bool

Indicates whether the drive for the twist axis should be enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

bEnableSwingDrive
bool

Indicates whether the drive for the swing axis should be enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

SetAngularVelocityTarget
static void ConstraintInstance::SetAngularVelocityTarget(

FConstraintInstanceAccessor& 	Accessor,
FVector 	InVelTarget

)

Sets the target velocity for the angular drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

InVelTarget
FVector

Target velocity

SetContactTransferScale
static void ConstraintInstance::SetContactTransferScale(

FConstraintInstanceAccessor& 	Accessor,
float32 	ContactTransferScale

)

Set Contact Transfer Scale

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

ContactTransferScale
float32

Set Contact Transfer Scale onto joints parent

SetDisableCollision
static void ConstraintInstance::SetDisableCollision(

FConstraintInstanceAccessor& 	Accessor,
bool 	bDisableCollision

)

Sets whether bodies attched to the constraint can collide or not

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bDisableCollision
bool

true to disable collision between constrained bodies

SetLinearBreakable
static void ConstraintInstance::SetLinearBreakable(

FConstraintInstanceAccessor& 	Accessor,
bool 	bLinearBreakable,
float32 	LinearBreakThreshold

)

Sets the Linear Breakable properties

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bLinearBreakable
bool

Whether it is possible to break the joint with linear force

LinearBreakThreshold
float32

Force needed to break the joint

SetLinearDriveParams
static void ConstraintInstance::SetLinearDriveParams(

FConstraintInstanceAccessor& 	Accessor,
float32 	PositionStrength,
float32 	VelocityStrength,
float32 	InForceLimit

)

Sets the drive params for the linear drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

PositionStrength
float32

Positional strength for the drive (stiffness)

VelocityStrength
float32

Velocity strength of the drive (damping)

InForceLimit
float32

Max force applied by the drive

SetLinearLimits
static void ConstraintInstance::SetLinearLimits(
FConstraintInstanceAccessor& 	Accessor,
ELinearConstraintMotion 	XMotion,
ELinearConstraintMotion 	YMotion,
ELinearConstraintMotion 	ZMotion,
float32 	Limit
	)

Sets Constraint Linear Motion Ranges

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

XMotion
ELinearConstraintMotion

Type of motion along the X axis

YMotion
ELinearConstraintMotion

Type of motion along the Y axis

ZMotion
ELinearConstraintMotion

Type of motion along the Z axis

Limit
float32

linear limit to apply to all axis

SetLinearPlasticity
static void ConstraintInstance::SetLinearPlasticity(

FConstraintInstanceAccessor& 	Accessor,
bool 	bLinearPlasticity,
float32 	LinearPlasticityThreshold,
EConstraintPlasticityType 	PlasticityType

)

Sets Constraint Linear Plasticity properties

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bLinearPlasticity
bool

Whether it is possible to reset the target position from the linear displacement

LinearPlasticityThreshold
float32

Delta from target needed to reset the target joint

SetLinearPositionDrive
static void ConstraintInstance::SetLinearPositionDrive(

FConstraintInstanceAccessor& 	Accessor,
bool 	bEnableDriveX,
bool 	bEnableDriveY,
bool 	bEnableDriveZ

)

Enables/Disables linear position drive

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

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
static void ConstraintInstance::SetLinearPositionTarget(

FConstraintInstanceAccessor& 	Accessor,
FVector 	InPosTarget

)

Sets the target position for the linear drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

InPosTarget
FVector

Target position

SetLinearSoftLimitParams
static void ConstraintInstance::SetLinearSoftLimitParams(

FConstraintInstanceAccessor& 	Accessor,
bool 	bSoftLinearLimit,
float32 	LinearLimitStiffness,
float32 	LinearLimitDamping,
float32 	LinearLimitRestitution,
float32 	LinearLimitContactDistance

)

Sets Constraint Linear Soft Limit parameters

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change *

bSoftLinearLimit
bool

True is the linear limit is soft

LinearLimitStiffness
float32

Stiffness of the soft linear limit. Only used when Soft limit is on ( positive value )

LinearLimitDamping
float32

Damping of the soft linear limit. Only used when Soft limit is on ( positive value )

LinearLimitRestitution
float32

Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead.

LinearLimitContactDistance
float32

Determines how close to the limit we have to get before turning the joint on. Larger value will be more expensive, but will do a better job not violating constraints. A smaller value will be more efficient, but easier to violate.

SetLinearVelocityDrive
static void ConstraintInstance::SetLinearVelocityDrive(

FConstraintInstanceAccessor& 	Accessor,
bool 	bEnableDriveX,
bool 	bEnableDriveY,
bool 	bEnableDriveZ

)

Enables/Disables linear velocity drive

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

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
static void ConstraintInstance::SetLinearVelocityTarget(

FConstraintInstanceAccessor& 	Accessor,
FVector 	InVelTarget

)

Sets the target velocity for the linear drive.

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

InVelTarget
FVector

Target velocity

SetOrientationDriveSLERP
static void ConstraintInstance::SetOrientationDriveSLERP(

FConstraintInstanceAccessor& 	Accessor,
bool 	bEnableSLERP

)

Enables/Disables the angular orientation slerp drive. Only relevant if the AngularDriveMode is set to SLERP

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bEnableSLERP
bool

Indicates whether the SLERP drive should be enabled. Only relevant if the AngularDriveMode is set to SLERP

SetOrientationDriveTwistAndSwing
static void ConstraintInstance::SetOrientationDriveTwistAndSwing(

FConstraintInstanceAccessor& 	Accessor,
bool 	bEnableTwistDrive,
bool 	bEnableSwingDrive

)

Enables/Disables angular orientation drive. Only relevant if the AngularDriveMode is set to Twist and Swing

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bEnableTwistDrive
bool

Indicates whether the drive for the twist axis should be enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

bEnableSwingDrive
bool

Indicates whether the drive for the swing axis should be enabled. Only relevant if the AngularDriveMode is set to Twist and Swing

SetParentDominates
static void ConstraintInstance::SetParentDominates(

FConstraintInstanceAccessor& 	Accessor,
bool 	bParentDominates

)

Sets whether the parent body is not affected by it's child motion

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bParentDominates
bool

true to avoid the parent being affected by its child motion

SetProjectionParams
static void ConstraintInstance::SetProjectionParams(

FConstraintInstanceAccessor& 	Accessor,
bool 	bEnableProjection,
float32 	ProjectionLinearAlpha,
float32 	ProjectionAngularAlpha

)

Sets projection parameters of the constraint

**Parameters**

Accessor
FConstraintInstanceAccessor&

Constraint accessor to change

bEnableProjection
bool

true to enable projection

ProjectionLinearAlpha
float32

how much linear projection to apply in [0,1] range

ProjectionAngularAlpha
float32

how much angular projection to apply in [0,1] range
