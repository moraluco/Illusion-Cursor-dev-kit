# APlayerCameraManager

**Visibility:** public

## Inheritance

AActor → APlayerCameraManager

## Description

A PlayerCameraManager is responsible for managing the camera for a particular player. It defines the final view properties used by other systems (e.g. the renderer), meaning you can think of it as your virtual eyeball in the world. It can compute the final camera properties directly, or it can arbitrate/blend between other objects or actors that influence the camera (e.g. blending from one CameraActor to another).

The PlayerCameraManagers primary external responsibility is to reliably respond to various Get*() functions, such as GetCameraViewPoint. Most everything else is implementation detail and overrideable by user projects.

By default, a PlayerCameraManager maintains a "view target", which is the primary actor the camera is associated with. It can also apply various "post" effects to the final view state, such as camera animations, shakes, post-process effects or special effects such as dirt on the lens.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Gameplay​/Framework​/Camera​/

## CAMERA

### CameraLocation

```
const FVector CameraLocation
```

Returns camera's current location.

FOVAngle

### FOVAngle

```
const float32 FOVAngle
```

Returns the camera's current full FOV angle, in degrees.

### CameraRotation

```
const FRotator CameraRotation
```

Returns camera's current rotation.

---

## CAMERAMODIFIER

### DefaultModifiers

```
TArray<TSubclassOf<UCameraModifier>> DefaultModifiers
```

List of modifiers to create by default for this camera

---

## DEBUG

### FreeCamDistance

```
float32 FreeCamDistance
```

Distance to place free camera from view target (used in certain CameraStyles)

### FreeCamOffset

```
FVector FreeCamOffset
```

Offset to Z free camera position (used in certain CameraStyles)

### ViewTargetOffset

```
FVector ViewTargetOffset
```

Offset to view target (used in certain CameraStyles)

---

## GAME \| PLAYER

### OwningPlayerController

```
const APlayerController OwningPlayerController
```

Returns the PlayerController that owns this camera.

---

## PLAYERCAMERAMANAGER

### TransformComponent

```
USceneComponent TransformComponent
```

Dummy component we can use to attach things to the camera.

### DefaultOrthoWidth

```
float32 DefaultOrthoWidth
```

The default desired width (in world units) of the orthographic view (ignored in Perspective mode)

### ViewPitchMin

```
float32 ViewPitchMin
```

Minimum view pitch, in degrees.

### ViewPitchMax

```
float32 ViewPitchMax
```

Maximum view pitch, in degrees.

### DefaultAspectRatio

```
float32 DefaultAspectRatio
```

Default aspect ratio. Most of the time the value from a camera component will be used instead.

### ViewYawMax

```
float32 ViewYawMax
```

Maximum view yaw, in degrees.

### ViewRollMin

```
float32 ViewRollMin
```

Minimum view roll, in degrees.

### ViewRollMax

```
float32 ViewRollMax
```

Maximum view roll, in degrees.

### DefaultFOV

```
float32 DefaultFOV
```

FOV to use by default.

### ViewYawMin

```
float32 ViewYawMin
```

Minimum view yaw, in degrees.

### bUseClientSideCameraUpdates

```
bool bUseClientSideCameraUpdates
```

True if server will use camera positions replicated from the client instead of calculating them locally.

### bIsOrthographic

```
bool bIsOrthographic
```

True when this camera should use an orthographic perspective instead of FOV

### bDefaultConstrainAspectRatio

```
bool bDefaultConstrainAspectRatio
```

