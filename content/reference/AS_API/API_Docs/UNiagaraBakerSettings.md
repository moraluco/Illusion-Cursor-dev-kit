# UNiagaraBakerSettings

**Visibility:** public

## Inheritance

UObject → UNiagaraBakerSettings → CAMERA → CameraViewportLocation

## Description

FVector CameraViewportLocation

Per viewport camera position..

CameraViewportMode ENiagaraBakerViewMode CameraViewportMode

Current active viewport we will render from.

CameraOrbitDistance float32 CameraOrbitDistance

Perspective camera orbit distance.

CameraFOV float32 CameraFOV

Camera FOV to use when in perspective mode.

CameraOrthoWidth float32 CameraOrthoWidth

Camera Orthographic width to use with in orthographic mode.

CameraAspectRatio float32 CameraAspectRatio

Custom aspect ratio to use rather than using the width & height to automatically calculate.

CameraViewportRotation FRotator CameraViewportRotation

Per viewport camera rotation..

## TEXTURE

### FramesPerDimension

```
FIntPoint FramesPerDimension
```

Number of frames in each dimension.

### OutputTextures

```
TArray<FNiagaraBakerTextureSettings> OutputTextures
```

List of output textures we will generated.

---

## TIMELINE

### FramesPerSecond

```
int FramesPerSecond
```

The frame rate to run the simulation at during capturing.  This is only used for the preview view and calculating the number of ticks to execute as we capture the generated texture.

### DurationSeconds

```
float32 DurationSeconds
```

Duration in seconds to take the capture over.

### StartSeconds

```
float32 StartSeconds
```

This is the start time of the simultion where we being the capture.  I.e. 2.0 would mean the simulation warms up by 2 seconds before we begin capturing.

---

## FUNCTIONS

### SetbUseCameraAspectRatio

```
void SetbUseCameraAspectRatio(bool Value)
```

SetbRenderComponentOnly

### void SetbRenderComponentOnly

```
void SetbRenderComponentOnly(bool Value)
```

SetbPreviewLooping

### void SetbPreviewLooping

```
void SetbPreviewLooping(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraBakerSettings::StaticClass()
```
