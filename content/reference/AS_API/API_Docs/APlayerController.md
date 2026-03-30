# APlayerController

**Visibility:** public

## Inheritance

AController → APlayerController → AARSharedWorldPlayerController → ADebugCameraController

## Description

PlayerControllers are used by human players to control Pawns.

ControlRotation (accessed via GetControlRotation()), determines the aiming orientation of the controlled Pawn.

In networked games, PlayerControllers exist on the server for every player-controlled pawn, and also on the controlling client's machine. They do NOT exist on a client's machine for pawns controlled by remote players elsewhere on the network.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Gameplay​/Framework​/Controller​/PlayerController​/

## Members

### MANAGER

```
CHEAT MANAGER
```
### CheatClass

```
TSubclassOf<UCheatManager> CheatClass
```

Class of my CheatManager.  @see CheatManager for more information about when it will be instantiated.

### CheatManager

```
UCheatManager CheatManager
```

Object that manages "cheat" commands.

By default: - In Shipping configurations, the manager is always disabled because UE_WITH_CHEAT_MANAGER is 0 - When playing in the editor, cheats are always enabled - In other cases, cheats are enabled by default in single player games but can be forced on with the EnableCheats console command

This behavior can be changed either by overriding APlayerController::EnableCheats or AGameModeBase::AllowCheats.

---

## GAME \| FEEDBACK

### bForceFeedbackEnabled

```
bool bForceFeedbackEnabled
```

---

## HUD

---

## HUD

### HUD

```
const AHUD HUD
```

Gets the HUD currently being used by this player controller

---

## MOUSEINTERFACE

### HitResultTraceDistance

```
float32 HitResultTraceDistance
```

Distance to trace when computing click events

### bEnableClickEvents

```
bool bEnableClickEvents
```

Whether actor/component click events should be generated.

### ClickEventKeys

```
TArray<FKey> ClickEventKeys
```

List of keys that will cause click events to be forwarded, default to left click

### DefaultMouseCursor

```
EMouseCursor DefaultMouseCursor
```

Type of mouse cursor to show by default

### CurrentMouseCursor

```
EMouseCursor CurrentMouseCursor
```

Currently visible mouse cursor

### DefaultClickTraceChannel

```
ECollisionChannel DefaultClickTraceChannel
```

Default trace channel used for determining what world object was clicked on.

### CurrentClickTraceChannel

```
ECollisionChannel CurrentClickTraceChannel
```

Trace channel currently being used for determining what world object was clicked on.

### bEnableTouchEvents

```
bool bEnableTouchEvents
```

Whether actor/component touch events should be generated.

### bShowMouseCursor

```
bool bShowMouseCursor
```

Whether the mouse cursor should be displayed.

### bEnableMouseOverEvents

```
bool bEnableMouseOverEvents
```

Whether actor/component mouse over events should be generated.

### bEnableTouchOverEvents

```
bool bEnableTouchOverEvents
```

Whether actor/component touch over events should be generated.

---

## PAWN

### FocalLocation

```
const FVector FocalLocation
```

Returns the location the PlayerController is focused on.  If there is a possessed Pawn, returns the Pawn's location.  If there is a spectator Pawn, returns that Pawn's location.  Otherwise, returns the PlayerController's spawn location (usually the last known Pawn location after it has died).

---

## PLAYERCONTROLLER

### PlayerCameraManagerClass

```
TSubclassOf<APlayerCameraManager> PlayerCameraManagerClass
```

PlayerCamera class should be set for each game, otherwise Engine.PlayerCameraManager is used

### PlayerCameraManager

```
APlayerCameraManager PlayerCameraManager
```

Camera manager associated with this Player Controller.

### SmoothTargetViewRotationSpeed

```
float32 SmoothTargetViewRotationSpeed
```

Interp speed for blending remote view rotation for smoother client updates

bPlayerIsWaiting

### bPlayerIsWaiting

```
const bool bPlayerIsWaiting
```

True if PlayerController is currently waiting for the match to start or to respawn. Only valid in Spectating state.

### bAutoManageActiveCameraTarget

```
bool bAutoManageActiveCameraTarget
```

True to allow this player controller to manage the camera target for you, typically by using the possessed pawn as the camera target. Set to false if you want to manually control the camera target.

### DeprecatedInputPitchScale

```
float32 DeprecatedInputPitchScale
```
### DeprecatedInputRollScale

```
float32 DeprecatedInputRollScale
```
### DeprecatedInputYawScale

```
float32 DeprecatedInputYawScale
```
### bShouldPerformFullTickWhenPaused

```
bool bShouldPerformFullTickWhenPaused
```

Whether we fully tick when the game is paused, if our tick function is allowed to do so. If false, we do a minimal update during the tick.

---

## WORLDPARTITION

### bStreamingSourceShouldActivate

```
bool bStreamingSourceShouldActivate
```

Whether the PlayerController streaming source should activate cells after loading.

### bEnableStreamingSource

```
bool bEnableStreamingSource
```

Whether the PlayerController should be used as a World Partiton streaming source.

### bStreamingSourceShouldBlockOnSlowStreaming

```
bool bStreamingSourceShouldBlockOnSlowStreaming
```

Whether the PlayerController streaming source should block on slow streaming.

---

## VARIABLES

### LocalPlayer

