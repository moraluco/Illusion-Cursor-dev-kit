# ACharacter

**Visibility:** public

## Inheritance

APawn → ACharacter → AArchVisCharacter → AEQSTestingPawn → APaperCharacter

## Description

Characters are Pawns that have a mesh, collision, and built-in movement logic.  They are responsible for all physical interaction between the player or AI and the world, and also implement basic networking and input models.  They are designed for a vertically-oriented player representation that can walk, jump, fly, and swim through the world using CharacterMovementComponent.

### See also

- APawn, UCharacterMovementComponent @see https://​docs​.unrealengine​.com​/latest​/INT​/Gameplay​/Framework​/Pawn​/Character​/

## ANIMATION

### CurrentMontage

```
const UAnimMontage CurrentMontage
```

Return current playing Montage

---

## CAMERA

### CrouchedEyeHeight

```
float32 CrouchedEyeHeight
```

Default crouched eye height

---

## CHARACTER

### CapsuleComponent

```
UCapsuleComponent CapsuleComponent
```

The CapsuleComponent being used for movement collision (by CharacterMovement). Always treated as being vertically aligned in simple collision check functions.

### JumpKeyHoldTime

```
float32 JumpKeyHoldTime
```

Jump key Held Time.  This is the time that the player has held the jump key, in seconds.

### JumpForceTimeRemaining

```
float32 JumpForceTimeRemaining
```

Amount of jump force time remaining, if JumpMaxHoldTime > 0.

### ProxyJumpForceStartedTime

```
float32 ProxyJumpForceStartedTime
```

Track last time a jump force started for a proxy.

### CharacterMovement

```
UCharacterMovementComponent CharacterMovement
```

Movement component used for movement logic in various movement modes (walking, falling, etc), containing relevant settings and functions to control movement.

### JumpMaxHoldTime

```
float32 JumpMaxHoldTime
```

The max time the jump key can be held.  Note that if StopJumping() is not called before the max jump hold time is reached, then the character will carry on receiving vertical velocity. Therefore it is usually best to call StopJumping() when jump input has ceased (such as a button up event).

### JumpMaxCount

```
int JumpMaxCount
```

The max number of jumps the character can perform.  Note that if JumpMaxHoldTime is non zero and StopJumping is not called, the player may be able to perform and unlimited number of jumps. Therefore it is usually best to call StopJumping() when jump input has ceased (such as a button up event).

### JumpCurrentCount

```
int JumpCurrentCount
```

Tracks the current number of jumps performed.  This is incremented in CheckJumpInput, used in CanJump_Implementation, and reset in OnMovementModeChanged.  When providing overrides for these methods, it's recommended to either manually increment / reset this value, or call the Super:: method.

### Mesh

```
USkeletalMeshComponent Mesh
```

The main skeletal mesh associated with this Character (optional sub-object).

### OnReachedJumpApex

```
FCharacterReachedApexSignature OnReachedJumpApex
```

Broadcast when Character's jump reaches its apex. Needs CharacterMovement->bNotifyApex = true

### MovementModeChangedDelegate

```
FMovementModeChangedSignature MovementModeChangedDelegate
```

Multicast delegate for MovementMode changing.

### OnCharacterMovementUpdated

```
FCharacterMovementUpdatedSignature OnCharacterMovementUpdated
```

Event triggered at the end of a CharacterMovementComponent movement update.  This is the preferred event to use rather than the Tick event when performing custom updates to CharacterMovement properties based on the current state.  This is mainly due to the nature of network updates, where client corrections in position from the server can cause multiple iterations of a movement update, which allows this event to update as well, while a Tick event would not.

@param  DeltaSeconds  Delta time in seconds for this update @param  InitialLocation  Location at the start of the update. May be different than the current location if movement occurred.  @param  InitialVelocity  Velocity at the start of the update. May be different than the current velocity.

### JumpCurrentCountPreJump

```
int JumpCurrentCountPreJump
```

Represents the current number of jumps performed before CheckJumpInput modifies JumpCurrentCount.  This is set in CheckJumpInput and is used in SetMoveFor and PrepMoveFor instead of JumpCurrentCount since CheckJumpInput can modify JumpCurrentCount.  When providing overrides for these methods, it's recommended to either manually set this value, or call the Super:: method.

bPressedJump

### bPressedJump

```
const bool bPressedJump
```

When true, player wants to jump

bIsCrouched

### bIsCrouched

