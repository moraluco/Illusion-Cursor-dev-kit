# XRAsset

## Inheritance

XRAsset

## XR \| DEVICES

AddNamedDeviceVisualizationComponentBlocking

### static UPrimitiveComponent XRAsset::AddNamedDeviceVisualizationComponentBlocking

```
static UPrimitiveComponent XRAsset::AddNamedDeviceVisualizationComponentBlocking(
```

	AActor 	Target,

const 	FName 	SystemName,

const 	FName 	DeviceName,

### bool 	bManualAttachment,

```
bool 	bManualAttachment, 	FTransform 	RelativeTransform, 	FXRDeviceId& 	XRDeviceId
```

)

### Spawns a render component for the specified XR device.

```
Spawns a render component for the specified XR device.
```

NOTE: The associated XR system backend has to provide a model for this to work - if one is not available for the specific device, then this will fail and return an invalid (null) object.

**Parameters**

Target
AActor

The intended owner for the component to attach to.

SystemName
const FName

(optional) Targets a specific XR system (i.e. 'Oculus', 'SteamVR', etc.). If left as 'None', then the first system found that can render the device will be used.

DeviceName
const FName

Source name of the specific device - expect the same names that the MotionControllerComponent's "MotionSource" field uses ('Left', 'Right', etc.).

bManualAttachment
bool

If set, will leave the component unattached (mirror's the same option on the generic AddComponent node). When unset the component will attach to the actor's root.

RelativeTransform
FTransform

Specifies the component initial transform (relative to its attach parent).

**Returns**

A new component representing the specified device (invalid/null if a model for the device doesn't exist).

AddDeviceVisualizationComponentBlocking
static UPrimitiveComponent XRAsset::AddDeviceVisualizationComponentBlocking(

AActor 	Target,
FXRDeviceId 	XRDeviceId,
bool 	bManualAttachment,
FTransform 	RelativeTransform

)

Spawns a render component for the specified XR device.

NOTE: The associated XR system backend has to provide a model for this to work - if one is not available for the specific device, then this will fail and return an invalid (null) object.

**Parameters**

Target
AActor

The intended owner for the component to attach to.

XRDeviceId
FXRDeviceId

Specifies the device you're wanting a model for.

bManualAttachment
bool

If set, will leave the component unattached (mirror's the same option on the generic AddComponent node). When unset the component will attach to the actor's root.

RelativeTransform
FTransform

Specifies the component initial transform (relative to its attach parent).

**Returns**

A new component representing the specified device (invalid/null if a model for the device doesn't exist).
