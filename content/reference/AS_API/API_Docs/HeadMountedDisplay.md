# HeadMountedDisplay

## Inheritance

HeadMountedDisplay

## Description

STATIC VARIABLES HMDWornState static const EHMDWornState HeadMountedDisplay::HMDWornState NumOfTrackingSensors static const int HeadMountedDisplay::NumOfTrackingSensors PixelDensity static const float32 HeadMountedDisplay::PixelDensity TrackingOrigin static EHMDTrackingOrigin HeadMountedDisplay::TrackingOrigin VersionString static const FString HeadMountedDisplay::VersionString XRSystemFlags static const int HeadMountedDisplay::XRSystemFlags HMDDeviceName static const FName HeadMountedDisplay::HMDDeviceName

## HEADMOUNTEDDISPLAY

### GetVersionString

```
static FString HeadMountedDisplay::GetVersionString()
```

Returns name of tracking system specific version string.

---

## INPUT \| HEADMOUNTEDDISPLAY

GetTrackingSensorParameters

### static void HeadMountedDisplay::GetTrackingSensorParameters

```
static void HeadMountedDisplay::GetTrackingSensorParameters(FVector& Origin, FRotator& Rotation, float32& LeftFOV, float32& RightFOV, float32& TopFOV, float32& BottomFOV, float32& Distance, float32& NearPlane, float32& FarPlane, bool& IsActive, int Index = 0)
```

If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking.  This allows an in-game representation of the legal positional tracking range.  All values will be zeroed if the sensor is not available or the HMD does not support it.

**Parameters**

Origin
FVector&

(out) Origin, in world-space, of the sensor

Rotation
FRotator&

(out) Rotation, in world-space, of the sensor

LeftFOV
float32&

(out) Field-of-view, left from center, in degrees, of the valid tracking zone of the sensor

RightFOV
float32&

(out) Field-of-view, right from center, in degrees, of the valid tracking zone of the sensor

TopFOV
float32&

(out) Field-of-view, top from center, in degrees, of the valid tracking zone of the sensor

BottomFOV
float32&

(out) Field-of-view, bottom from center, in degrees, of the valid tracking zone of the sensor

Distance
float32&

(out) Nominal distance to sensor, in world-space

NearPlane
float32&

(out) Near plane distance of the tracking volume, in world-space

FarPlane
float32&

(out) Far plane distance of the tracking volume, in world-space

IsActive
bool&

(out) True, if the query for the specified sensor succeeded.

Index
int

(in) Index of the tracking sensor to query

GetTrackingToWorldTransform
static FTransform HeadMountedDisplay::GetTrackingToWorldTransform()

Returns a transform that can be used to convert points from tracking space to world space.  Does NOT include the set WorldToMeters scale, as that is added in by the backing XR system to their tracking space poses.

HasValidTrackingPosition
static bool HeadMountedDisplay::HasValidTrackingPosition()

If the HMD supports positional tracking, whether or not we are currently being tracked

SetWorldToMetersScale
static void HeadMountedDisplay::SetWorldToMetersScale(
float32 	NewScale	 = 	100.000000
	)

Sets the World to Meters scale, which changes the scale of the world as perceived by the player

**Parameters**

NewScale
float32

Specifies how many Unreal units correspond to one meter in the real world

SetTrackingOrigin
static void HeadMountedDisplay::SetTrackingOrigin(
EHMDTrackingOrigin 	Origin
	)

Sets current tracking origin type (eye level or floor level).

EnableHMD
static bool HeadMountedDisplay::EnableHMD(
bool 	bEnable
	)

Switches to/from using HMD and stereo rendering.

**Parameters**

bEnable
bool

(in) 'true' to enable HMD / stereo; 'false' otherwise

**Returns**

(Boolean)  True, if the request was successful.

SetClippingPlanes
static void HeadMountedDisplay::SetClippingPlanes(
float32 	Near,
float32 	Far
	)

Sets near and far clipping planes (NCP and FCP) for stereo rendering. Similar to 'stereo ncp= fcp' console command, but NCP and FCP set by this call won't be saved in .ini file.

**Parameters**

Near
float32

(in) Near clipping plane, in centimeters

Far
float32

(in) Far clipping plane, in centimeters

ResetOrientationAndPosition
static void HeadMountedDisplay::ResetOrientationAndPosition(

float32 	Yaw	 = 	0.000000,
EOrientPositionSelector 	Options	 = 	EOrientPositionSelector :: OrientationAndPosition

)

Resets orientation by setting roll and pitch to 0, assuming that current yaw is forward direction and assuming current position as a 'zero-point' (for positional tracking).

