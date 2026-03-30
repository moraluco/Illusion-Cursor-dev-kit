# APawn

**Visibility:** public

## Inheritance

AActor → APawn → ACharacter → ADefaultPawn

## Description

Pawn is the base class of all actors that can be possessed by players or AI.  They are the physical representations of players and creatures in a level.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Gameplay​/Framework​/Pawn​/

## CAMERA

### BaseEyeHeight

```
float32 BaseEyeHeight
```

Base eye height above collision center.

---

## PAWN

### AutoPossessAI

```
EAutoPossessAI AutoPossessAI
```

Determines when the Pawn creates and is possessed by an AI Controller (on level start, when spawned, etc).  Only possible if AIControllerClassRef is set, and ignored if AutoPossessPlayer is enabled.  @see AutoPossessPlayer

### AIControllerClass

```
TSubclassOf<AController> AIControllerClass
```

Default class to use when pawn is controlled by AI.

### AutoPossessPlayer

```
EAutoReceiveInput AutoPossessPlayer
```

Determines which PlayerController, if any, should automatically possess the pawn when the level starts or when the pawn is spawned.  @see AutoPossessAI

### PlayerState

```
APlayerState PlayerState
```

If Pawn is possessed by a player, points to its Player State.  Needed for network play as controllers are not replicated to clients.

### LastHitBy

```
AController LastHitBy
```

Controller of the last Actor that caused us damage.

### ReceiveControllerChangedDelegate

```
FPawnControllerChangedSignature ReceiveControllerChangedDelegate
```

Event called after a pawn's controller has changed, on the server and owning client. This will happen at the same time as the delegate on GameInstance

### ReceiveRestartedDelegate

```
FPawnRestartedSignature ReceiveRestartedDelegate
```

Event called after a pawn has been restarted, usually by a possession change. This is called on the server for all pawns and the owning client for player pawns

### BaseAimRotation

```
const FRotator BaseAimRotation
```

Return the aim rotation for the Pawn.  If we have a controller, by default we aim at the player's 'eyes' direction that is by default the Pawn rotation for AI, and camera (crosshair) rotation for human players.

### ControlRotation

```
const FRotator ControlRotation
```

Get the rotation of the Controller, often the 'view' rotation of this Pawn.

### bUseControllerRotationYaw

```
bool bUseControllerRotationYaw
```

If true, this Pawn's yaw will be updated to match the Controller's ControlRotation yaw, if controlled by a PlayerController.

### LocalViewingPlayerController

```
const APlayerController LocalViewingPlayerController
```

Returns local Player Controller viewing this pawn, whether it is controlling or spectating

### MovementComponent

```
const UPawnMovementComponent MovementComponent
```

Return our PawnMovementComponent, if we have one.

### NavAgentLocation

```
const FVector NavAgentLocation
```

Basically retrieved pawn's location on navmesh

### bCanAffectNavigationGeneration

```
bool bCanAffectNavigationGeneration
```

If set to false (default) given pawn instance will never affect navigation generation (but components could).  Setting it to true will result in using regular AActor's navigation relevancy calculation to check if this pawn instance should affect navigation generation.  @note Use SetCanAffectNavigationGeneration() to change this value at runtime.  @note Modifying this value at runtime will result in any navigation change only if runtime navigation generation is enabled.  @note Override UpdateNavigationRelevance() to propagate the flag to the desired components.  @see SetCanAffectNavigationGeneration(), UpdateNavigationRelevance()

### bUseControllerRotationPitch

```
bool bUseControllerRotationPitch
```

If true, this Pawn's pitch will be updated to match the Controller's ControlRotation pitch, if controlled by a PlayerController.

### bUseControllerRotationRoll

```
bool bUseControllerRotationRoll
```

If true, this Pawn's roll will be updated to match the Controller's ControlRotation roll, if controlled by a PlayerController.

---

## PAWN \| INPUT

### LastMovementInputVector

```
const FVector LastMovementInputVector
```

Return the last input vector in world space that was processed by ConsumeMovementInputVector(), which is usually done by the Pawn or PawnMovementComponent.  Any user that needs to know about the input that last affected movement should use this function.  For example an animation update would want to use this, since by default the order of updates in a frame is: PlayerController (device input) -> MovementComponent -> Pawn -> Mesh (animations)

### PendingMovementInputVector

```
const FVector PendingMovementInputVector
```

Return the pending input vector in world space. This is the most up-to-date value of the input vector, pending ConsumeMovementInputVector() which clears it, Usually only a PawnMovementComponent will want to read this value, or the Pawn itself if it is responsible for movement.

---

## VARIABLES

