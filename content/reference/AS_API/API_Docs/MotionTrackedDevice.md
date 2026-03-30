# MotionTrackedDevice

## Inheritance

MotionTrackedDevice

## Description

STATIC VARIABLES MaximumMotionTrackedControllerCount static const int MotionTrackedDevice::MaximumMotionTrackedControllerCount MotionTrackingEnabledControllerCount static const int MotionTrackedDevice::MotionTrackingEnabledControllerCount ActiveTrackingSystemName static const FName MotionTrackedDevice::ActiveTrackingSystemName

## INPUT \| MOTIONTRACKING

### GetActiveTrackingSystemName

```
static FName MotionTrackedDevice::GetActiveTrackingSystemName()
```

Returns the system name used to distinguish the current tracking system.  If no XR tracking system is active, then the name 'None' is returned.

### DisableMotionTrackingOfAllControllers

```
static void MotionTrackedDevice::DisableMotionTrackingOfAllControllers()
```

Disable tracking for all controllers.

### DisableMotionTrackingOfControllersForPlayer

```
static void MotionTrackedDevice::DisableMotionTrackingOfControllersForPlayer(int PlayerIndex)
```

Disable tracking for all controllers associated with the specified player.

**Parameters**

PlayerIndex
int

(in) The index of the player.

DisableMotionTrackingOfSource
static void MotionTrackedDevice::DisableMotionTrackingOfSource(
int 	PlayerIndex,
FName 	SourceName
	)

Disable tracking of the specified controller, by player index and tracked device type.

**Parameters**

PlayerIndex
int

(in) The index of the player.

SourceName
FName

(in) The tracked device id.

EnableMotionTrackingForComponent
static bool MotionTrackedDevice::EnableMotionTrackingForComponent(

UMotionControllerComponent 	MotionControllerComponent

)

Enable tracking of the specified controller, by player index and tracked device type.

**Parameters**

MotionControllerComponent
UMotionControllerComponent

(in) The motion controller component who's associated device is targeted.

**Returns**

(Boolean) true if the specified device is now set to be tracked.  This could fail due to tracking limits, or on invalid input.

EnableMotionTrackingOfSource
static bool MotionTrackedDevice::EnableMotionTrackingOfSource(
int 	PlayerIndex,
FName 	SourceName
	)

Enable tracking of the specified controller, by player index and tracked device type.

**Parameters**

PlayerIndex
int

(in) The index of the player.

SourceName
FName

(in) The device id.

**Returns**

(Boolean) true if the specified device is now set to be tracked.  This could fail due to tracking limits, or on invalid input.

EnumerateMotionSources
static TArray<FName> MotionTrackedDevice::EnumerateMotionSources()

Returns a list of all available motion sources (FNames associated with discrete tracking data that can be used to drive MotionControllerComponents).

DisableMotionTrackingForComponent
static void MotionTrackedDevice::DisableMotionTrackingForComponent(

const 	UMotionControllerComponent 	MotionControllerComponent

)

Disable tracking of the specified controller, by player index and tracked device type.

**Parameters**

MotionControllerComponent
const UMotionControllerComponent

(in) The motion controller component who's associated device is targeted.

GetMaximumMotionTrackedControllerCount
static int MotionTrackedDevice::GetMaximumMotionTrackedControllerCount()

Get the maximum number of controllers that can be tracked.

**Returns**

(int) number of controllers that can be tracked, or -1 if there is no limit (IsMotionTrackedDeviceCountManagementNecessary() should return false).

GetMotionTrackingEnabledControllerCount
static int MotionTrackedDevice::GetMotionTrackingEnabledControllerCount()

Get the number of controllers for which tracking is enabled.

**Returns**

(int) number of controllers tracked now, or -1 if this query is unsupported (IsMotionTrackedDeviceCountManagementNecessary() should return false).

IsMotionSourceTracking
static bool MotionTrackedDevice::IsMotionSourceTracking(
int 	PlayerIndex,
FName 	SourceName
	)

Queries the specified source's tracking status and returns true if it has tracking.

**Returns**

Tracking status of the specified controller.

IsMotionTrackedDeviceCountManagementNecessary
static bool MotionTrackedDevice::IsMotionTrackedDeviceCountManagementNecessary()

Returns true if it is necessary for the game to manage how many motion tracked devices it is asking to be tracked simultaneously.  On some platforms this is unnecessary because all supported devices can be tracked simultaneously.

**Returns**

(Boolean) true if the game might need to manage which motion tracked devices are actively tracked.

IsMotionTrackingEnabledForComponent
static bool MotionTrackedDevice::IsMotionTrackingEnabledForComponent(

const 	UMotionControllerComponent 	MotionControllerComponent

)

Returns true if tracking is enabled for the specified device.

**Parameters**

MotionControllerComponent
const UMotionControllerComponent

(in) The motion controller component who's associated device is targeted.

**Returns**

(Boolean) true if the specified device is set to be tracked.

IsMotionTrackingEnabledForSource
static bool MotionTrackedDevice::IsMotionTrackingEnabledForSource(
int 	PlayerIndex,
FName 	SourceName
	)

Returns true if tracking is enabled for the specified device.

**Parameters**

PlayerIndex
int

(in) The index of the player.

SourceName
FName

(in) The tracked device id.

**Returns**

(Boolean) true if the specified device is set to be tracked.

SetIsControllerMotionTrackingEnabledByDefault
static void MotionTrackedDevice::SetIsControllerMotionTrackingEnabledByDefault(
bool 	Enable
	)

Set whether motion tracked controllers activate on creation by default, or do not and must be explicitly activated.