**Parameters**

Yaw
float32

(in) the desired yaw to be set after orientation reset.

Options
EOrientPositionSelector

(in) specifies either position, orientation or both should be reset.

IsHeadMountedDisplayEnabled
static bool HeadMountedDisplay::IsHeadMountedDisplayEnabled()

Returns whether or not we are currently using the head mounted display.

**Returns**

(Boolean)  status of HMD

IsHeadMountedDisplayConnected
static bool HeadMountedDisplay::IsHeadMountedDisplayConnected()

Returns whether or not the HMD hardware is connected and ready to use.  It may or may not actually be in use.

**Returns**

(Boolean)  status whether the HMD hardware is connected and ready to use.  It may or may not actually be in use.

GetVRFocusState
static void HeadMountedDisplay::GetVRFocusState(
bool& 	bUseFocus,
bool& 	bHasFocus
	)

Returns current state of VR focus.

**Parameters**

bUseFocus
bool&

(out) if set to true, then this App does use VR focus.

bHasFocus
bool&

(out) if set to true, then this App currently has VR focus.

GetHMDDeviceName
static FName HeadMountedDisplay::GetHMDDeviceName()

Returns the name of the device, so scripts can modify their behaviour appropriately

**Returns**

FName specific to the currently active HMD device type.  "None" implies no device, "Unknown" implies a device with no description.

GetHMDWornState
static EHMDWornState HeadMountedDisplay::GetHMDWornState()

Returns the worn state of the device.

**Returns**

Unknown, Worn, NotWorn.  If the platform does not detect this it will always return Unknown.

GetXRSystemFlags
static int HeadMountedDisplay::GetXRSystemFlags()

Returns the flags for the device, so scripts can modify their behaviour appropriately

**Returns**

IsAR, IsTablet, IsHeadMounted.  Returns false

GetNumOfTrackingSensors
static int HeadMountedDisplay::GetNumOfTrackingSensors()

If the HMD has multiple positional tracking sensors, return a total number of them currently connected.

GetOrientationAndPosition
static void HeadMountedDisplay::GetOrientationAndPosition(
FRotator& 	DeviceRotation,
FVector& 	DevicePosition
	)

Grabs the current orientation and position for the HMD.  If positional tracking is not available, DevicePosition will be a zero vector

**Parameters**

DeviceRotation
FRotator&

(out) The device's current rotation

DevicePosition
FVector&

(out) The device's current position, in its own tracking space

GetPixelDensity
static float32 HeadMountedDisplay::GetPixelDensity()

Returns the current VR pixel density. Pixel density sets the VR render target texture size as a factor of recommended texture size. The recommended texture size is the size that will result in no under sampling in most distorted area of the view when computing the final image to be displayed on the device by the runtime compositor.

**Returns**

(float)  The pixel density to be used in VR mode.

GetWorldToMetersScale
static float32 HeadMountedDisplay::GetWorldToMetersScale()

Returns the World to Meters scale, which corresponds to the scale of the world as perceived by the player

**Returns**

How many Unreal units correspond to one meter in the real world

GetTrackingOrigin
static EHMDTrackingOrigin HeadMountedDisplay::GetTrackingOrigin()

Returns current tracking origin type (eye level or floor level).

---

## INPUT \| HEADMOUNTEDDISPLAY \| EXTERNALTRACKING

### CalibrateExternalTrackingToHMD

```
static void HeadMountedDisplay::CalibrateExternalTrackingToHMD(
```

### FTransform 	ExternalTrackingTransform

```
FTransform 	ExternalTrackingTransform
```

)

### Called to calibrate the offset transform between an external tracking source and the internal tracking source

```
Called to calibrate the offset transform between an external tracking source and the internal tracking source(e.g. mocap tracker to and HMD tracker). This should be called once per session, or when the physical relationship between the external tracker and internal tracker changes(e.g. it was bumped or reattached). After calibration, calling UpdateExternalTrackingPosition will try to correct the internal tracker to the calibrated offset to prevent drift between the two systems
```

**Parameters**

ExternalTrackingTransform
FTransform

The transform in world-coordinates, of the reference marker of the external tracking system

UpdateExternalTrackingHMDPosition
static void HeadMountedDisplay::UpdateExternalTrackingHMDPosition(

FTransform 	ExternalTrackingTransform

)

Called after calibration to attempt to pull the internal tracker (e.g. HMD tracking) in line with the external tracker (e.g. mocap tracker).  This will set the internal tracker's base offset and rotation to match and realign the two systems.  This can be called every tick, or whenever realignment is desired.  Note that this may cause choppy movement if the two systems diverge relative to each other, or a big jump if called infrequently when there has been significant drift