```
const ULocalPlayer LocalPlayer SpectatorPawn const ASpectatorPawn SpectatorPawn
```

The pawn used when spectating (nullptr if not spectating).

### PlayerInput

```
const UPlayerInput PlayerInput
```

Object that manages player input.

---

## GAME \| AUDIO

### SetAudioListenerAttenuationOverride

```
void SetAudioListenerAttenuationOverride(USceneComponent AttachToComponent, FVector AttenuationLocationOVerride)
```

SetAudioListenerOverride

### void SetAudioListenerOverride

```
void SetAudioListenerOverride(USceneComponent AttachToComponent, FVector Location, FRotator Rotation)
```

Used to override the default positioning of the audio listener

**Parameters**

AttachToComponent
USceneComponent

Optional component to attach the audio listener to

Location
FVector

Depending on whether Component is attached this is either an offset from its location or an absolute position

Rotation
FRotator

Depending on whether Component is attached this is either an offset from its rotation or an absolute rotation

ClearAudioListenerOverride
void ClearAudioListenerOverride()

Clear any overrides that have been applied to audio listener

ClearAudioListenerAttenuationOverride
void ClearAudioListenerAttenuationOverride()

---

## GAME \| CINEMATIC

### SetCinematicMode

```
void SetCinematicMode(bool bInCinematicMode, bool bHidePlayer, bool bAffectsHUD, bool bAffectsMovement, bool bAffectsTurning)
```

Server/SP only function for changing whether the player is in cinematic mode.  Updates values of various state variables, then replicates the call to the client to sync the current cinematic mode.

**Parameters**

bInCinematicMode
bool

specify true if the player is entering cinematic mode; false if the player is leaving cinematic mode.

bHidePlayer
bool

specify true to hide the player's pawn (only relevant if bInCinematicMode is true)

bAffectsHUD
bool

specify true if we should show/hide the HUD to match the value of bCinematicMode

bAffectsMovement
bool

specify true to disable movement in cinematic mode, enable it when leaving

bAffectsTurning
bool

specify true to disable turning in cinematic mode or enable it when leaving

---

## GAME \| FEEDBACK

### StopHapticEffect

```
void StopHapticEffect(EControllerHand Hand)
```

Stops a playing haptic feedback curve

**Parameters**

Hand
EControllerHand

Which hand to stop the effect for

ResetControllerLightColor
void ResetControllerLightColor()

Resets the light color of the player's controller to default

ClientPlayCameraAnim
void ClientPlayCameraAnim(

UCameraAnim 	AnimToPlay,
float32 	Scale	 = 	1.000000,
float32 	Rate	 = 	1.000000,
float32 	BlendInTime	 = 	0.000000,
float32 	BlendOutTime	 = 	0.000000,
bool 	bLoop	 = 	false,
bool 	bRandomStartTime	 = 	false,
ECameraShakePlaySpace 	Space	 = 	ECameraShakePlaySpace :: CameraLocal,
FRotator 	CustomPlaySpace	 = 	FRotator ( )

)

Play the indicated CameraAnim on this camera.

**Parameters**

AnimToPlay
UCameraAnim

Camera animation to play

Scale
float32

"Intensity" scalar.  This is the scale at which the anim was first played.

Rate
float32

Multiplier for playback rate.  1.0 = normal.

BlendInTime
float32

Time to interpolate in from zero, for smooth starts

BlendOutTime
float32

Time to interpolate out to zero, for smooth finishes

bLoop
bool

True if the animation should loop, false otherwise

bRandomStartTime
bool

Whether or not to choose a random time to start playing.  Only really makes sense for bLoop = true

Space
ECameraShakePlaySpace

Animation play area

CustomPlaySpace
FRotator

Matrix used when Space = CAPS_UserDefined

ClientStartCameraShakeFromSource
void ClientStartCameraShakeFromSource(
TSubclassOf<UCameraShakeBase> 	Shake,
UCameraShakeSourceComponent 	SourceComponent
	)

Play Camera Shake localized to a given source

**Parameters**

Shake
TSubclassOf<UCameraShakeBase>

Camera shake animation to play

SourceComponent
UCameraShakeSourceComponent

The source from which the camera shakes originates

SetHapticsByValue
void SetHapticsByValue(
float32 	Frequency,
float32 	Amplitude,
EControllerHand 	Hand
	)

Sets the value of the haptics for the specified hand directly, using frequency and amplitude.  NOTE:  If a curve is already playing for this hand, it will be cancelled in favour of the specified values.

**Parameters**

Frequency
float32

The normalized frequency [0.0, 1.0] to play through the haptics system

Amplitude
float32

The normalized amplitude [0.0, 1.0] to set the haptic feedback to

Hand
EControllerHand

Which hand to play the effect on

SetDisableHaptics
void SetDisableHaptics(
bool 	bNewDisabled
	)

Allows the player controller to disable all haptic requests from being fired, e.g. in the case of a level loading

**Parameters**

bNewDisabled
bool

If TRUE, the haptics will stop and prevented from being enabled again until set to FALSE

SetControllerLightColor
void SetControllerLightColor(
FColor 	Color
	)

Sets the light color of the player's controller

**Parameters**

Color
FColor

The color for the light to be

ClientClearCameraLensEffects
void ClientClearCameraLensEffects()

Removes all Camera Lens Effects.

