# USceneCaptureComponent2D

**Visibility:** public

## Inheritance

USceneCaptureComponent → USceneCaptureComponent2D

## Description

Used to capture a 'snapshot' of the scene from a single plane and feed it to a render target.

## POSTPROCESSVOLUME

### PostProcessBlendWeight

```
float32 PostProcessBlendWeight
```

Range (0.0, 1.0) where 0 indicates no effect, 1 indicates full effect.

### PostProcessSettings

```
FPostProcessSettings PostProcessSettings PROJECTION OrthoWidth float32 OrthoWidth
```

The desired width (in world units) of the orthographic view (ignored in Perspective mode)

### FOVAngle

```
float32 FOVAngle
```

Camera field of view (in degrees).

### bUseFauxOrthoViewPos

```
bool bUseFauxOrthoViewPos
```

In case of orthographic camera, generate a fake view position that has a non-zero W component. The view position will be derived based on the view matrix.

### NumXTiles

```
int NumXTiles
```

Number of X tiles to render. Ignored in Perspective mode, works only in Orthographic mode

### NumYTiles

```
int NumYTiles
```

Number of Y tiles to render. Ignored in Perspective mode, works only in Orthographic mode

### CustomNearClippingPlane

```
float32 CustomNearClippingPlane
```

Set bOverride_CustomNearClippingPlane to true if you want to use a custom clipping plane instead of GNearClippingPlane.

### bUseCustomProjectionMatrix

```
bool bUseCustomProjectionMatrix
```

Whether a custom projection matrix will be used during rendering. Use with caution. Does not currently affect culling

### CustomProjectionMatrix

```
FMatrix CustomProjectionMatrix
```

The custom projection matrix to use

### ProjectionType

```
ECameraProjectionMode ProjectionType bEnableOrthographicTiling bool bEnableOrthographicTiling Render the scene in n frames(i.e TileCount)
```

Ignored in Perspective mode, works only in Orthographic mode when CaptureSource uses SceneColor (not FinalColor) If CaptureSource uses FinalColor, tiling will be ignored and a Warning message will be logged

---

## SCENECAPTURE

### TextureTarget

```
UTextureRenderTarget2D TextureTarget
```

Output render target of the scene capture that can be read in materials.

### bEnableClipPlane

```
bool bEnableClipPlane
```

Enables a clip plane while rendering the scene capture which is useful for portals.  The global clip plane must be enabled in the renderer project settings for this to work.

### ClipPlaneBase

```
FVector ClipPlaneBase
```

Base position for the clip plane, can be any position on the plane.

### ClipPlaneNormal

```
FVector ClipPlaneNormal
```

Normal for the plane.

### bDisableFlipCopyGLES

```
bool bDisableFlipCopyGLES
```

Scene captures render an extra flip pass for LDR color on GLES so that the final output is oriented correctly.  This check disabled the extra flip pass, improving performance, but causes the capture to be flipped vertically.  (Does not affect scene captures on other non-GLES renderers or with non-LDR output)

### bCameraCutThisFrame

```
bool bCameraCutThisFrame
```

True if we did a camera cut this frame. Automatically reset to false at every capture.  This flag affects various things in the renderer (such as whether to use the occlusion queries from last frame, and motion blur).  Similar to UPlayerCameraManager::bGameCameraCutThisFrame.

### bConsiderUnrenderedOpaquePixelAsFullyTranslucent

```
bool bConsiderUnrenderedOpaquePixelAsFullyTranslucent
```

Treat unrendered opaque pixels as fully translucent. This is important for effects such as exponential weight fog, so it does not get applied on unrendered opaque pixels.

### CompositeMode

```
ESceneCaptureCompositeMode CompositeMode
```

When enabled, the scene capture will composite into the render target instead of overwriting its contents.

---

## RENDERING \| SCENECAPTURE

### CaptureScene

```
void CaptureScene()
```

Render the scene to the texture target immediately.  This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.

---

## FUNCTIONS

### GetbCameraCutThisFrame

```
bool GetbCameraCutThisFrame()const
```

SetbCameraCutThisFrame

### void SetbCameraCutThisFrame

```
void SetbCameraCutThisFrame(bool Value)
```

GetbConsiderUnrenderedOpaquePixelAsFullyTranslucent

### bool GetbConsiderUnrenderedOpaquePixelAsFullyTranslucent

```
bool GetbConsiderUnrenderedOpaquePixelAsFullyTranslucent()const SetbOverride_CustomNearClippingPlane
```

void SetbOverride_CustomNearClippingPlane(

### bool 	Value

```
bool 	Value 	)
```

SetbConsiderUnrenderedOpaquePixelAsFullyTranslucent

### void SetbConsiderUnrenderedOpaquePixelAsFullyTranslucent

```
void SetbConsiderUnrenderedOpaquePixelAsFullyTranslucent(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static USceneCaptureComponent2D USceneCaptureComponent2D::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USceneCaptureComponent2D USceneCaptureComponent2D::GetOrCreate

```
static USceneCaptureComponent2D USceneCaptureComponent2D::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static USceneCaptureComponent2D USceneCaptureComponent2D::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USceneCaptureComponent2D::StaticClass

```
static UClass USceneCaptureComponent2D::StaticClass()
```