**Parameters**

ExternalTrackingTransform
FTransform

The transform in world-coordinates, of the reference marker of the external tracking system

---

## INPUT \| HEADMOUNTEDDISPLAY \| SPECTATORSCREEN

### SetSpectatorScreenTexture

```
static void HeadMountedDisplay::SetSpectatorScreenTexture(UTexture InTexture)
```

Change the texture displayed on the social screen

SetSpectatorScreenModeTexturePlusEyeLayout

### static void HeadMountedDisplay::SetSpectatorScreenModeTexturePlusEyeLayout

```
static void HeadMountedDisplay::SetSpectatorScreenModeTexturePlusEyeLayout(
```

FVector2D 	EyeRectMin,

FVector2D 	EyeRectMax,

FVector2D 	TextureRectMin,

FVector2D 	TextureRectMax,

bool 	bDrawEyeFirst	 = 	true,

### bool 	bClearBlack	 = 	false,

```
bool 	bClearBlack	 = 	false, bool 	bUseAlpha	 = 	false
```

)

### Setup the layout for ESpectatorScreenMode::TexturePlusEye.

```
Setup the layout for ESpectatorScreenMode::TexturePlusEye.
```

IsSpectatorScreenModeControllable

### static bool HeadMountedDisplay::IsSpectatorScreenModeControllable

```
static bool HeadMountedDisplay::IsSpectatorScreenModeControllable()
```

Return true if spectator screen mode control is available.

### SetSpectatorScreenMode

```
static void HeadMountedDisplay::SetSpectatorScreenMode(ESpectatorScreenMode Mode)
```

Sets the social screen mode.

**Parameters**

Mode
ESpectatorScreenMode

(in) The social screen Mode.

---

## INPUT \| XRTRACKING

### GetHMDData

```
static void HeadMountedDisplay::GetHMDData(UObject WorldContext, FXRHMDData& HMDData)
```

Cross XR-System query that returns critical information about the HMD display (position, orientation, device name)

### IsDeviceTracking

```
static bool HeadMountedDisplay::IsDeviceTracking(FXRDeviceId XRDeviceId)
```

Cross XR-System query that returns whether the specified device is tracked or not.

**Parameters**

XRDeviceId
FXRDeviceId

Specifies the device you're querying for.

GetPlayAreaBounds
static FVector2D HeadMountedDisplay::GetPlayAreaBounds(

EHMDTrackingOrigin 	Origin	 = 	EHMDTrackingOrigin :: Stage

)

Get the bounds of the area where the user can freely move while remaining tracked centered around the specified origin

ConfigureGestures
static bool HeadMountedDisplay::ConfigureGestures(
FXRGestureConfig 	GestureConfig
	)

Specify which gestures to capture.

ClearXRTimedInputActionDelegate
static void HeadMountedDisplay::ClearXRTimedInputActionDelegate(
FName 	ActionPath
	)

Clear a delegate to get an OpenXR action event with action time.

EnumerateTrackedDevices
static TArray<FXRDeviceId> HeadMountedDisplay::EnumerateTrackedDevices(

const 	FName 	SystemId	 = 	NAME_None,
	EXRTrackedDeviceType 	DeviceType	 = 	EXRTrackedDeviceType :: Any

)

Cross XR-System query that will list all XR devices currently being tracked.

**Parameters**

SystemId
const FName

(Optional) Specifies an explicit system to poll devices from (use if you want only devices belonging to one explicit XR ecosystem, e.g. 'OculusHMD', or 'SteamVR')

DeviceType
EXRTrackedDeviceType

Specifies the type of device to query for - defaults to 'Any' (meaning 'All').

**Returns**

A list of device identifiers matching the query. Use these to query and operate on the device (e.g. through GetDevicePose, AddDeviceVisualizationComponent, etc.)

GetDevicePose
static void HeadMountedDisplay::GetDevicePose(
FXRDeviceId 	XRDeviceId,
bool& 	bIsTracked,
FRotator& 	Orientation,
bool& 	bHasPositionalTracking,
FVector& 	Position
	)

Cross XR-System query that returns a specific device's tracked position and orientation (in tracking space).

**Parameters**

XRDeviceId
FXRDeviceId

Specifies the device you're querying for.

bIsTracked
bool&

[out] Details if the specified device is tracked (i.e. should the rest of the outputs be used)

Orientation
FRotator&

[out] Represents the device's current rotation - NOTE: this value is not late updated and will be behind the render thread

bHasPositionalTracking
bool&