```
const bool bIsCrouched
```

Set by character movement to specify that this Character is currently crouched.

bWasJumping

### bWasJumping

```
const bool bWasJumping
```

Tracks whether or not the character was already jumping last frame.

---

## VARIABLES

AnimRootMotionTranslationScale

### AnimRootMotionTranslationScale

```
const float32 AnimRootMotionTranslationScale
```

Scale to apply to root motion translation on this Character

### BaseTranslationOffset

```
const FVector BaseTranslationOffset
```

Saved translation offset of mesh.

### BaseRotationOffset

```
const FRotator BaseRotationOffset
```

Saved rotation offset of mesh.

---

## ANIMATION

### PlayAnimMontage

```
float32 PlayAnimMontage(UAnimMontage AnimMontage, float32 InPlayRate = 1.000000, FName StartSectionName = NAME_None)
```

Play Animation Montage on the character mesh. Returns the length of the animation montage in seconds, or 0.f if failed to play.

### GetAnimRootMotionTranslationScale

```
float32 GetAnimRootMotionTranslationScale()const
```

Returns current value of AnimRootMotionScale

### HasAnyRootMotion

```
bool HasAnyRootMotion()const
```

True if we are playing root motion from any source right now (anim root motion, root motion source)

### StopAnimMontage

```
void StopAnimMontage(UAnimMontage AnimMontage = nullptr)
```

Stop Animation Montage. If nullptr, it will stop what's currently active. The Blend Out Time is taken from the montage asset that is being stopped.

### IsPlayingNetworkedRootMotionMontage

```
bool IsPlayingNetworkedRootMotionMontage()const
```

True if we are playing Root Motion right now, through a Montage with RootMotionMode == ERootMotionMode::RootMotionFromMontagesOnly.  This means code path for networked root motion is enabled.

### IsPlayingRootMotion

```
bool IsPlayingRootMotion()const
```

True if we are playing Anim root motion right now

### GetCurrentMontage

```
UAnimMontage GetCurrentMontage()const
```

Return current playing Montage

---

## CHARACTER

### CanCrouch

```
bool CanCrouch()const
```

**Returns**

true if this character is currently able to crouch (and is not currently crouched)

CanJumpInternal
bool CanJumpInternal() const

Customizable event to check if the character can jump in the current state.  Default implementation returns true if the character is on the ground and not crouching, has a valid CharacterMovementComponent and CanEverJump() returns true.  Default implementation also allows for 'hold to jump higher' functionality: As well as returning true when on the ground, it also returns true when GetMaxJumpTime is more than zero and IsJumping returns true.

**Returns**

Whether the character can jump in the current state.

CanJump
bool CanJump() const

Check if the character can jump in the current state.

The default implementation may be overridden or extended by implementing the custom CanJump event in Blueprints.

**Returns**

Whether the character can jump in the current state.

Jump
void Jump()

Make the character jump on the next update.  If you want your character to jump according to the time that the jump key is held, then you can set JumpMaxHoldTime to some non-zero value. Make sure in this case to call StopJumping() when you want the jump's z-velocity to stop being applied (such as on a button up event), otherwise the character will carry on receiving the velocity until JumpKeyHoldTime reaches JumpMaxHoldTime.

Crouch
void Crouch(
bool 	bClientSimulation	 = 	false
	)

Request the character to start crouching. The request is processed on the next update of the CharacterMovementComponent.  See: OnStartCrouch See: IsCrouched See: CharacterMovement->WantsToCrouch

OnJumped
void OnJumped()

Event fired when the character has just started jumping

GetBaseRotationOffset
FRotator GetBaseRotationOffset() const

Get the saved rotation offset of mesh. This is how much extra rotation is applied from the capsule rotation.

GetBaseTranslationOffset
FVector GetBaseTranslationOffset() const

Get the saved translation offset of mesh. This is how much extra offset is applied from the center of the capsule.

OnWalkingOffLedge
void OnWalkingOffLedge(
FVector 	PreviousFloorImpactNormal,
FVector 	PreviousFloorContactNormal,
FVector 	PreviousLocation,
float32 	TimeDelta
	)

Event fired when the Character is walking off a surface and is about to fall because CharacterMovement->CurrentFloor became unwalkable.  If CharacterMovement->MovementMode does not change during this event then the character will automatically start falling afterwards.  Note: Z velocity is zero during walking movement, and will be here as well. Another velocity can be computed here if desired and will be used when starting to fall.

