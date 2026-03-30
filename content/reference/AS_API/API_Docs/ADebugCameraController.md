# ADebugCameraController

**Visibility:** public

## Inheritance

APlayerController → ADebugCameraController

## Description

Camera controller that allows you to fly around a level mostly unrestricted by normal movement rules.

To turn it on, please press Alt+C or both (left and right) analogs on XBox pad, or use the "ToggleDebugCamera" console command. Check the debug camera bindings in DefaultPawn.cpp for the camera controls.

## Members

### CAMERA

```
DEBUG CAMERA
```
### InitialMaxSpeed

```
float32 InitialMaxSpeed
```

Initial max speed of the spectator pawn when we start possession.

### InitialAccel

```
float32 InitialAccel
```

Initial acceleration of the spectator pawn when we start possession.

### InitialDecel

```
float32 InitialDecel
```

Initial deceleration of the spectator pawn when we start possession.

### SpeedScale

```
float32 SpeedScale
```

Allows control over the speed of the spectator pawn. This scales the speed based on the InitialMaxSpeed. Use Set Pawn Movement Speed Scale during runtime

---

## VARIABLES

### SelectedActor

```
const AActor SelectedActor
```

Currently selected actor, may be invalid

### DEBUG CAMERA

```
DEBUG CAMERA ToggleDisplay void ToggleDisplay()
```

Toggles the display of debug info and input commands for the Debug Camera.

### OnActorSelected

```
void OnActorSelected(AActor NewSelectedActor, FVector SelectHitLocation, FVector SelectHitNormal, FHitResult Hit)
```

Called when an actor has been selected with the primary key (e.g. left mouse button).

The selection trace starts from the center of the debug camera's view.

**Parameters**

SelectHitLocation
FVector

The exact world-space location where the selection trace hit the New Selected Actor.

SelectHitNormal
FVector

The world-space surface normal of the New Selected Actor at the hit location.

SetPawnMovementSpeedScale
void SetPawnMovementSpeedScale(
float32 	NewSpeedScale
	)

Sets the pawn movement speed scale.

GetSelectedActor
AActor GetSelectedActor() const

Returns the currently selected actor, or null if it is invalid or not set

---

## FUNCTIONS

### OnDeactivate

```
void OnDeactivate(APlayerController RestoredPC)
```

Function called on deactivation of debug camera controller.

**Parameters**

RestoredPC
APlayerController

The Player Controller that the player input is being returned to.

OnActivate
void OnActivate(
APlayerController 	OriginalPC
	)

Function called on activation of debug camera controller.

**Parameters**

OriginalPC
APlayerController

The active player controller before this debug camera controller was possessed by the player.

STATIC FUNCTIONS
Spawn
static ADebugCameraController ADebugCameraController::Spawn(

FVector 	Location	 = 	FVector :: ZeroVector,
FRotator 	Rotation	 = 	FRotator :: ZeroRotator,
FName 	Name	 = 	NAME_None,
ULevel 	Level	 = 	nullptr

)
StaticClass
static UClass ADebugCameraController::StaticClass()
