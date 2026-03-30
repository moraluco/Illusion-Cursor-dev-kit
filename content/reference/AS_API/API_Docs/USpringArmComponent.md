# USpringArmComponent

**Visibility:** public

## Inheritance

USceneComponent → USpringArmComponent

## Description

This component tries to maintain its children at a fixed distance from the parent, but will retract the children if there is a collision, and spring back when there is no collision.

Example: Use as a 'camera boom' to keep the follow camera for a player from colliding into the world.

## CAMERA

### SocketOffset

```
FVector SocketOffset
```

offset at end of spring arm; use this instead of the relative offset of the attached component to ensure the line trace works as desired

### TargetOffset

```
FVector TargetOffset
```

Offset at start of spring, applied in world space. Use this if you want a world-space offset from the parent component instead of the usual relative-space offset.

### TargetArmLength

```
float32 TargetArmLength
```

Natural length of the spring arm when there are no collisions

---

## CAMERACOLLISION

### ProbeChannel

```
ECollisionChannel ProbeChannel
```

Collision channel of the query probe (defaults to ECC_Camera)

### ProbeSize

```
float32 ProbeSize
```

How big should the query probe sphere be (in unreal units)

### UnfixedCameraPosition

```
const FVector UnfixedCameraPosition
```

Get the position where the camera should be without applying the Collision Test displacement

### bDoCollisionTest

```
bool bDoCollisionTest
```

If true, do a collision test using ProbeChannel and ProbeSize to prevent camera clipping into level.

---

## CAMERASETTINGS

### bInheritPitch

```
bool bInheritPitch
```

Should we inherit pitch from parent component. Does nothing if using Absolute Rotation.

### bInheritYaw

```
bool bInheritYaw
```

Should we inherit yaw from parent component. Does nothing if using Absolute Rotation.

### bInheritRoll

```
bool bInheritRoll
```

Should we inherit roll from parent component. Does nothing if using Absolute Rotation.

### bUsePawnControlRotation

```
bool bUsePawnControlRotation
```

If this component is placed on a pawn, should it use the view/control rotation of the pawn where possible?  When disabled, the component will revert to using the stored RelativeRotation of the component.  Note that this component itself does not rotate, but instead maintains its relative rotation to its parent as normal, and just repositions and rotates its children as desired by the inherited rotation settings. Use GetTargetRotation() if you want the rotation target based on all the settings (UsePawnControlRotation, InheritPitch, etc).

### @see GetTargetRotation

```
@see GetTargetRotation(), APawn::GetViewRotation()
```

---

## LAG

### CameraLagMaxTimeStep

```
float32 CameraLagMaxTimeStep
```

Max time step used when sub-stepping camera lag.

### CameraLagSpeed

```
float32 CameraLagSpeed
```

If bEnableCameraLag is true, controls how quickly camera reaches target position. Low values are slower (more lag), high values are faster (less lag), while zero is instant (no lag).

### CameraRotationLagSpeed

```
float32 CameraRotationLagSpeed
```

If bEnableCameraRotationLag is true, controls how quickly camera reaches target position. Low values are slower (more lag), high values are faster (less lag), while zero is instant (no lag).

### CameraLagMaxDistance

```
float32 CameraLagMaxDistance
```

Max distance the camera target may lag behind the current location. If set to zero, no max distance is enforced.

### bClampToMaxPhysicsDeltaTime

```
bool bClampToMaxPhysicsDeltaTime
```

If true AND the view target is simulating using physics then use the same max timestep cap as the physics system. Prevents camera jitter when delta time is clamped within Chaos Physics.

### bEnableCameraLag

```
bool bEnableCameraLag
```

If true, camera lags behind target position to smooth its movement.  @see CameraLagSpeed

### bEnableCameraRotationLag

```
bool bEnableCameraRotationLag
```

If true, camera lags behind target rotation to smooth its movement.  @see CameraRotationLagSpeed

### bUseCameraLagSubstepping

```
bool bUseCameraLagSubstepping
```

