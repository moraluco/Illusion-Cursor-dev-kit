# AController

**Visibility:** public

## Inheritance

AActor → AController → AAIController → APlayerController

## Description

Controllers are non-physical actors that can possess a Pawn to control its actions.  PlayerControllers are used by human players to control pawns, while AIControllers implement the artificial intelligence for the pawns they control.  Controllers take control of a pawn using their Possess() method, and relinquish control of the pawn by calling UnPossess().

Controllers receive notifications for many of the events occurring for the Pawn they are controlling.  This gives the controller the opportunity to implement the behavior in response to this event, intercepting the event and superseding the Pawn's default behavior.

ControlRotation (accessed via GetControlRotation()), determines the viewing/aiming direction of the controlled Pawn and is affected by input such as from a mouse or gamepad.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Gameplay​/Framework​/Controller​/

## CONTROLLER

### PlayerState

```
APlayerState PlayerState
```

PlayerState containing replicated information about the player using this controller (only exists for players, not NPCs).

---

## PAWN

### OnPossessedPawnChanged

```
FOnPossessedPawnChanged OnPossessedPawnChanged
```

Called on both authorities and clients when the possessed pawn changes (either OldPawn or NewPawn might be nullptr)

### DesiredRotation

```
const FRotator DesiredRotation
```

Get the desired pawn target rotation

### ViewTarget

```
const AActor ViewTarget
```

Get the actor the controller is looking at

---

## VARIABLES

### ControlRotation

```
FRotator ControlRotation
```

The control rotation of the Controller. See GetControlRotation.

### ControlledPawn

```
const APawn ControlledPawn
```
### OnInstigatedAnyDamage

```
FInstigatedAnyDamageSignature OnInstigatedAnyDamage
```

Called when the controller has instigated damage in any way

---

## AI \| NAVIGATION

### StopMovement

```
void StopMovement()
```

Aborts the move the controller is currently performing

---

## CONTROLLER

### LineOfSightTo

```
bool LineOfSightTo(const AActor Other, FVector ViewPoint = FVector(),
```

	bool 	bAlternateChecks	 = 	false

	) const

### actor

```
Checks line to center and top of other actor
```
**Parameters**

Other
const AActor

is the actor whose visibility is being checked.

ViewPoint
FVector

is eye position visibility is being checked from.  If vect(0,0,0) passed in, uses current viewtarget's eye position.

bAlternateChecks
bool

used only in AIController implementation

**Returns**

true if controller's pawn can see Other actor.

---

## INPUT

### IsMoveInputIgnored

```
bool IsMoveInputIgnored()const
```

Returns true if movement input is ignored.

### ResetIgnoreLookInput

```
void ResetIgnoreLookInput()
```

Stops ignoring look input by resetting the ignore look input state.

### ResetIgnoreMoveInput

```
void ResetIgnoreMoveInput()
```

Stops ignoring move input by resetting the ignore move input state.

### SetIgnoreLookInput

```
void SetIgnoreLookInput(bool bNewLookInput)
```

Locks or unlocks look input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreLookInput.

**Parameters**

bNewLookInput
bool

If true, look input is ignored. If false, input is not ignored.

IsLookInputIgnored
bool IsLookInputIgnored() const

Returns true if look input is ignored.

SetIgnoreMoveInput
void SetIgnoreMoveInput(
bool 	bNewMoveInput
	)

Locks or unlocks movement input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreMoveInput.

**Parameters**

bNewMoveInput
bool

If true, move input is ignored. If false, input is not ignored.

ResetIgnoreInputFlags
void ResetIgnoreInputFlags()

Reset move and look input ignore flags.

---

## PAWN

### GetControlledPawn

```
APawn GetControlledPawn()const
```

Return the Pawn that is currently 'controlled' by this PlayerController

### UnPossess

```
void UnPossess()
```

Called to unpossess our pawn for any reason that is not the pawn being destroyed (destruction handled by PawnDestroyed()).

### IsLocalPlayerController

```
bool IsLocalPlayerController()const
```

Returns whether this Controller is a locally controlled PlayerController.

### GetControlRotation

```
FRotator GetControlRotation()const
```

Get the control rotation. This is the full aim rotation, which may be different than a camera orientation (for example in a third person view), and may differ from the rotation of the controlled Pawn (which may choose not to visually pitch or roll, for example).

### GetViewTarget

```
AActor GetViewTarget()const
```

Get the actor the controller is looking at

### GetDesiredRotation

```
FRotator GetDesiredRotation()const
```

Get the desired pawn target rotation

### IsLocalController

```
bool IsLocalController()const
```

Returns whether this Controller is a local controller.

### GetPlayerViewPoint

```
void GetPlayerViewPoint(FVector& Location, FRotator& Rotation)const
```

Returns Player's Point of View For the AI this means the Pawn's 'Eyes' ViewPoint For a Human player, this means the Camera's ViewPoint

### @output  out_Location, view location of player @output  out_rotation, view rotation of player

```
@output  out_Location, view location of player @output  out_rotation, view rotation of player
```

IsPlayerController

### bool IsPlayerController

```
bool IsPlayerController()const
```

Returns whether this Controller is a PlayerController.

### Possess

```
void Possess(APawn InPawn)
```

Handles attaching this controller to the specified pawn.  Only runs on the network authority (where HasAuthority() returns true).  Derived native classes can override OnPossess to filter the specified pawn.  When possessed pawn changed, blueprint class gets notified by ReceivePossess and OnNewPawn delegate is broadcasted.

**Parameters**

InPawn
APawn

The Pawn to be possessed.

SetControlRotation
void SetControlRotation(
FRotator 	NewRotation
	)

Set the control rotation.

SetInitialLocationAndRotation
void SetInitialLocationAndRotation(
FVector 	NewLocation,
FRotator 	NewRotation
	)

Set the initial location and rotation of the controller, as well as the control rotation. Typically used when the controller is first created.

---

## FUNCTIONS

### ClientSetLocation

```
void ClientSetLocation(FVector NewLocation, FRotator NewRotation)
```

Replicated function to set the pawn location and rotation, allowing server to force (ex. teleports).

### ReceivePossess

```
void ReceivePossess(APawn PossessedPawn)
```

Blueprint implementable event to react to the controller possessing a pawn

### ClientSetRotation

```
void ClientSetRotation(FRotator NewRotation, bool bResetCamera)
```

Replicated function to set the pawn rotation, allowing the server to force.

### ReceiveUnPossess

```
void ReceiveUnPossess(APawn UnpossessedPawn)
```

Blueprint implementable event to react to the controller unpossessing a pawn

### InstigatedAnyDamage

```
void InstigatedAnyDamage(float32 Damage, const UDamageType DamageType, AActor DamagedActor, AActor DamageCauser)
```

Event when this controller instigates ANY damage

### SetbAttachToPawn

```
void SetbAttachToPawn(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AController AController::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AController::StaticClass

```
static UClass AController::StaticClass()
```
