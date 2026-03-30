# UVRNotificationsComponent

**Visibility:** public

## Inheritance

UActorComponent → UVRNotificationsComponent → VARIABLES → HMDReconnectedDelegate

## Description

FVRNotificationsDelegate__VRNotificationsComponent HMDReconnectedDelegate

This will be called when connection to HMD is restored.

HMDTrackingInitializedDelegate FVRNotificationsDelegate__VRNotificationsComponent HMDTrackingInitializedDelegate

This will be called on Morpheus when the HMD is done initializing and therefore reprojection will start functioning.  The app can continue now. (PS4 Only)

HMDRecenteredDelegate FVRNotificationsDelegate__VRNotificationsComponent HMDRecenteredDelegate

This will be called when the application is asked for VR headset recenter.

HMDLostDelegate FVRNotificationsDelegate__VRNotificationsComponent HMDLostDelegate

This will be called when connection to HMD is lost.

HMDTrackingInitializingAndNeedsHMDToBeTrackedDelegate FVRNotificationsDelegate__VRNotificationsComponent HMDTrackingInitializingAndNeedsHMDToBeTrackedDelegate

This will be called on Morpheus if the HMD starts up and is not fully initialized (in NOT_STARTED or CALIBRATING states).  The HMD will stay in NOT_STARTED until it is successfully position tracked.  Until it exits NOT_STARTED orientation based reprojection does not happen.  Therefore we do not update rotation at all to avoid user discomfort.  Instructions to get the hmd tracked should be shown to the user.  Sony may fix this eventually. (PS4 Only)

HMDConnectCanceledDelegate FVRNotificationsDelegate__VRNotificationsComponent HMDConnectCanceledDelegate

This will be called when the user declines to connect the HMD when prompted to do so by a system dialog. (PS4 Only)

HMDPutOnHeadDelegate FVRNotificationsDelegate__VRNotificationsComponent HMDPutOnHeadDelegate

This will be called when the HMD detects that it has been put on by a player.

HMDRemovedFromHeadDelegate FVRNotificationsDelegate__VRNotificationsComponent HMDRemovedFromHeadDelegate

This will be called when the HMD detects that it has been taken off by a player (disconnecting the hmd also causes it to register as taken off).

VRControllerRecenteredDelegate FVRNotificationsDelegate__VRNotificationsComponent VRControllerRecenteredDelegate

This will be called when the VR system recenters a controller.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UVRNotificationsComponent UVRNotificationsComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UVRNotificationsComponent UVRNotificationsComponent::GetOrCreate

```
static UVRNotificationsComponent UVRNotificationsComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UVRNotificationsComponent UVRNotificationsComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UVRNotificationsComponent::StaticClass

```
static UClass UVRNotificationsComponent::StaticClass()
```
