# AVREditorTeleporter

**Visibility:** public

## Inheritance

AActor → AVREditorTeleporter

## Description

VR Editor teleport manager and the visual representation of the teleport

## VARIABLES

### VRMode

```
const UVREditorMode VRMode
```

The owning VR mode

### InteractorTryingTeleport

```
const UViewportInteractor InteractorTryingTeleport
```

The interactor that started aiming to teleport

---

## TELEPORTER

### SetVisibility

```
void SetVisibility(bool bVisible)
```

Hide or show the teleporter visuals

### GetInteractorTryingTeleport

```
UViewportInteractor GetInteractorTryingTeleport()const
```

Get the actor we're currently trying to teleport with.  Valid during aiming and teleporting.

### GetSlideDelta

```
float32 GetSlideDelta(UVREditorInteractor Interactor, bool Axis)
```

Get slide delta to push/pull or scale the teleporter

### GetVRMode

```
UVREditorMode GetVRMode()const
```

Init

### void Init

```
void Init(UVREditorMode InMode)
```

Initializes the teleporter

### IsAiming

```
bool IsAiming()const
```

Whether we are currently aiming to teleport.

### IsTeleporting

```
bool IsTeleporting()const
```

SetColor

### void SetColor

```
void SetColor(FLinearColor Color)
```

Sets the color for the teleporter visuals

### DoTeleport

```
void DoTeleport()
```

Do and finalize teleport.

### Shutdown

```
void Shutdown()
```

Shuts down the teleporter

### StartAiming

```
void StartAiming(UViewportInteractor Interactor)
```

Functions we call to handle teleporting in navigation mode

### StartTeleport

```
void StartTeleport()
```

Start teleporting, does a ray trace with the hand passed and calculates the locations for lerp movement in Teleport

### StopAiming

```
void StopAiming()
```

Cancel teleport aiming mode without doing the teleport

### TeleportDone

```
void TeleportDone()
```

Called when teleport is done for cleanup

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AVREditorTeleporter AVREditorTeleporter::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AVREditorTeleporter::StaticClass

```
static UClass AVREditorTeleporter::StaticClass()
```