ClientSpawnGenericCameraLensEffect
void ClientSpawnGenericCameraLensEffect(
TSubclassOf<AActor> 	LensEffectEmitterClass
	)

Spawn a camera lens effect (e.g. blood).

PlayDynamicForceFeedback
void PlayDynamicForceFeedback(
float32 	Intensity,
float32 	Duration,
bool 	bAffectsLeftLarge,
bool 	bAffectsLeftSmall,
bool 	bAffectsRightLarge,
bool 	bAffectsRightSmall,
EDynamicForceFeedbackAction 	Action,
FLatentActionInfo 	LatentInfo
	)

Latent action that controls the playing of force feedback Begins playing when Start is called.  Calling Update or Stop if the feedback is not active will have no effect.  Completed will execute when Stop is called or the duration ends.  When Update is called the Intensity, Duration, and affect values will be updated with the current inputs

**Parameters**

Intensity
float32

How strong the feedback should be.  Valid values are between 0.0 and 1.0

Duration
float32

How long the feedback should play for.  If the value is negative it will play until stopped

bAffectsLeftLarge
bool

Whether the intensity should be applied to the large left servo

bAffectsLeftSmall
bool

Whether the intensity should be applied to the small left servo

bAffectsRightLarge
bool

Whether the intensity should be applied to the large right servo

bAffectsRightSmall
bool

Whether the intensity should be applied to the small right servo

ClientStopCameraShake
void ClientStopCameraShake(
TSubclassOf<UCameraShakeBase> 	Shake,
bool 	bImmediately	 = 	true
	)

Stop camera shake on client.

PlayHapticEffect
void PlayHapticEffect(
UHapticFeedbackEffect_Base 	HapticEffect,
EControllerHand 	Hand,
float32 	Scale	 = 	1.000000,
bool 	bLoop	 = 	false
	)

Play a haptic feedback curve on the player's controller

**Parameters**

HapticEffect
UHapticFeedbackEffect_Base

The haptic effect to play

Hand
EControllerHand

Which hand to play the effect on

Scale
float32

Scale between 0.0 and 1.0 on the intensity of playback

ClientStartCameraShake
void ClientStartCameraShake(

TSubclassOf<UCameraShakeBase> 	Shake,
float32 	Scale	 = 	1.000000,
ECameraShakePlaySpace 	PlaySpace	 = 	ECameraShakePlaySpace :: CameraLocal,
FRotator 	UserPlaySpaceRot	 = 	FRotator ( )

)

Play Camera Shake

**Parameters**

Shake
TSubclassOf<UCameraShakeBase>

Camera shake animation to play

Scale
float32

Scalar defining how "intense" to play the anim

PlaySpace
ECameraShakePlaySpace

Which coordinate system to play the shake in (used for CameraAnims within the shake).

UserPlaySpaceRot
FRotator

Matrix used when PlaySpace = CAPS_UserDefined

ClientPlayForceFeedback
void ClientPlayForceFeedback(
UForceFeedbackEffect 	ForceFeedbackEffect,
FName 	Tag,
bool 	bLooping,
bool 	bIgnoreTimeDilation,
bool 	bPlayWhilePaused
	)

Play a force feedback pattern on the player's controller

**Parameters**

ForceFeedbackEffect
UForceFeedbackEffect

The force feedback pattern to play

Tag
FName

A tag that allows stopping of an effect.  If another effect with this Tag is playing, it will be stopped and replaced

bLooping
bool

Whether the pattern should be played repeatedly or be a single one shot

bIgnoreTimeDilation
bool

Whether the pattern should ignore time dilation

bPlayWhilePaused
bool

Whether the pattern should continue to play while the game is paused

ClientStopForceFeedback
void ClientStopForceFeedback(
UForceFeedbackEffect 	ForceFeedbackEffect,
FName 	Tag
	)

Stops a playing force feedback pattern

**Parameters**

ForceFeedbackEffect
UForceFeedbackEffect

If set only patterns from that effect will be stopped

Tag
FName

If not none only the pattern with this tag will be stopped

ClientStopCameraShakesFromSource
void ClientStopCameraShakesFromSource(
UCameraShakeSourceComponent 	SourceComponent,
bool 	bImmediately	 = 	true
	)

Stop camera shake on client.

---

## GAME \| PLAYER

### ActivateTouchInterface

```
void ActivateTouchInterface(UTouchInterface NewTouchInterface)
```

Activates a new touch interface for this player controller

### AddPitchInput

```
void AddPitchInput(float32 Val)
```

Add Pitch (look up) input. This value is multiplied by InputPitchScale.

**Parameters**

Val
float32

Amount to add to Pitch. This value is multiplied by InputPitchScale.

AddYawInput
void AddYawInput(
float32 	Val
	)

Add Yaw (turn) input. This value is multiplied by InputYawScale.

**Parameters**

Val
float32

Amount to add to Yaw. This value is multiplied by InputYawScale.

AddRollInput
void AddRollInput(
float32 	Val
	)

Add Roll input. This value is multiplied by InputRollScale.

**Parameters**

Val
float32

Amount to add to Roll. This value is multiplied by InputRollScale.

CanRestartPlayer
bool CanRestartPlayer()

Returns true if this controller thinks it's able to restart. Called from GameModeBase::PlayerCanRestart

GetInputVectorKeyState
FVector GetInputVectorKeyState(
FKey 	Key
	) const

