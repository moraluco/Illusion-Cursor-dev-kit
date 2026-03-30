# UCheatManager

**Visibility:** public

## Inheritance

UObject → UCheatManager

## Description

Cheat Manager is a central blueprint to implement test and debug code and actions that are not to ship with the game.  As the Cheat Manager is not instanced in shipping builds, it is for debugging purposes only

## Members

### MANAGER

```
CHEAT MANAGER
```
### PlayerController

```
const APlayerController PlayerController
```
### CAMERA

```
DEBUG CAMERA
```
### DebugCameraControllerClass

```
TSubclassOf<ADebugCameraController> DebugCameraControllerClass Debug camera
```

used to have independent camera without stopping gameplay

### CHEAT MANAGER

```
CHEAT MANAGER God void God()
```

Invulnerability cheat.

### DamageTarget

```
void DamageTarget(float32 DamageAmount)
```

Damage the actor you're looking at (sourced from the player).

### DestroyTarget

```
void DestroyTarget()
```

Destroy the actor you're looking at.

### DisableDebugCamera

```
void DisableDebugCamera()
```

Switch controller from debug camera back to normal controller

### EnableDebugCamera

```
void EnableDebugCamera()
```

Switch controller to debug camera without locking gameplay and with locking local player controller input

### Fly

```
void Fly()
```

Pawn can fly.

### FreezeFrame

```
void FreezeFrame(float32 Delay)
```

Pause the game for Delay seconds.

### GetPlayerController

```
APlayerController GetPlayerController()const
```

Ghost

### void Ghost

```
void Ghost()
```

Pawn no longer collides with the world, and can fly

### ChangeSize

```
void ChangeSize(float32 F)
```

Scale the player's size to be F * default size.

### PlayersOnly

```
void PlayersOnly()
```

Freeze everything in the level except for players.

### Teleport

```
void Teleport()
```

Teleport to surface player is looking at.

### Slomo

```
void Slomo(float32 NewTimeDilation)
```

Modify time dilation to change apparent speed of passage of time. e.g. "Slomo 0.1" makes everything move very slowly, while "Slomo 10" makes everything move very fast.

### Walk

```
void Walk()
```

Return to walking movement mode from Fly or Ghost cheat.

---

## FUNCTIONS

### ServerToggleAILogging

```
void ServerToggleAILogging()
```

InitCheatManager

### void InitCheatManager

```
void InitCheatManager()
```

BP implementable event for when CheatManager is created to allow any needed initialization.

### EndPlay

```
void EndPlay()
```

This is the End Play event for the CheatManager

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCheatManager::StaticClass()
```