**Parameters**

PreviousFloorImpactNormal
FVector

Normal of the previous walkable floor.

PreviousFloorContactNormal
FVector

Normal of the contact with the previous walkable floor.

PreviousLocation
FVector

Previous character location before movement off the ledge.

IsJumpProvidingForce
bool IsJumpProvidingForce() const

True if jump is actively providing a force, such as when the jump key is held and the time it has been held is less than JumpMaxHoldTime.  See: CharacterMovement->IsFalling

CacheInitialMeshOffset
void CacheInitialMeshOffset(
FVector 	MeshRelativeLocation,
FRotator 	MeshRelativeRotation
	)

Cache mesh offset from capsule. This is used as the target for network smoothing interpolation, when the mesh is offset with lagged smoothing.  This is automatically called during initialization; call this at runtime if you intend to change the default mesh offset from the capsule.  See: GetBaseTranslationOffset(), GetBaseRotationOffset()

LaunchCharacter
void LaunchCharacter(
FVector 	LaunchVelocity,
bool 	bXYOverride,
bool 	bZOverride
	)

Set a pending launch velocity on the Character. This velocity will be processed on the next CharacterMovementComponent tick, and will set it to the "falling" state. Triggers the OnLaunched event.

**Parameters**

LaunchVelocity
FVector

is the velocity to impart to the Character

bXYOverride
bool

if true replace the XY part of the Character's velocity instead of adding to it.

bZOverride
bool

if true replace the Z component of the Character's velocity instead of adding to it.

UnCrouch
void UnCrouch(
bool 	bClientSimulation	 = 	false
	)

Request the character to stop crouching. The request is processed on the next update of the CharacterMovementComponent.  See: OnEndCrouch See: IsCrouched See: CharacterMovement->WantsToCrouch

StopJumping
void StopJumping()

Stop the character from jumping on the next update.  Call this from an input event (such as a button 'up' event) to cease applying jump Z-velocity. If this is not called, then jump z-velocity will be applied until JumpMaxHoldTime is reached.

---

## FUNCTIONS

### ClientCheatFly

```
void ClientCheatFly()
```

UpdateCustomMovement

### void UpdateCustomMovement

```
void UpdateCustomMovement(float32 DeltaTime)
```

Event for implementing custom character movement mode. Called by CharacterMovement if MovementMode is set to Custom.  Note: C++ code should override UCharacterMovementComponent::PhysCustom() instead.  See: UCharacterMovementComponent::PhysCustom()

ClientAdjustRootMotionPosition

### void ClientAdjustRootMotionPosition

```
void ClientAdjustRootMotionPosition(float32 TimeStamp, float32 ServerMontageTrackPosition, FVector ServerLoc, FVector ServerRotation, float32 ServerVelZ, UPrimitiveComponent ServerBase, FName ServerBoneName, bool bHasBase, bool bBaseRelativePosition, uint8 ServerMovementMode)
```

ClientCheatGhost

### void ClientCheatGhost

```
void ClientCheatGhost()
```

OnEndCrouch

### void OnEndCrouch

```
void OnEndCrouch(float32 HalfHeightAdjust, float32 ScaledHalfHeightAdjust)
```

Event when Character stops crouching.

**Parameters**

HalfHeightAdjust
float32

difference between default collision half-height, and actual crouched capsule half-height.

ScaledHalfHeightAdjust
float32

difference after component scale is taken in to account.

ClientVeryShortAdjustPosition
void ClientVeryShortAdjustPosition(
float32 	TimeStamp,
FVector 	NewLoc,
UPrimitiveComponent 	NewBase,
FName 	NewBaseBoneName,
bool 	bHasBase,
bool 	bBaseRelativePosition,
uint8 	ServerMovementMode
	)

Bandwidth saving version, when velocity is zeroed

OnMovementModeChanged
void OnMovementModeChanged(
EMovementMode 	PrevMovementMode,
EMovementMode 	NewMovementMode,
uint8 	PrevCustomMode,
uint8 	NewCustomMode
	)

Called from CharacterMovementComponent to notify the character that the movement mode has changed.

**Parameters**

PrevMovementMode
EMovementMode

Movement mode before the change

NewMovementMode
EMovementMode

New movement mode

PrevCustomMode
uint8

Custom mode before the change (applicable if PrevMovementMode is Custom)

NewCustomMode
uint8