Returns the vector value for the given key/button.

WasInputKeyJustReleased
bool WasInputKeyJustReleased(
FKey 	Key
	) const

Returns true if the given key/button was down last frame and up this frame.

WasInputKeyJustPressed
bool WasInputKeyJustPressed(
FKey 	Key
	) const

Returns true if the given key/button was up last frame and down this frame.

GetMousePosition
bool GetMousePosition(
float32& 	LocationX,
float32& 	LocationY
	) const

Retrieves the X and Y screen coordinates of the mouse cursor. Returns false if there is no associated mouse device

GetInputTouchState
void GetInputTouchState(
ETouchIndex 	FingerIndex,
float32& 	LocationX,
float32& 	LocationY,
bool& 	bIsCurrentlyPressed
	) const

Retrieves the X and Y screen coordinates of the specified touch key. Returns false if the touch index is not down

GetInputMouseDelta
void GetInputMouseDelta(
float32& 	DeltaX,
float32& 	DeltaY
	) const

Retrieves how far the mouse moved this frame.

DeprojectScreenPositionToWorld
bool DeprojectScreenPositionToWorld(
float32 	ScreenX,
float32 	ScreenY,
FVector& 	WorldLocation,
FVector& 	WorldDirection
	) const

Convert 2D screen position to World Space 3D position and direction. Returns false if unable to determine value.

GetInputMotionState
void GetInputMotionState(
FVector& 	Tilt,
FVector& 	RotationRate,
FVector& 	Gravity,
FVector& 	Acceleration
	) const

Retrieves the current motion state of the player's input device

GetHitResultUnderFingerForObjects
bool GetHitResultUnderFingerForObjects(
ETouchIndex 	FingerIndex,
TArray<EObjectTypeQuery> 	ObjectTypes,
bool 	bTraceComplex,
FHitResult& 	HitResult
	) const

Performs a collision query under the finger, looking for object types

GetInputAnalogKeyState
float32 GetInputAnalogKeyState(
FKey 	Key
	) const

Returns the analog value for the given key/button.  If analog isn't supported, returns 1 for down and 0 for up.

SetViewTargetWithBlend
void SetViewTargetWithBlend(

AActor 	NewViewTarget,
float32 	BlendTime	 = 	0.000000,
EViewTargetBlendFunction 	BlendFunc	 = 	EViewTargetBlendFunction :: VTBlend_Linear,
float32 	BlendExp	 = 	0.000000,
bool 	bLockOutgoing	 = 	false

)

Set the view target blending with variable control

**Parameters**

NewViewTarget
AActor

new actor to set as view target

BlendTime
float32

time taken to blend

BlendFunc
EViewTargetBlendFunction

Cubic, Linear etc functions for blending

BlendExp
float32

Exponent, used by certain blend functions to control the shape of the curve.

bLockOutgoing
bool

If true, lock outgoing viewtarget to last frame's camera position for the remainder of the blend.

SetVirtualJoystickVisibility
void SetVirtualJoystickVisibility(
bool 	bVisible
	)

Set the virtual joystick visibility.

GetInputAnalogStickState
void GetInputAnalogStickState(
EControllerAnalogStick 	WhichStick,
float32& 	StickX,
float32& 	StickY
	) const

Retrieves the X and Y displacement of the given analog stick.

IsInputKeyDown
bool IsInputKeyDown(
FKey 	Key
	) const

Returns true if the given key/button is pressed on the input of the controller (if present)

ProjectWorldLocationToScreen
bool ProjectWorldLocationToScreen(
FVector 	WorldLocation,
FVector2D& 	ScreenLocation,
bool 	bPlayerViewportRelative	 = 	false
	) const

Convert a World Space 3D position into a 2D Screen Space position.

**Returns**

true if the world coordinate was successfully projected to the screen.

SetMouseLocation
void SetMouseLocation(
int 	X,
int 	Y
	)

Positions the mouse cursor in screen space, in pixels.

GetHitResultUnderCursorForObjects
bool GetHitResultUnderCursorForObjects(
TArray<EObjectTypeQuery> 	ObjectTypes,
bool 	bTraceComplex,
FHitResult& 	HitResult
	) const

Performs a collision query under the mouse cursor, looking for object types

GetInputKeyTimeDown
float32 GetInputKeyTimeDown(
FKey 	Key
	) const

Returns how long the given key/button has been down.  Returns 0 if it's up or it just went down this frame.

GetHitResultUnderFingerByChannel
bool GetHitResultUnderFingerByChannel(
ETouchIndex 	FingerIndex,
ETraceTypeQuery 	TraceChannel,
bool 	bTraceComplex,
FHitResult& 	HitResult
	) const

Performs a collision query under the finger, looking on a trace channel

DeprojectMousePositionToWorld
bool DeprojectMousePositionToWorld(
FVector& 	WorldLocation,
FVector& 	WorldDirection
	) const

Convert current mouse 2D position to World Space 3D position and direction. Returns false if unable to determine value.

GetHitResultUnderCursorByChannel
bool GetHitResultUnderCursorByChannel(
ETraceTypeQuery 	TraceChannel,
bool 	bTraceComplex,
FHitResult& 	HitResult
	) const

Performs a collision query under the mouse cursor, looking on a trace channel