### Controller

```
const AController Controller
```

Controller currently possessing this Actor

---

## AI

### PawnMakeNoise

```
void PawnMakeNoise(float32 Loudness, FVector NoiseLocation, bool bUseNoiseMakerLocation = true, AActor NoiseMaker = nullptr)
```

Inform AIControllers that you've made a noise they might hear (they are sent a HearNoise message if they have bHearNoises==true) The instigator of this sound is the pawn which is used to call MakeNoise.

**Parameters**

Loudness
float32

is the relative loudness of this noise (range 0.0 to 1.0).  Directly affects the hearing range specified by the AI's HearingThreshold.

NoiseLocation
FVector

Position of noise source.  If zero vector, use the actor's location.

bUseNoiseMakerLocation
bool

If true, use the location of the NoiseMaker rather than NoiseLocation.  If false, use NoiseLocation.

NoiseMaker
AActor

Which actor is the source of the noise.  Not to be confused with the Noise Instigator, which is responsible for the noise (and is the pawn on which this function is called).  If not specified, the pawn instigating the noise will be used as the NoiseMaker

---

## AI \| NAVIGATION

### SetCanAffectNavigationGeneration

```
void SetCanAffectNavigationGeneration(bool bNewValue, bool bForceUpdate = false)
```

Use SetCanAffectNavigationGeneration to change this value at runtime.  Note that calling this function at runtime will result in any navigation change only if runtime navigation generation is enabled.

---

## PAWN

### IsPawnControlled

```
bool IsPawnControlled()const
```

Check if this actor is currently being controlled at all (the actor has a valid Controller, which will be false for remote clients)

### GetNavAgentLocation

```
FVector GetNavAgentLocation()const
```

Basically retrieved pawn's location on navmesh

### SpawnDefaultController

```
void SpawnDefaultController()
```

Spawn default controller for this Pawn, and get possessed by it.

### DetachFromControllerPendingDestroy

```
void DetachFromControllerPendingDestroy()
```

Call this function to detach safely pawn from its controller, knowing that we will be destroyed soon.

### GetBaseAimRotation

```
FRotator GetBaseAimRotation()const
```

Return the aim rotation for the Pawn.  If we have a controller, by default we aim at the player's 'eyes' direction that is by default the Pawn rotation for AI, and camera (crosshair) rotation for human players.

### GetController

```
AController GetController()const
```

Returns controller for this actor.

### GetControlRotation

```
FRotator GetControlRotation()const
```

Get the rotation of the Controller, often the 'view' rotation of this Pawn.

### IsControlled

```
bool IsControlled()const
```

GetLocalViewingPlayerController

### APlayerController GetLocalViewingPlayerController

```
APlayerController GetLocalViewingPlayerController()const
```

Returns local Player Controller viewing this pawn, whether it is controlling or spectating

### GetMovementComponent

```
UPawnMovementComponent GetMovementComponent()const
```

Return our PawnMovementComponent, if we have one.

### GetMovementBaseActor

```
static AActor APawn::GetMovementBaseActor(const APawn Pawn)
```

Gets the owning actor of the Movement Base Component on which the pawn is standing.

### IsLocallyViewed

```
bool IsLocallyViewed()const
```

Is this pawn the ViewTarget of a local PlayerController?  Helpful for determining whether the pawn is visible/critical for any VFX.  NOTE: Technically there may be some cases where locally controlled pawns return false for this, such as if you are using a remote camera view of some sort.  But generally it will be true for locally controlled pawns, and it will always be true for pawns that are being spectated in-game or in Replays.

### IsBotControlled

```
bool IsBotControlled()const
```

Returns true if controlled by a bot.

### IsLocallyControlled

```
bool IsLocallyControlled()const
```

Returns true if controlled by a local (not network) Controller.

### IsPlayerControlled

```
bool IsPlayerControlled()const
```

Returns true if controlled by a human player (possessed by a PlayerController).  This returns true for players controlled by remote clients

---

## PAWN \| INPUT

### IsMoveInputIgnored

```
bool IsMoveInputIgnored()const
```

Helper to see if move input is ignored. If our controller is a PlayerController, checks Controller->IsMoveInputIgnored().

### AddControllerPitchInput

```
void AddControllerPitchInput(float32 Val)
```

Add input (affecting Pitch) to the Controller's ControlRotation, if it is a local PlayerController.  This value is multiplied by the PlayerController's InputPitchScale value.

**Parameters**

Val
float32

Amount to add to Pitch. This value is multiplied by the PlayerController's InputPitchScale value.

ConsumeMovementInputVector
FVector ConsumeMovementInputVector()

