# ACineCameraActor

**Visibility:** public

## Inheritance

ACameraActor → ACineCameraActor

## Description

A CineCameraActor is a CameraActor specialized to work like a cinematic camera.

## CAMERA

### CineCameraComponent

```
const UCineCameraComponent CineCameraComponent
```

Returns the CineCameraComponent of this CineCamera

### CURRENT CAMERA SETTINGS

```
CURRENT CAMERA SETTINGS LookatTrackingSettings FCameraLookatTrackingSettings LookatTrackingSettings CAMERA GetCineCameraComponent UCineCameraComponent GetCineCameraComponent()const
```

Returns the CineCameraComponent of this CineCamera

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ACineCameraActor ACineCameraActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ACineCameraActor::StaticClass

```
static UClass ACineCameraActor::StaticClass()
```