SetMouseCursorWidget
void SetMouseCursorWidget(
EMouseCursor 	Cursor,
UUserWidget 	CursorWidget
	)

Sets the Widget for the Mouse Cursor to display

**Parameters**

Cursor
EMouseCursor

the cursor to set the widget for

CursorWidget
UUserWidget

the widget to set the cursor to

---

## HUD

### GetViewportSize

```
void GetViewportSize(int& SizeX, int& SizeY)const
```

Helper to get the size of the HUD canvas for this player controller.  Returns 0 if there is no HUD

### ClientSetHUD

```
void ClientSetHUD(TSubclassOf<AHUD> NewHUDClass)
```

Set the client's class of HUD and spawns a new instance of it. If there was already a HUD active, it is destroyed.

### GetHUD

```
AHUD GetHUD()const
```

Gets the HUD currently being used by this player controller

---

## PAWN

### GetSpectatorPawn

```
ASpectatorPawn GetSpectatorPawn()const
```

Get the Pawn used when spectating. nullptr when not spectating.

### GetFocalLocation

```
FVector GetFocalLocation()const
```

Returns the location the PlayerController is focused on.  If there is a possessed Pawn, returns the Pawn's location.  If there is a spectator Pawn, returns that Pawn's location.  Otherwise, returns the PlayerController's spawn location (usually the last known Pawn location after it has died).

---

## PLAYERCONTROLLER

### GetDeprecatedInputPitchScale

```
float32 GetDeprecatedInputPitchScale()const
```

SetDeprecatedInputYawScale

### void SetDeprecatedInputYawScale

```
void SetDeprecatedInputYawScale(float32 NewValue)
```

GetDeprecatedInputRollScale

### float32 GetDeprecatedInputRollScale

```
float32 GetDeprecatedInputRollScale()const GetDeprecatedInputYawScale
```

float32 GetDeprecatedInputYawScale() const

### ServerSetSpectatorWaiting

```
void ServerSetSpectatorWaiting(bool bWaiting)
```

Indicate that the Spectator is waiting to join/respawn.

### ClientSetSpectatorWaiting

```
void ClientSetSpectatorWaiting(bool bWaiting)
```

Indicate that the Spectator is waiting to join/respawn.

### SetDeprecatedInputPitchScale

```
void SetDeprecatedInputPitchScale(float32 NewValue)
```

SetDeprecatedInputRollScale

### void SetDeprecatedInputRollScale

```
void SetDeprecatedInputRollScale(float32 NewValue)
```

---

## WORLDPARTITION

### StreamingSourceShouldActivate

```
bool StreamingSourceShouldActivate()const
```

Whether the PlayerController streaming source should activate cells after loading.  Default implementation returns bStreamingSourceShouldActivate but can be overriden in child classes.

**Returns**

true if it should.

StreamingSourceShouldBlockOnSlowStreaming
bool StreamingSourceShouldBlockOnSlowStreaming() const

Whether the PlayerController streaming source should block on slow streaming.  Default implementation returns bStreamingSourceShouldBlockOnSlowStreaming but can be overriden in child classes.

**Returns**

true if it should.

IsStreamingSourceEnabled
bool IsStreamingSourceEnabled() const

Whether the PlayerController should be used as a World Partiton streaming source.  Default implementation returns bEnableStreamingSource but can be overriden in child classes.

**Returns**

true if it should.

---

## FUNCTIONS

### ServerCheckClientPossessionReliable

```
void ServerCheckClientPossessionReliable()
```

Reliable version of ServerCheckClientPossession to be used when there is no likely danger of spamming the network.

### ServerMutePlayer

```
void ServerMutePlayer(FUniqueNetIdRepl PlayerId)
```

Tell the server to mute a player for this controller

**Parameters**

PlayerId
FUniqueNetIdRepl

player id to mute

ClientPlaySoundAtLocation
void ClientPlaySoundAtLocation(
USoundBase 	Sound,
FVector 	Location,
float32 	VolumeMultiplier,
float32 	PitchMultiplier
	)

Play sound client-side at the specified location

**Parameters**

Sound
USoundBase

Sound to play

Location
FVector

Location to play the sound at

VolumeMultiplier
float32

Volume multiplier to apply to the sound

PitchMultiplier
float32

Pitch multiplier to apply to the sound

ServerPause
void ServerPause()

Replicate pause request to the server

ServerRestartPlayer
void ServerRestartPlayer()

Attempts to restart this player, generally called from the client upon respawn request.

ClientPlaySound
void ClientPlaySound(
USoundBase 	Sound,
float32 	VolumeMultiplier,
float32 	PitchMultiplier
	)

Play sound client-side (so only the client will hear it)

**Parameters**

Sound
USoundBase

Sound to play

VolumeMultiplier
float32

Volume multiplier to apply to the sound

PitchMultiplier
float32

Pitch multiplier to apply to the sound

ClientSetBlockOnAsyncLoading
void ClientSetBlockOnAsyncLoading()

Tells the client to block until all pending level streaming actions are complete.  Happens at the end of the tick primarily used to force update the client ASAP at join time.

ServerSetSpectatorLocation
void ServerSetSpectatorLocation(
FVector 	NewLoc,
FRotator 	NewRot
	)

When spectating, updates spectator location/rotation and pings the server to make sure spectating should continue.

ServerToggleAILogging
void ServerToggleAILogging()

