# ACameraActor

**Visibility:** public

## Inheritance

AActor → ACameraActor → ACineCameraActor → AEditorUtilityCamera

## Description

A CameraActor is a camera viewpoint that can be placed in a level.

## AUTOPLAYERACTIVATION

### AutoActivatePlayerIndex

```
const int AutoActivatePlayerIndex
```

Returns index of the player for whom we auto-activate, or INDEX_NONE (-1) if disabled.

### AutoActivateForPlayer

```
EAutoReceiveInput AutoActivateForPlayer
```

Specifies which player controller, if any, should automatically use this Camera when the controller is active.

---

## CAMERAACTOR

### SceneComponent

```
USceneComponent SceneComponent
```
### CameraComponent

```
UCameraComponent CameraComponent
```

The camera component for this camera

---

## AUTOPLAYERACTIVATION

### GetAutoActivatePlayerIndex

```
int GetAutoActivatePlayerIndex()const
```

Returns index of the player for whom we auto-activate, or INDEX_NONE (-1) if disabled.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ACameraActor ACameraActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ACameraActor::StaticClass

```
static UClass ACameraActor::StaticClass()
```
