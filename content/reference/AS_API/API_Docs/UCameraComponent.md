# UCameraComponent

**Visibility:** public

## Inheritance

USceneComponent → UCameraComponent → UCineCameraComponent

## Description

Represents a camera viewpoint and settings, such as projection type, field of view, and post-process overrides.  The default behavior for an actor used as the camera view target is to look for an attached camera component and use its location, rotation, and settings.

## CAMERA

### CameraMesh

```
UStaticMesh CameraMesh
```
### bDrawFrustumAllowed

```
bool bDrawFrustumAllowed
```

The Frustum visibility flag for draw frustum component initialization

### bCameraMeshHiddenInGame

```
bool bCameraMeshHiddenInGame
```

If the camera mesh is visible in game. Only relevant when running editor builds.

---

## CAMERAOPTIONS

### bUsePawnControlRotation

```
bool bUsePawnControlRotation
```

If this camera component is placed on a pawn, should it use the view/control rotation of the pawn where possible?  @see APawn::GetViewRotation()

### bLockToHmd

```
bool bLockToHmd
```

True if the camera's orientation and position should be locked to the HMD

### bConstrainAspectRatio

```
bool bConstrainAspectRatio
```

If bConstrainAspectRatio is true, black bars will be added if the destination view has a different aspect ratio than this camera requested.

### bUseFieldOfViewForLOD

```
bool bUseFieldOfViewForLOD
```

If true, account for the field of view angle when computing which level of detail to use for meshes.

---

## CAMERASETTINGS

### FieldOfView

```
float32 FieldOfView
```

The horizontal field of view (in degrees) in perspective mode (ignored in Orthographic mode)

### If the aspect ratio axis constraint

```
If the aspect ratio axis constraint(from ULocalPlayer, ALevelSequenceActor, etc.)is set to maintain vertical FOV, the AspectRatio property will be used to convert this property's value to a vertical FOV.
```

OrthoFarClipPlane

### float32 OrthoFarClipPlane

```
float32 OrthoFarClipPlane
```

The far plane distance of the orthographic view (in world units)

### OrthoWidth

```
float32 OrthoWidth
```

The desired width (in world units) of the orthographic view (ignored in Perspective mode)

### OrthoNearClipPlane

```
float32 OrthoNearClipPlane
```

The near plane distance of the orthographic view (in world units)

### AspectRatio

```
float32 AspectRatio
```

Aspect Ratio (Width/Height)

### ProjectionMode

```
ECameraProjectionMode ProjectionMode
```

The type of camera

---

## POSTPROCESS

### PostProcessBlendWeight

```
float32 PostProcessBlendWeight
```

Indicates if PostProcessSettings should be used when using this Camera to view through.

### PostProcessSettings

```
FPostProcessSettings PostProcessSettings
```

Post process settings to use for this camera. Don't forget to check the properties you want to override

---

## CAMERA

### SetPostProcessBlendWeight

```
void SetPostProcessBlendWeight(float32 InPostProcessBlendWeight)
```

GetCameraView

### void GetCameraView

```
void GetCameraView(float32 DeltaTime, FMinimalViewInfo& DesiredView)
```

Returns camera's Point of View.  Called by Camera class. Subclass and postprocess to add any effects.

### SetAspectRatio

```
void SetAspectRatio(float32 InAspectRatio)
```

SetConstraintAspectRatio

### void SetConstraintAspectRatio

```
void SetConstraintAspectRatio(bool bInConstrainAspectRatio)
```

SetFieldOfView

### void SetFieldOfView

```
void SetFieldOfView(float32 InFieldOfView)
```

SetOrthoFarClipPlane

### void SetOrthoFarClipPlane

```
void SetOrthoFarClipPlane(float32 InOrthoFarClipPlane)
```

SetOrthoNearClipPlane

### void SetOrthoNearClipPlane

```
void SetOrthoNearClipPlane(float32 InOrthoNearClipPlane)
```

SetOrthoWidth

### void SetOrthoWidth

```
void SetOrthoWidth(float32 InOrthoWidth)
```

SetProjectionMode

### void SetProjectionMode

```
void SetProjectionMode(ECameraProjectionMode InProjectionMode)
```

SetUseFieldOfViewForLOD

### void SetUseFieldOfViewForLOD

```
void SetUseFieldOfViewForLOD(bool bInUseFieldOfViewForLOD)
```

---

## FUNCTIONS

### GetFieldOfView

```
const float32& GetFieldOfView()const
```

GetOrthoWidth

### const float32& GetOrthoWidth

```
const float32& GetOrthoWidth()const GetOrthoNearClipPlane
```

const float32& GetOrthoNearClipPlane() const

### GetOrthoFarClipPlane

```
const float32& GetOrthoFarClipPlane()const
```

GetAspectRatio

### const float32& GetAspectRatio

```
const float32& GetAspectRatio()const OnCameraMeshHiddenChanged
```

void OnCameraMeshHiddenChanged()

### Internal function for updating the camera mesh visibility in PIE

```
Internal function for updating the camera mesh visibility in PIE
```

GetbConstrainAspectRatio

### bool GetbConstrainAspectRatio

```
bool GetbConstrainAspectRatio()const SetbConstrainAspectRatio
```

void SetbConstrainAspectRatio(

### bool 	Value

```
bool 	Value 	)
```

GetbUseFieldOfViewForLOD

### bool GetbUseFieldOfViewForLOD

```
bool GetbUseFieldOfViewForLOD()const SetbUseFieldOfViewForLOD
```

void SetbUseFieldOfViewForLOD(

### bool 	Value

```
bool 	Value 	)
```

GetbCameraMeshHiddenInGame

### bool GetbCameraMeshHiddenInGame

```
bool GetbCameraMeshHiddenInGame()const SetbCameraMeshHiddenInGame
```

void SetbCameraMeshHiddenInGame(

### bool 	Value

```
bool 	Value 	)
```

GetbLockToHmd

### bool GetbLockToHmd

```
bool GetbLockToHmd()const SetbLockToHmd
```

void SetbLockToHmd(

### bool 	Value

```
bool 	Value 	)
```

GetbUsePawnControlRotation

### bool GetbUsePawnControlRotation

```
bool GetbUsePawnControlRotation()const SetbUsePawnControlRotation
```

void SetbUsePawnControlRotation(

### bool 	Value

```
bool 	Value 	)
```

GetProjectionMode

### const ECameraProjectionMode& GetProjectionMode

```
const ECameraProjectionMode& GetProjectionMode()const GetPostProcessBlendWeight
```

const float32& GetPostProcessBlendWeight() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UCameraComponent UCameraComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UCameraComponent UCameraComponent::GetOrCreate

```
static UCameraComponent UCameraComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UCameraComponent UCameraComponent::Create

```
static UCameraComponent UCameraComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UCameraComponent::StaticClass

```
static UClass UCameraComponent::StaticClass()
```