Used by UGameplayDebuggingControllerComponent to replicate messages for AI debugging in network games.

ClientMutePlayer
void ClientMutePlayer(
FUniqueNetIdRepl 	PlayerId
	)

Tell the client to mute a player for this controller

**Parameters**

PlayerId
FUniqueNetIdRepl

player id to mute

ServerUnmutePlayer
void ServerUnmutePlayer(
FUniqueNetIdRepl 	PlayerId
	)

Tell the server to unmute a player for this controller

**Parameters**

PlayerId
FUniqueNetIdRepl

player id to unmute

ServerVerifyViewTarget
void ServerVerifyViewTarget()

Used by client to request server to confirm current viewtarget (server will respond with ClientSetViewTarget() ).

ClientStartOnlineSession
void ClientStartOnlineSession()

Notify client that the session is starting

ClientSetCameraFade
void ClientSetCameraFade(
bool 	bEnableFading,
FColor 	FadeColor,
FVector2D 	FadeAlpha,
float32 	FadeTime,
bool 	bFadeAudio,
bool 	bHoldWhenFinished
	)

Tell client to fade camera

**Parameters**

bEnableFading
bool

true if we should apply FadeColor/FadeAmount to the screen

FadeColor
FColor

Color to fade to

FadeAlpha
FVector2D

Contains the start fade (X) and end fade (Y) values to apply. A start fade of less than 0 will use the screen's current fade value

FadeTime
float32

length of time for fade to occur over

bFadeAudio
bool

true to apply fading of audio alongside the video

bHoldWhenFinished
bool

True for fade to hold at the ToAlpha until fade is disabled

ClientRestart
void ClientRestart(
APawn 	NewPawn
	)

Tell client to restart the level

ServerViewPrevPlayer
void ServerViewPrevPlayer()

Move camera to previous player on round ended or spectating

ClientEndOnlineSession
void ClientEndOnlineSession()

Notify client that the session is about to start

ClientStopCameraAnim
void ClientStopCameraAnim(
UCameraAnim 	AnimToStop
	)

Stop camera animation on client.

ClientCommitMapChange
void ClientCommitMapChange()

Actually performs the level transition prepared by PrepareMapChange().

ClientCapBandwidth
void ClientCapBandwidth(
int 	Cap
	)

Set CurrentNetSpeed to the lower of its current value and Cap.

ClientMessage
void ClientMessage(
FString 	S,
FName 	Type,
float32 	MsgLifeTime
	)

Outputs a message to HUD

**Parameters**

S
FString

message to display

MsgLifeTime
float32

Optional length of time to display 0 = default time

ClientSetCameraMode
void ClientSetCameraMode(
FName 	NewCamMode
	)

Replicated function to set camera style on client

ClientAddTextureStreamingLoc
void ClientAddTextureStreamingLoc(
FVector 	InLoc,
float32 	Duration,
bool 	bOverrideLocation
	)

Adds a location to the texture streaming system for the specified duration.

ClientIgnoreMoveInput
void ClientIgnoreMoveInput(
bool 	bIgnore
	)

Calls IgnoreMoveInput on client

ClientIgnoreLookInput
void ClientIgnoreLookInput(
bool 	bIgnore
	)

Calls IgnoreLookInput on client

ClientSetCinematicMode
void ClientSetCinematicMode(
bool 	bInCinematicMode,
bool 	bAffectsMovement,
bool 	bAffectsTurning,
bool 	bAffectsHUD
	)

Called by the server to synchronize cinematic transitions with the client

ClientRetryClientRestart
void ClientRetryClientRestart(
APawn 	NewPawn
	)

Assign Pawn to player, but avoid calling ClientRestart if we have already accepted this pawn

ClientRepObjRef
void ClientRepObjRef(
UObject 	Object
	)

Development RPC for testing object reference replication

ClientTeamMessage
void ClientTeamMessage(
APlayerState 	SenderPlayerState,
FString 	S,
FName 	Type,
float32 	MsgLifeTime
	)

@todo document

ServerCheckClientPossession
void ServerCheckClientPossession()

Tells the server to make sure the possessed pawn is in sync with the client.

ClientTravelInternal
void ClientTravelInternal(
FString 	URL,
ETravelType 	TravelType,
bool 	bSeamless,
FGuid 	MapPackageGuid
	)
Internal clientside implementation of ClientTravel

use ClientTravel to call this

**Parameters**

---

## URL

### FString

```
FString
```

A string containing the mapname (or IP address) to travel to, along with option key/value pairs

TravelType

ETravelType

### specifies whether the client should append URL options used in previous travels; if true is specified for the bSeamlesss parameter, this value must be TRAVEL_Relative.

```
specifies whether the client should append URL options used in previous travels; if true is specified for the bSeamlesss parameter, this value must be TRAVEL_Relative.
```

bSeamless

### bool

```
bool
```

Indicates whether to use seamless travel (requires TravelType of TRAVEL_Relative)

MapPackageGuid

### FGuid

```
FGuid
```

The GUID of the map package to travel to - this is used to find the file when it has been autodownloaded, so it is only needed for clients

### ServerExecRPC

```
void ServerExecRPC(FString Msg)
```

RPC used by ServerExec. Not intended to be called directly

### ClientSetForceMipLevelsToBeResident