Returns the pending input vector and resets it to zero.  This should be used during a movement update (by the Pawn or PawnMovementComponent) to prevent accumulation of control input between frames.  Copies the pending input vector to the saved input vector (GetLastMovementInputVector()).

**Returns**

The pending input vector.

AddMovementInput
void AddMovementInput(
FVector 	WorldDirection,
float32 	ScaleValue	 = 	1.000000,
bool 	bForce	 = 	false
	)

Add movement input along the given world direction vector (usually normalized) scaled by 'ScaleValue'. If ScaleValue < 0, movement will be in the opposite direction.  Base Pawn classes won't automatically apply movement, it's up to the user to do so in a Tick event. Subclasses such as Character and DefaultPawn automatically handle this input and move.

**Parameters**

WorldDirection
FVector

Direction in world space to apply input

ScaleValue
float32

Scale to apply to input. This can be used for analog input, ie a value of 0.5 applies half the normal value, while -1.0 would reverse the direction.

bForce
bool

If true always add the input, ignoring the result of IsMoveInputIgnored().

GetLastMovementInputVector
FVector GetLastMovementInputVector() const

Return the last input vector in world space that was processed by ConsumeMovementInputVector(), which is usually done by the Pawn or PawnMovementComponent.  Any user that needs to know about the input that last affected movement should use this function.  For example an animation update would want to use this, since by default the order of updates in a frame is: PlayerController (device input) -> MovementComponent -> Pawn -> Mesh (animations)

**Returns**

The last input vector in world space that was processed by ConsumeMovementInputVector().

GetPendingMovementInputVector
FVector GetPendingMovementInputVector() const

Return the pending input vector in world space. This is the most up-to-date value of the input vector, pending ConsumeMovementInputVector() which clears it, Usually only a PawnMovementComponent will want to read this value, or the Pawn itself if it is responsible for movement.

**Returns**

The pending input vector in world space.

AddControllerYawInput
void AddControllerYawInput(
float32 	Val
	)

Add input (affecting Yaw) to the Controller's ControlRotation, if it is a local PlayerController.  This value is multiplied by the PlayerController's InputYawScale value.

**Parameters**

Val
float32

Amount to add to Yaw. This value is multiplied by the PlayerController's InputYawScale value.

AddControllerRollInput
void AddControllerRollInput(
float32 	Val
	)

Add input (affecting Roll) to the Controller's ControlRotation, if it is a local PlayerController.  This value is multiplied by the PlayerController's InputRollScale value.

**Parameters**

Val
float32

Amount to add to Roll. This value is multiplied by the PlayerController's InputRollScale value.

---

## FUNCTIONS

### Unpossessed

```
void Unpossessed(AController OldController)
```

Event called when the Pawn is no longer possessed by a Controller. Only called on the server (or in standalone)

### SetbUseControllerRotationYaw

```
void SetbUseControllerRotationYaw(bool Value)
```

Possessed

### void Possessed

```
void Possessed(AController NewController)
```

Event called when the Pawn is possessed by a Controller. Only called on the server (or in standalone)

### GetbUseControllerRotationPitch

```
bool GetbUseControllerRotationPitch()const
```

SetbUseControllerRotationPitch

### void SetbUseControllerRotationPitch

```
void SetbUseControllerRotationPitch(bool Value)
```

GetbUseControllerRotationYaw

### bool GetbUseControllerRotationYaw

```
bool GetbUseControllerRotationYaw()const Restarted
```

void Restarted()

### Event called after a pawn has been restarted, usually by a possession change. This is called on the server for all pawns and the owning client for player pawns

```
Event called after a pawn has been restarted, usually by a possession change. This is called on the server for all pawns and the owning client for player pawns
```

GetbUseControllerRotationRoll

### bool GetbUseControllerRotationRoll

```
bool GetbUseControllerRotationRoll()const SetbUseControllerRotationRoll
```

void SetbUseControllerRotationRoll(

### bool 	Value

```
bool 	Value 	)
```

GetbCanAffectNavigationGeneration

### bool GetbCanAffectNavigationGeneration

```
bool GetbCanAffectNavigationGeneration()const SetbCanAffectNavigationGeneration
```

void SetbCanAffectNavigationGeneration(

### bool 	Value

```
bool 	Value 	)
```

ControllerChanged

### void ControllerChanged

```
void ControllerChanged(AController OldController, AController NewController)
```

Event called after a pawn's controller has changed, on the server and owning client. This will happen at the same time as the delegate on GameInstance

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static APawn APawn::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APawn::StaticClass

```
static UClass APawn::StaticClass()
```
