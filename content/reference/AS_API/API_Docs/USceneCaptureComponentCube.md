# USceneCaptureComponentCube

**Visibility:** public

## Inheritance

USceneCaptureComponent → USceneCaptureComponentCube

## Description

Used to capture a 'snapshot' of the scene from a 6 planes and feed it to a render target.

## SCENECAPTURE

### bCaptureRotation

```
bool bCaptureRotation
```

Preserve the rotation of the actor when updating the capture. The default behavior is to capture the cube aligned to the world axis system.

### TextureTarget

```
UTextureRenderTargetCube TextureTarget
```

Temporary render target that can be used by the editor.

SCENECAPTURE|OMNI-DIRECTIONAL STEREO CAPTURE

### TextureTargetRight

```
UTextureRenderTargetCube TextureTargetRight
```
### TextureTargetODS

```
UTextureRenderTarget2D TextureTargetODS
```

---

## IPD

### IPD

```
float32 IPD
```
### TextureTargetLeft

```
UTextureRenderTargetCube TextureTargetLeft
```

Omni-directional Stereo Capture

### If vr.ODSCapture is enabled and both left, right and ODS render targets are set, we'll ignore the texture target and instead do an omni-directional stereo capture.  Warped cube maps will be rendered into the left and right texture targets using the IPD property for stereo offset. We will then reconstruct a stereo lat-long with the left eye stacked on top of the right eye in the ODS target.  See: https://​developers​.google​.com​/vr​/jump​/rendering-ods-content​.pdf

```
If vr.ODSCapture is enabled and both left, right and ODS render targets are set, we'll ignore the texture target and instead do an omni-directional stereo capture.  Warped cube maps will be rendered into the left and right texture targets using the IPD property for stereo offset. We will then reconstruct a stereo lat-long with the left eye stacked on top of the right eye in the ODS target.  See: https://​developers​.google​.com​/vr​/jump​/rendering-ods-content​.pdf
```

---

## RENDERING \| SCENECAPTURE

### CaptureScene

```
void CaptureScene()
```

Render the scene to the texture target immediately.  This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static USceneCaptureComponentCube USceneCaptureComponentCube::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USceneCaptureComponentCube USceneCaptureComponentCube::GetOrCreate

```
static USceneCaptureComponentCube USceneCaptureComponentCube::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static USceneCaptureComponentCube USceneCaptureComponentCube::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USceneCaptureComponentCube::StaticClass

```
static UClass USceneCaptureComponentCube::StaticClass()
```