```
void ClientSetForceMipLevelsToBeResident(UMaterialInterface Material, float32 ForceDuration, int CinematicTextureGroups)
```

Forces the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by the specified material.

**Parameters**

Material
UMaterialInterface

The material whose textures should be forced into memory.

ForceDuration
float32

Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic.

CinematicTextureGroups
int

Bitfield indicating which texture groups that use extra high-resolution mips

ServerNotifyLoadedWorld
void ServerNotifyLoadedWorld(
FName 	WorldPackageName
	)

Called to notify the server when the client has loaded a new world via seamless traveling

**Parameters**

WorldPackageName
FName

the name of the world package that was loaded

ClientUnmutePlayer
void ClientUnmutePlayer(
FUniqueNetIdRepl 	PlayerId
	)

Tell the client to unmute a player for this controller

**Parameters**

PlayerId
FUniqueNetIdRepl

player id to unmute

ServerRecvClientInputFrame
void ServerRecvClientInputFrame(
int 	RecvClientInputFrame,
TArray<uint8> 	Data
	)

Client says "Here is input frame number X" (and then calls other RPCs to deliver InputCmd payload)

ClientGotoState
void ClientGotoState(
FName 	NewState
	)

Server uses this to force client into NewState .  Note: ALL STATE NAMES NEED TO BE DEFINED IN name table in UnrealNames.h to be correctly replicated (so they are mapped to the same thing on client and server).

OnServerStartedVisualLogger
void OnServerStartedVisualLogger(
bool 	bIsLogging
	)

Notify from server that Visual Logger is recording, to show that information on client about possible performance issues

ClientUnmutePlayers
void ClientUnmutePlayers(
TArray<FUniqueNetIdRepl> 	PlayerIds
	)

Tell the client to unmute an array of players for this controller

**Parameters**

PlayerIds
TArray<FUniqueNetIdRepl>

player ids to unmute

ServerShortTimeout
void ServerShortTimeout()

Notifies the server that the client has ticked gameplay code, and should no longer get the extended "still loading" timeout grace period

ClientReturnToMainMenu
void ClientReturnToMainMenu(
FString 	ReturnReason
	)
ServerUnblockPlayer
void ServerUnblockPlayer(
FUniqueNetIdRepl 	PlayerId
	)

Tell the client to unblock a player for this controller

**Parameters**

PlayerId
FUniqueNetIdRepl

player id to unblock

ClientGameEnded
void ClientGameEnded(
AActor 	EndGameFocus,
bool 	bIsWinner
	)

Replicated function called by GameHasEnded().

**Parameters**

EndGameFocus
AActor

actor to view with camera

bIsWinner
bool

true if this controller is on winning team

ServerUpdateCamera
void ServerUpdateCamera(
FVector 	CamLoc,
int 	CamPitchAndYaw
	)
If PlayerCamera.bUseClientSideCameraUpdates is set, client will replicate camera positions to the server. // @TODO

combine pitch/yaw into one int, maybe also send location compressed

ClientForceGarbageCollection
void ClientForceGarbageCollection()

Forces GC at the end of the tick on the client

ServerViewNextPlayer
void ServerViewNextPlayer()

Move camera to next player on round ended or spectating

ClientUpdateLevelStreamingStatus
void ClientUpdateLevelStreamingStatus(
FName 	PackageName,
bool 	bNewShouldBeLoaded,
bool 	bNewShouldBeVisible,
bool 	bNewShouldBlockOnLoad,
int 	LODIndex
	)

Replicated Update streaming status

**Parameters**

PackageName
FName

Name of the level package name used for loading.

bNewShouldBeLoaded
bool

Whether the level should be loaded

bNewShouldBeVisible
bool

Whether the level should be visible if it is loaded

bNewShouldBlockOnLoad
bool

Whether we want to force a blocking load

LODIndex
int

Current LOD index for a streaming level

ServerViewSelf
void ServerViewSelf(
FViewTargetTransitionParams 	TransitionParams
	)

Move camera to current user

ClientFlushLevelStreaming
void ClientFlushLevelStreaming()

Tells the client to block until all pending level streaming actions are complete happens at the end of the tick primarily used to force update the client ASAP at join time

ClientEnableNetworkVoice
void ClientEnableNetworkVoice(
bool 	bEnable
	)

Tell the client to enable or disable voice chat (not muting)

**Parameters**

bEnable
bool

enable or disable voice chat

ClientVoiceHandshakeComplete
void ClientVoiceHandshakeComplete()

Tells the client that the server has all the information it needs and that it is ok to start sending voice packets. The server will already send voice packets when this function is called, since it is set server side and then forwarded

NOTE: This is done as an RPC instead of variable replication because ordering matters

ServerAcknowledgePossession
void ServerAcknowledgePossession(
APawn 	P
	)

acknowledge possession of pawn

ServerBlockPlayer
void ServerBlockPlayer(
FUniqueNetIdRepl 	PlayerId
	)

Tell the client to block a player for this controller

**Parameters**

PlayerId
FUniqueNetIdRepl

player id to block

ClientWasKicked
void ClientWasKicked(
FText 	KickReason
	)

Notify client they were kicked from the server

ClientPrepareMapChange
void ClientPrepareMapChange(
FName 	LevelName,
bool 	bFirst,
bool 	bLast
	)