New custom mode (applicable if NewMovementMode is Custom)

OnLaunched
void OnLaunched(
FVector 	LaunchVelocity,
bool 	bXYOverride,
bool 	bZOverride
	)

Let blueprint know that we were launched

ClientCheatWalk
void ClientCheatWalk()
ClientAdjustPosition
void ClientAdjustPosition(
float32 	TimeStamp,
FVector 	NewLoc,
FVector 	NewVel,
UPrimitiveComponent 	NewBase,
FName 	NewBaseBoneName,
bool 	bHasBase,
bool 	bBaseRelativePosition,
uint8 	ServerMovementMode
	)
RootMotionDebugClientPrintOnScreen
void RootMotionDebugClientPrintOnScreen(
FString 	InString
	)
ServerMove
void ServerMove(
float32 	TimeStamp,
FVector 	InAccel,
FVector 	ClientLoc,
uint8 	CompressedMoveFlags,
uint8 	ClientRoll,
uint 	View,
UPrimitiveComponent 	ClientMovementBase,
FName 	ClientBaseBoneName,
uint8 	ClientMovementMode
	)
ServerMoveDual
void ServerMoveDual(
float32 	TimeStamp0,
FVector 	InAccel0,
uint8 	PendingFlags,
uint 	View0,
float32 	TimeStamp,
FVector 	InAccel,
FVector 	ClientLoc,
uint8 	NewFlags,
uint8 	ClientRoll,
uint 	View,
UPrimitiveComponent 	ClientMovementBase,
FName 	ClientBaseBoneName,
uint8 	ClientMovementMode
	)
ServerMoveDualHybridRootMotion
void ServerMoveDualHybridRootMotion(
float32 	TimeStamp0,
FVector 	InAccel0,
uint8 	PendingFlags,
uint 	View0,
float32 	TimeStamp,
FVector 	InAccel,
FVector 	ClientLoc,
uint8 	NewFlags,
uint8 	ClientRoll,
uint 	View,
UPrimitiveComponent 	ClientMovementBase,
FName 	ClientBaseBoneName,
uint8 	ClientMovementMode
	)
ServerMoveDualNoBase
void ServerMoveDualNoBase(
float32 	TimeStamp0,
FVector 	InAccel0,
uint8 	PendingFlags,
uint 	View0,
float32 	TimeStamp,
FVector 	InAccel,
FVector 	ClientLoc,
uint8 	NewFlags,
uint8 	ClientRoll,
uint 	View,
uint8 	ClientMovementMode
	)
ServerMoveNoBase
void ServerMoveNoBase(
float32 	TimeStamp,
FVector 	InAccel,
FVector 	ClientLoc,
uint8 	CompressedMoveFlags,
uint8 	ClientRoll,
uint 	View,
uint8 	ClientMovementMode
	)
ServerMoveOld
void ServerMoveOld(
float32 	OldTimeStamp,
FVector 	OldAccel,
uint8 	OldMoveFlags
	)
ClientAckGoodMove
void ClientAckGoodMove(
float32 	TimeStamp
	)
OnLanded
void OnLanded(
FHitResult 	Hit
	)

Called upon landing when falling, to perform actions based on the Hit result.  Note that movement mode is still "Falling" during this event. Current Velocity value is the velocity at the time of landing.  Consider OnMovementModeChanged() as well, as that can be used once the movement mode changes to the new mode (most likely Walking).

**Parameters**

Hit
FHitResult

Result describing the landing that resulted in a valid landing spot.

OnStartCrouch
void OnStartCrouch(
float32 	HalfHeightAdjust,
float32 	ScaledHalfHeightAdjust
	)

Event when Character crouches.

**Parameters**

HalfHeightAdjust
float32

difference between default collision half-height, and actual crouched capsule half-height.

ScaledHalfHeightAdjust
float32

difference after component scale is taken in to account.

GetbIsCrouched
bool GetbIsCrouched() const
GetbPressedJump
bool GetbPressedJump() const
GetbWasJumping
bool GetbWasJumping() const
STATIC FUNCTIONS
Spawn
static ACharacter ACharacter::Spawn(
FVector 	Location	 = 	FVector :: ZeroVector,
FRotator 	Rotation	 = 	FRotator :: ZeroRotator,
FName 	Name	 = 	NAME_None,
ULevel 	Level	 = 	nullptr
	)
StaticClass
static UClass ACharacter::StaticClass()