If bUseCameraLagSubstepping is true, sub-step camera damping so that it handles fluctuating frame rates well (though this comes at a cost).  @see CameraLagMaxTimeStep

### bDrawDebugLagMarkers

```
bool bDrawDebugLagMarkers
```

If true and camera location lag is enabled, draws markers at the camera target (in green) and the lagged position (in yellow).  A line is drawn between the two locations, in green normally but in red if the distance to the lag target has been clamped (by CameraLagMaxDistance).

---

## SPRINGARM

### TargetRotation

```
const FRotator TargetRotation
```

Get the target rotation we inherit, used as the base target for the boom rotation.  This is derived from attachment to our parent and considering the UsePawnControlRotation and absolute rotation flags.

---

## CAMERACOLLISION

### GetUnfixedCameraPosition

```
FVector GetUnfixedCameraPosition()const
```

Get the position where the camera should be without applying the Collision Test displacement

### IsCollisionFixApplied

```
bool IsCollisionFixApplied()const
```

Is the Collision Test displacement being applied?

---

## SPRINGARM

### GetTargetRotation

```
FRotator GetTargetRotation()const
```

Get the target rotation we inherit, used as the base target for the boom rotation.  This is derived from attachment to our parent and considering the UsePawnControlRotation and absolute rotation flags.

---

## FUNCTIONS

### SetbDoCollisionTest

```
void SetbDoCollisionTest(bool Value)
```

GetbUsePawnControlRotation

### bool GetbUsePawnControlRotation

```
bool GetbUsePawnControlRotation()const GetbDoCollisionTest
```

bool GetbDoCollisionTest() const

### SetbUsePawnControlRotation

```
void SetbUsePawnControlRotation(bool Value)
```

GetbInheritPitch

### bool GetbInheritPitch

```
bool GetbInheritPitch()const SetbInheritPitch
```

void SetbInheritPitch(

### bool 	Value

```
bool 	Value 	)
```

GetbInheritYaw

### bool GetbInheritYaw

```
bool GetbInheritYaw()const SetbInheritYaw
```

void SetbInheritYaw(

### bool 	Value

```
bool 	Value 	)
```

GetbInheritRoll

### bool GetbInheritRoll

```
bool GetbInheritRoll()const SetbInheritRoll
```

void SetbInheritRoll(

### bool 	Value

```
bool 	Value 	)
```

GetbEnableCameraLag

### bool GetbEnableCameraLag

```
bool GetbEnableCameraLag()const SetbEnableCameraLag
```

void SetbEnableCameraLag(

### bool 	Value

```
bool 	Value 	)
```

GetbEnableCameraRotationLag

### bool GetbEnableCameraRotationLag

```
bool GetbEnableCameraRotationLag()const SetbEnableCameraRotationLag
```

void SetbEnableCameraRotationLag(

### bool 	Value

```
bool 	Value 	)
```

GetbUseCameraLagSubstepping

### bool GetbUseCameraLagSubstepping

```
bool GetbUseCameraLagSubstepping()const SetbUseCameraLagSubstepping
```

void SetbUseCameraLagSubstepping(

### bool 	Value

```
bool 	Value 	)
```

GetbDrawDebugLagMarkers

### bool GetbDrawDebugLagMarkers

```
bool GetbDrawDebugLagMarkers()const SetbDrawDebugLagMarkers
```

void SetbDrawDebugLagMarkers(

### bool 	Value

```
bool 	Value 	)
```

GetbClampToMaxPhysicsDeltaTime

### bool GetbClampToMaxPhysicsDeltaTime

```
bool GetbClampToMaxPhysicsDeltaTime()const SetbClampToMaxPhysicsDeltaTime
```

void SetbClampToMaxPhysicsDeltaTime(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static USpringArmComponent USpringArmComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USpringArmComponent USpringArmComponent::GetOrCreate

```
static USpringArmComponent USpringArmComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USpringArmComponent USpringArmComponent::Create

```
static USpringArmComponent USpringArmComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USpringArmComponent::StaticClass

```
static UClass USpringArmComponent::StaticClass()
```