Asynchronously loads the given level in preparation for a streaming map transition.  the server sends one function per level name since dynamic arrays can't be replicated

**Parameters**

bFirst
bool

whether this is the first item in the list (so clear the list first)

bLast
bool

whether this is the last item in the list (so start preparing the change after receiving it)

ClientCancelPendingMapChange
void ClientCancelPendingMapChange()

Tells client to cancel any pending map change.

ServerChangeName
void ServerChangeName(
FString 	S
	)

Change name of server

ClientSetViewTarget
void ClientSetViewTarget(
AActor 	A,
FViewTargetTransitionParams 	TransitionParams
	)

Set the view target

**Parameters**

A
AActor

new actor to set as view target

TransitionParams
FViewTargetTransitionParams

parameters to use for controlling the transition

ClientReturnToMainMenuWithTextReason
void ClientReturnToMainMenuWithTextReason(
FText 	ReturnReason
	)

Return the client to the main menu gracefully

ClientReset
void ClientReset()

Tell client to reset the PlayerController

ClientRecvServerAckFrameDebug
void ClientRecvServerAckFrameDebug(
uint8 	NumBuffered,
float32 	TargetNumBufferedCmds
	)
ClientPrestreamTextures
void ClientPrestreamTextures(
AActor 	ForcedActor,
float32 	ForceDuration,
bool 	bEnableStreaming,
int 	CinematicTextureGroups
	)

Forces the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by the specified actor.

**Parameters**

ForcedActor
AActor

The actor whose textures should be forced into memory.

ForceDuration
float32

Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic.

bEnableStreaming
bool

Whether to start (true) or stop (false) streaming

CinematicTextureGroups
int

Bitfield indicating which texture groups that use extra high-resolution mips

GetLocalPlayer
ULocalPlayer GetLocalPlayer() const
ClientRecvServerAckFrame
void ClientRecvServerAckFrame(
int 	LastProcessedInputFrame,
int 	RecvServerFrameNumber,
int8 	TimeDilation
	)

We call this in ::SendClientAdjustment to tell the client what the last processed input frame was for him and on what local frame number it was processed

ClientReceiveLocalizedMessage
void ClientReceiveLocalizedMessage(
TSubclassOf<ULocalMessage> 	Message,
int 	Switch,
APlayerState 	RelatedPlayerState_1,
APlayerState 	RelatedPlayerState_2,
UObject 	OptionalObject
	)

send client localized message id

SetPlayer
void SetPlayer(
UPlayer 	InPlayer
	)
ServerCamera
void ServerCamera(
FName 	NewMode
	)

change mode of camera

GetPlayerInput
UPlayerInput GetPlayerInput()
PopInputComponent
void PopInputComponent(
UInputComponent 	Component
	)

Remove an input component so it no longer handles input from this player controller.

PushInputComponent
void PushInputComponent(
UInputComponent 	Component
	)

Push an input component to handle input from this player controller.

GetbPlayerIsWaiting
bool GetbPlayerIsWaiting() const
GetbShowMouseCursor
bool GetbShowMouseCursor() const
SetbShowMouseCursor
void SetbShowMouseCursor(
bool 	Value
	)
GetbEnableClickEvents
bool GetbEnableClickEvents() const
SetbEnableClickEvents
void SetbEnableClickEvents(
bool 	Value
	)
GetbEnableTouchEvents
bool GetbEnableTouchEvents() const
SetbEnableTouchEvents
void SetbEnableTouchEvents(
bool 	Value
	)
GetbEnableMouseOverEvents
bool GetbEnableMouseOverEvents() const
SetbEnableMouseOverEvents
void SetbEnableMouseOverEvents(
bool 	Value
	)
GetbEnableTouchOverEvents
bool GetbEnableTouchOverEvents() const
SetbEnableTouchOverEvents
void SetbEnableTouchOverEvents(
bool 	Value
	)
GetbForceFeedbackEnabled
bool GetbForceFeedbackEnabled() const
SetbForceFeedbackEnabled
void SetbForceFeedbackEnabled(
bool 	Value
	)
GetbEnableStreamingSource
bool GetbEnableStreamingSource() const
SetbEnableStreamingSource
void SetbEnableStreamingSource(
bool 	Value
	)
GetbStreamingSourceShouldActivate
bool GetbStreamingSourceShouldActivate() const
SetbStreamingSourceShouldActivate
void SetbStreamingSourceShouldActivate(
bool 	Value
	)
GetbStreamingSourceShouldBlockOnSlowStreaming
bool GetbStreamingSourceShouldBlockOnSlowStreaming() const
SetbStreamingSourceShouldBlockOnSlowStreaming
void SetbStreamingSourceShouldBlockOnSlowStreaming(
bool 	Value
	)
GetbShouldPerformFullTickWhenPaused
bool GetbShouldPerformFullTickWhenPaused() const
SetbShouldPerformFullTickWhenPaused
void SetbShouldPerformFullTickWhenPaused(
bool 	Value
	)
STATIC FUNCTIONS
Spawn
static APlayerController APlayerController::Spawn(
FVector 	Location	 = 	FVector :: ZeroVector,
FRotator 	Rotation	 = 	FRotator :: ZeroRotator,
FName 	Name	 = 	NAME_None,
ULevel 	Level	 = 	nullptr
	)
StaticClass
static UClass APlayerController::StaticClass()