True if black bars should be added if the destination view has a different aspect ratio (only used when a view target doesn't specify whether or not to constrain the aspect ratio; most of the time the value from a camera component is used instead)

### bClientSimulatingViewTarget

```
bool bClientSimulatingViewTarget
```

True if clients are handling setting their own viewtarget and the server should not replicate it.

### bGameCameraCutThisFrame

```
const bool bGameCameraCutThisFrame
```

True if we did a camera cut this frame. Automatically reset to false every frame.  This flag affects various things in the renderer (such as whether to use the occlusion queries from last frame, and motion blur).

---

## VARIABLES

### OnAudioFadeChangeEvent

```
FOnAudioFadeChangeSignature OnAudioFadeChangeEvent
```

If bound, broadcast on fade start (with fade time) instead of manually altering audio device's master volume directly

### AnimInstPool

```
UCameraAnimInst AnimInstPool
```

Internal pool of camera anim instance objects available for playing camera animations. Defines the max number of camera anims that can play simultaneously.

---

## CAMERA

### SetGameCameraCutThisFrame

```
void SetGameCameraCutThisFrame()
```

Sets the bGameCameraCutThisFrame flag to true (indicating we did a camera cut this frame; useful for game code to call, e.g., when performing a teleport that should be seamless)

### ClearCameraLensEffects

```
void ClearCameraLensEffects()
```

Removes all camera lens effects.

### GetFOVAngle

```
float32 GetFOVAngle()const
```

Returns the camera's current full FOV angle, in degrees.

### GetCameraLocation

```
FVector GetCameraLocation()const
```

Returns camera's current location.

### GetCameraRotation

```
FRotator GetCameraRotation()const
```

Returns camera's current rotation.

### CAMERA ANIMATION

```
CAMERA ANIMATION StopAllCameraAnims void StopAllCameraAnims(bool bImmediate = false)
```

Stop playing all CameraAnims on this CameraManager.

**Parameters**

bImmediate
bool

True to stop it right now and ignore blend out, false to let it blend out as indicated.

StopAllInstancesOfCameraAnim
void StopAllInstancesOfCameraAnim(
UCameraAnim 	Anim,
bool 	bImmediate	 = 	false
	)

Stop playing all instances of the indicated CameraAnim.

**Parameters**

bImmediate
bool

True to stop it right now and ignore blend out, false to let it blend out as indicated.

PlayCameraAnim
UCameraAnimInst PlayCameraAnim(

UCameraAnim 	Anim,
float32 	Rate	 = 	1.000000,
float32 	Scale	 = 	1.000000,
float32 	BlendInTime	 = 	0.000000,
float32 	BlendOutTime	 = 	0.000000,
bool 	bLoop	 = 	false,
bool 	bRandomStartTime	 = 	false,
float32 	Duration	 = 	0.000000,
ECameraShakePlaySpace 	PlaySpace	 = 	ECameraShakePlaySpace :: CameraLocal,
FRotator 	UserPlaySpaceRot	 = 	FRotator ( )

)

Play the indicated CameraAnim on this camera.

**Parameters**

Anim
UCameraAnim

The animation that should play on this instance.

Rate
float32

How fast to play the animation. 1.0 is normal.

Scale
float32

How "intense" to play the animation. 1.0 is normal.

BlendInTime
float32

Time to linearly ramp in.

BlendOutTime
float32

Time to linearly ramp out.

bLoop
bool

True to loop the animation if it hits the end.

bRandomStartTime
bool

Whether or not to choose a random time to start playing. Useful with bLoop=true and a duration to randomize things like shakes.

Duration
float32

Optional total playtime for this animation, including blends. 0 means to use animations natural duration, or infinite if looping.

PlaySpace
ECameraShakePlaySpace

Which space to play the animation in.

UserPlaySpaceRot
FRotator

Custom play space, used when PlaySpace is UserDefined.

**Returns**

The CameraAnim instance, which can be stored to manipulate/stop the anim after the fact.

StopCameraAnimInst
void StopCameraAnimInst(
UCameraAnimInst 	AnimInst,
bool 	bImmediate	 = 	false
	)

Stops the given CameraAnimInst from playing.  The given pointer should be considered invalid after this.

**Parameters**

bImmediate
bool

True to stop it right now and ignore blend out, false to let it blend out as indicated.

CAMERA FADES
SetManualCameraFade
void SetManualCameraFade(
float32 	InFadeAmount,
FLinearColor 	Color,
bool 	bInFadeAudio
	)

Turns on camera fading at the given opacity. Does not auto-animate, allowing user to animate themselves.  Call StopCameraFade to turn fading back off.

StopCameraFade
void StopCameraFade()

Stops camera fading.

StartCameraFade
void StartCameraFade(
float32 	FromAlpha,
float32 	ToAlpha,
float32 	Duration,
FLinearColor 	Color,
bool 	bShouldFadeAudio	 = 	false,
bool 	bHoldWhenFinished	 = 	false
	)

Does a camera fade to/from a solid color.  Animates automatically.

**Parameters**

FromAlpha
float32

Alpha at which to begin the fade. Range [0..1], where 0 is fully transparent and 1 is fully opaque solid color.

ToAlpha
float32

Alpha at which to finish the fade.

Duration
float32

How long the fade should take, in seconds.

Color
FLinearColor

Color to fade to/from.

bShouldFadeAudio
bool

True to fade audio volume along with the alpha of the solid color.

bHoldWhenFinished
bool

True for fade to hold at the ToAlpha until explicitly stopped (e.g. with StopCameraFade)

CAMERA SHAKES
StopAllCameraShakesFromSource
void StopAllCameraShakesFromSource(
UCameraShakeSourceComponent 	SourceComponent,
bool 	bImmediately	 = 	true
	)

Stops playing all shakes originating from the given source.

StopAllInstancesOfCameraShakeFromSource
void StopAllInstancesOfCameraShakeFromSource(

TSubclassOf<UCameraShakeBase> 	Shake,
UCameraShakeSourceComponent 	SourceComponent,
bool 	bImmediately	 = 	true

)

Stops playing all shakes of the given class originating from the given source.

StopCameraShake
void StopCameraShake(
UCameraShakeBase 	ShakeInstance,
bool 	bImmediately	 = 	true
	)

Immediately stops the given shake instance and invalidates it.

StopAllCameraShakes
void StopAllCameraShakes(
bool 	bImmediately	 = 	true
	)

Stops all active camera shakes on this camera.

StopAllInstancesOfCameraShake
void StopAllInstancesOfCameraShake(
TSubclassOf<UCameraShakeBase> 	Shake,
bool 	bImmediately	 = 	true
	)

Stops playing all shakes of the given class.

StartCameraShakeFromSource
UCameraShakeBase StartCameraShakeFromSource(

TSubclassOf<UCameraShakeBase> 	ShakeClass,
UCameraShakeSourceComponent 	SourceComponent,
float32 	Scale	 = 	1.000000,
ECameraShakePlaySpace 	PlaySpace	 = 	ECameraShakePlaySpace :: CameraLocal,
FRotator 	UserPlaySpaceRot	 = 	FRotator ( )

)

Plays a camera shake on this camera.

**Parameters**

SourceComponent
UCameraShakeSourceComponent

The source from which the camera shake originates.

Scale
float32

Applies an additional constant scale on top of the dynamic scale computed with the distance to the source

PlaySpace
ECameraShakePlaySpace

Which coordinate system to play the shake in (affects oscillations and camera anims)

UserPlaySpaceRot
FRotator

Coordinate system to play shake when PlaySpace == CAPS_UserDefined.

StartCameraShake
UCameraShakeBase StartCameraShake(

TSubclassOf<UCameraShakeBase> 	ShakeClass,
float32 	Scale	 = 	1.000000,
ECameraShakePlaySpace 	PlaySpace	 = 	ECameraShakePlaySpace :: CameraLocal,
FRotator 	UserPlaySpaceRot	 = 	FRotator ( )

)

Plays a camera shake on this camera.

**Parameters**

Scale
float32

Scalar defining how "intense" to play the shake. 1.0 is normal (as authored).

PlaySpace
ECameraShakePlaySpace

Which coordinate system to play the shake in (affects oscillations and camera anims)

UserPlaySpaceRot
FRotator

Coordinate system to play shake when PlaySpace == CAPS_UserDefined.

---

## GAME \| PLAYER

### RemoveCameraModifier

```
bool RemoveCameraModifier(UCameraModifier ModifierToRemove)
```

Removes the given camera modifier from this camera (if it's on the camera in the first place) and discards it.

**Returns**

True if successfully removed, false otherwise.

AddNewCameraModifier
UCameraModifier AddNewCameraModifier(
TSubclassOf<UCameraModifier> 	ModifierClass
	)

Creates and initializes a new camera modifier of the specified class.

**Parameters**

ModifierClass
TSubclassOf<UCameraModifier>

The class of camera modifier to create.

**Returns**

Returns the newly created camera modifier.

FindCameraModifierByClass
UCameraModifier FindCameraModifierByClass(
TSubclassOf<UCameraModifier> 	ModifierClass
	)

Returns camera modifier for this camera of the given class, if it exists.  Exact class match only. If there are multiple modifiers of the same class, the first one is returned.

GetOwningPlayerController
APlayerController GetOwningPlayerController() const

Returns the PlayerController that owns this camera.

---

## PHOTOGRAPHY

### PhotographyCameraModify

```
void PhotographyCameraModify(const FVector NewCameraLocation, const FVector PreviousCameraLocation, const FVector OriginalCameraLocation, FVector& ResultCameraLocation)
```

Implementable blueprint hook to allow a PlayerCameraManager subclass to constrain or otherwise modify the camera during free-camera photography.  For example, a blueprint may wish to limit the distance from the camera's original point, or forbid the camera from passing through walls.  NewCameraLocation contains the proposed new camera location.  PreviousCameraLocation contains the camera location in the previous frame.  OriginalCameraLocation contains the camera location before the game was put into photography mode.  Return ResultCameraLocation as modified according to your constraints.

### OnPhotographySessionStart

```
void OnPhotographySessionStart()
```

Event triggered upon entering Photography mode (before pausing, if r.Photography.AutoPause is 1).

### OnPhotographySessionEnd

```
void OnPhotographySessionEnd()
```

Event triggered upon leaving Photography mode (after unpausing, if r.Photography.AutoPause is 1).

### OnPhotographyMultiPartCaptureStart

```
void OnPhotographyMultiPartCaptureStart()
```

Event triggered upon the start of a multi-part photograph capture (i.e. a stereoscopic or 360-degree shot).  This is an ideal time to turn off rendering effects that tile badly (UI, subtitles, vignette, very aggressive bloom, etc; most of these are automatically disabled when r.Photography.AutoPostprocess is 1).

### OnPhotographyMultiPartCaptureEnd

```
void OnPhotographyMultiPartCaptureEnd()
```

Event triggered upon the end of a multi-part photograph capture, when manual free-roaming photographic camera control is about to be returned to the user.  Here you may re-enable whatever was turned off within OnPhotographyMultiPartCaptureStart.

---

## FUNCTIONS

### GetbDefaultConstrainAspectRatio

```
bool GetbDefaultConstrainAspectRatio()const
```

GetbIsOrthographic

### bool GetbIsOrthographic

```
bool GetbIsOrthographic()const SetbIsOrthographic
```

void SetbIsOrthographic(

### bool 	Value

```
bool 	Value 	)
```

BlueprintUpdateCamera

### bool BlueprintUpdateCamera

```
bool BlueprintUpdateCamera(AActor CameraTarget, FVector& NewCameraLocation, FRotator& NewCameraRotation, float32& NewCameraFOV)
```

Blueprint hook to allow blueprints to override existing camera behavior or implement custom cameras.  If this function returns true, we will use the given returned values and skip further calculations to determine final camera POV.

### SetbDefaultConstrainAspectRatio

```
void SetbDefaultConstrainAspectRatio(bool Value)
```

GetbClientSimulatingViewTarget

### bool GetbClientSimulatingViewTarget

```
bool GetbClientSimulatingViewTarget()const SetbClientSimulatingViewTarget
```

void SetbClientSimulatingViewTarget(

### bool 	Value

```
bool 	Value 	)
```

GetbUseClientSideCameraUpdates

### bool GetbUseClientSideCameraUpdates

```
bool GetbUseClientSideCameraUpdates()const SetbUseClientSideCameraUpdates
```

void SetbUseClientSideCameraUpdates(

### bool 	Value

```
bool 	Value 	)
```

GetbGameCameraCutThisFrame

### bool GetbGameCameraCutThisFrame

```
bool GetbGameCameraCutThisFrame()const STATIC FUNCTIONS
```

Spawn

### static APlayerCameraManager APlayerCameraManager::Spawn

```
static APlayerCameraManager APlayerCameraManager::Spawn(
```

FVector 	Location	 = 	FVector :: ZeroVector,

### FRotator 	Rotation	 = 	FRotator :: ZeroRotator,

```
FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass APlayerCameraManager::StaticClass()
```
