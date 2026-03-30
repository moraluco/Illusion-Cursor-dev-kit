# UCameraAnimationCameraModifier

**Visibility:** public

## Inheritance

UCameraModifier → UCameraAnimationCameraModifier

## Description

A camera modifier that plays camera animation sequences.

### CAMERA ANIMATION

```
CAMERA ANIMATION StopCameraAnimation void StopCameraAnimation(FCameraAnimationHandle Handle, bool bImmediate = false)
```

Stops the given camera animation instance.

**Parameters**

bImmediate
bool

True to stop it right now and ignore blend out, false to let it blend out as indicated.

PlayCameraAnimation
FCameraAnimationHandle PlayCameraAnimation(
UCameraAnimationSequence 	Sequence,
FCameraAnimationParams 	Params
	)

Play a new camera animation sequence.

**Parameters**

Sequence
UCameraAnimationSequence

The sequence to use for the new camera animation.

Params
FCameraAnimationParams

The parameters for the new camera animation instance.

StopAllCameraAnimations
void StopAllCameraAnimations(
bool 	bImmediate	 = 	false
	)

Stop all camera animation instances.

**Parameters**

bImmediate
bool

True to stop it right now and ignore blend out, false to let it blend out as indicated.

StopAllCameraAnimationsOf
void StopAllCameraAnimationsOf(
UCameraAnimationSequence 	Sequence,
bool 	bImmediate	 = 	false
	)

Stop playing all instances of the given camera animation sequence.

**Parameters**

Sequence
UCameraAnimationSequence

The sequence of which to stop all instances.

bImmediate
bool

True to stop it right now and ignore blend out, false to let it blend out as indicated.

IsCameraAnimationActive
bool IsCameraAnimationActive(
FCameraAnimationHandle 	Handle
	) const

Returns whether the given camera animation is playing.

**Parameters**

Handle
FCameraAnimationHandle

A handle to a previously started camera animation.

**Returns**

Whether the corresponding camera animation is playing or not.

GetCameraAnimationCameraModifier
static UCameraAnimationCameraModifier UCameraAnimationCameraModifier::GetCameraAnimationCameraModifier(

int 	PlayerIndex

)
GetCameraAnimationCameraModifierFromID
static UCameraAnimationCameraModifier UCameraAnimationCameraModifier::GetCameraAnimationCameraModifierFromID(

int 	ControllerID

)
GetCameraAnimationCameraModifierFromPlayerController
static UCameraAnimationCameraModifier UCameraAnimationCameraModifier::GetCameraAnimationCameraModifierFromPlayerController(

const 	APlayerController 	PlayerController

)
STATIC FUNCTIONS
StaticClass
static UClass UCameraAnimationCameraModifier::StaticClass()