[out] Details if the specified device has positional tracking (i.e. if the position output should be used)

Position
FVector&

[out] Represents the device's current position - NOTE: this value is not late updated and will be behind the render thread

GetMotionControllerData
static void HeadMountedDisplay::GetMotionControllerData(

UObject 	WorldContext,
EControllerHand 	Hand,
FXRMotionControllerData& 	MotionControllerData

)

Cross XR-System query that returns critical information about the motion controller (position, orientation, hand/finger position)

BreakKey
static void HeadMountedDisplay::BreakKey(
FKey 	InKey,
FString& 	InteractionProfile,
EControllerHand& 	Hand,
FName& 	MotionSource,
FString& 	Indentifier,
FString& 	Component
	)

Breaks an XR key apart into the interaction profile, handedness, motion source, indentifier and component.

GetDeviceWorldPose
static void HeadMountedDisplay::GetDeviceWorldPose(
FXRDeviceId 	XRDeviceId,
bool& 	bIsTracked,
FRotator& 	Orientation,
bool& 	bHasPositionalTracking,
FVector& 	Position
	)

Cross XR-System query that returns a specific device's position and orientation in world space.

**Parameters**

XRDeviceId
FXRDeviceId

Specifies the device you're querying for.

bIsTracked
bool&

[out] Details if the specified device is tracked (i.e. should the rest of the outputs be used)

Orientation
FRotator&

[out] Represents the device's current rotation - NOTE: this value is not late updated and will be behind the render thread

bHasPositionalTracking
bool&

[out] Details if the specified device has positional tracking (i.e. if the position output should be used)

Position
FVector&

[out] Represents the device's current position - NOTE: this value is not late updated and will be behind the render thread

GetControllerTransformForTime
static bool HeadMountedDisplay::GetControllerTransformForTime(

	UObject 	WorldContext,
	int 	ControllerIndex,
const 	FName 	MotionSource,
	FTimespan 	Time,
	bool& 	bTimeWasUsed,
	FRotator& 	Orientation,
	FVector& 	Position,
	bool& 	bProvidedLinearVelocity,
	FVector& 	LinearVelocity,
	bool& 	bProvidedAngularVelocity,
	FVector& 	AngularVelocityRadPerSec,
	bool& 	bProvidedLinearAcceleration,
	FVector& 	LinearAcceleration

)

Get the transform and potentially velocity data at a specified time near the current frame in unreal world space.  This is intended for use with sub-frame input action timing data from SetXRTimedInputActionDelegate, or future support for timestamps in the core input system.  The valid time window is platform dependent, but the intention per OpenXR is to fetch transforms for times from, at most, the previous few frames in the past or future.  The OpenXR spec suggests that 50ms in the past should return an accurate result.  There is no guarantee for the future, but the underlying system is likely to have been designed to predict out to about 50ms as well.  On some platforms this  will always just return a cached position and rotation, ignoring time.  bTimeWasUsed will be false in that case.  AngularVelocityRadPerSec is a vector whose direction is the axis of rotation and whoes length is the speed of rotation in radians per second.

SetXRTimedInputActionDelegate
static void HeadMountedDisplay::SetXRTimedInputActionDelegate(

FName 	ActionName,
FXRTimedInputActionDelegate 	InDelegate	 = 	FXRTimedInputActionDelegate ( )

)

Hook up a delegate to get an OpenXR action event with action time.  For a boolean input the the 'value' parameter of the delegate will be 1.0 for a press and 0.0 for a release.  For an analog input the value's range is action and platform specific.  Use in combination with GetControllerTransformForTime for potentially improved temporal transform precision and velocity data.  "Left Grip" is an example of a valid ActionName.  Note: this is likely to be replaced by native support for event times in the core input system at some time in the future.

---

## XR \| HEADMOUNTEDDISPLAY

### SetXRDisconnectDelegate

```
static void HeadMountedDisplay::SetXRDisconnectDelegate(
```

FXRDeviceOnDisconnectDelegate 	InDisconnectedDelegate	 = 	FXRDeviceOnDisconnectDelegate ( )

### )

```
) DisconnectRemoteXRDevice
```

static void HeadMountedDisplay::DisconnectRemoteXRDevice()

### Disconnect remote AR Device

```
Disconnect remote AR Device
```

ConnectRemoteXRDevice

### static EXRDeviceConnectionResult HeadMountedDisplay::ConnectRemoteXRDevice

```
static EXRDeviceConnectionResult HeadMountedDisplay::ConnectRemoteXRDevice(FString IpAddress, int BitRate)
```

Connect to a remote device
