# AR

## Inheritance

AR

## Description

STATIC VARIABLES CurrentLightEstimate static const UARLightEstimate AR::CurrentLightEstimate AllGeometries static const TArray<UARTrackedGeometry> AR::AllGeometries AllPins static const TArray<UARPin> AR::AllPins AllTracked2DPoses static const TArray<FARPose2D> AR::AllTracked2DPoses ARSessionStatus static const FARSessionStatus AR::ARSessionStatus ARWorldScale static float32 AR::ARWorldScale AlignmentTransform static FTransform AR::AlignmentTransform NumberOfTrackedFacesSupported static const int AR::NumberOfTrackedFacesSupported PointCloud static const TArray<FVector> AR::PointCloud SessionConfig static const UARSessionConfig AR::SessionConfig TrackingQuality static const EARTrackingQuality AR::TrackingQuality TrackingQualityReason static const EARTrackingQualityReason AR::TrackingQualityReason WorldMappingStatus static const EARWorldMappingState AR::WorldMappingStatus

## ALIGNMENT

### CalculateClosestIntersection

```
static void AR::CalculateClosestIntersection(TArray<FVector> StartPoints, TArray<FVector> EndPoints, FVector& ClosestIntersection)
```

### Alignment helpers

```
Alignment helpers
```

CalculateAlignmentTransform

### static void AR::CalculateAlignmentTransform

```
static void AR::CalculateAlignmentTransform(FTransform TransformInFirstCoordinateSystem, FTransform TransformInSecondCoordinateSystem, FTransform& AlignmentTransform)
```

Computes a transform that aligns two coordinate systems. Requires the transform of the same known point in each coordinate system.

---

## AR

### SetEnabledXRCamera

```
static void AR::SetEnabledXRCamera(bool bOnOff)
```

Enable or disable Mixed Reality Capture camera.

### ResizeXRCamera

```
static FIntPoint AR::ResizeXRCamera(FIntPoint InSize)
```

Change screen size of Mixed Reality Capture camera.

### AR AUGMENTEDREALITY

```
AR AUGMENTEDREALITY AddTrackedPointWithName static bool AR::AddTrackedPointWithName(FTransform WorldTransform, FString PointName, bool bDeletePointsWithSameName = true)
```

Manually add a tracked point with name and world transform.  @WorldTransform: transform in the world space where the point should be created.  @PointName: the name of the created point, must be non-empty.  @bDeletePointsWithSameName: if existing points with the same name should be deleted.

**Returns**

if the operation succeeds. Note that this is an async operation

the added point won't be available until a few frames later.

FindTrackedPointsByName
static TArray<UARTrackedPoint> AR::FindTrackedPointsByName(
FString 	PointName
	)

**Returns**

a list of the tracked points with the given name

AR AUGMENTEDREALITY|ALIGNMENT
GetARWorldScale
static float32 AR::GetARWorldScale()

**Returns**

the AR world scale, see "SetARWorldScale"

SetARWorldScale
static void AR::SetARWorldScale(
float32 	InWorldScale
	)

Helper function that modifies the alignment transform scale so that virtual content in the world space appears to be "scaled".  Note that ultimately the scaling effect is achieved through modifying the translation of the camera: moving the camera further away from the origin makes objects appear to be smaller, and vice versa.

GetAlignmentTransform
static FTransform AR::GetAlignmentTransform()

**Returns**

the alignment transform, see "SetAlignmentTransform"

SetAlignmentTransform
static void AR::SetAlignmentTransform(
FTransform 	InAlignmentTransform
	)

Set a transform that will be applied to the tracking space. This effectively moves any camera possessed by the Augmented Reality system such that it is pointing at a different spot in Unreal's World Space. This is often done to support AR scenarios that rely on static geometry and/or lighting.

Note: any movable components that are pinned will appear to stay in place, while anything not pinned or is not movable (static or stationary) will appear to move.

\see PinComponent \see PinComponentToTraceResult

SetARWorldOriginLocationAndRotation
static void AR::SetARWorldOriginLocationAndRotation(
FVector 	OriginLocation,
FRotator 	OriginRotation,
bool 	bIsTransformInWorldSpace	 = 	true,
bool 	bMaintainUpDirection	 = 	true
	)

For a point P in the AR local space, whose location and rotation are "OriginLocation" and "OriginRotation" in the world space modify the alignment transform so that the same point P will be transformed to the origin in the world space.  @bIsTransformInWorldSpace: whether "OriginLocation" and "OriginRotation" are specified in UE4's world space or AR system's local space.  @bMaintainUpDirection: if set, only the yaw roation of the alignment transform will be modified, pitch and roll will be zeroed out.

AR AUGMENTEDREALITY|ARPIN
GetAllPins
static TArray<UARPin> AR::GetAllPins()

Get a list of all the \c UARPin objects that the Augmented Reality session is currently using to connect virtual objects to real-world, tracked locations.

IsARPinLocalStoreReady
static bool AR::IsARPinLocalStoreReady()

Is ARPin Local Store Ready

**Returns**

True if local store is ready for use.

RemoveARPinFromLocalStore
static void AR::RemoveARPinFromLocalStore(
FName 	InSaveName
	)

Remove an ARPin from the local store

RemoveAllARPinsFromLocalStore
static void AR::RemoveAllARPinsFromLocalStore()

Remove all ARPins from the local store

IsARPinLocalStoreSupported
static bool AR::IsARPinLocalStoreSupported()

Is ARPin Local Store Supported

**Returns**

True if Local Pin saving is supported by the device/platform.

PinComponentToTraceResult
static UARPin AR::PinComponentToTraceResult(
	USceneComponent 	ComponentToPin,
	FARTraceResult 	TraceResult,
const 	FName 	DebugName	 = 	NAME_None
	)

A convenient version of \c PinComponent() that can be used in conjunction with a result of a \c LineTraceTrackedObjects call.

SaveARPinToLocalStore
static bool AR::SaveARPinToLocalStore(
FName 	InSaveName,
UARPin 	InPin
	)

Save an ARPin to local store

**Parameters**

InPin
UARPin

The ARPin which will be saved to the local store.

**Returns**

True if saved successfully.

UnpinComponent
static void AR::UnpinComponent(
USceneComponent 	ComponentToUnpin
	)

Given a pinned \c ComponentToUnpin, remove its attachment to the real world.

PinComponent
static UARPin AR::PinComponent(
	USceneComponent 	ComponentToPin,
	FTransform 	PinToWorldTransform,
	UARTrackedGeometry 	TrackedGeometry	 = 	nullptr,
const 	FName 	DebugName	 = 	NAME_None
	)

Pin an Unreal Component to a location in tracking spce (i.e. the real world).

**Parameters**

ComponentToPin
USceneComponent

The component that should be pinned.

PinToWorldTransform
FTransform

A transform (in Unreal World Space) that corresponds to a physical location where the component should be pinned.

TrackedGeometry
UARTrackedGeometry

An optional, real-world geometry that is recognized by the AR system; any correction to the position of this geometry will be applied to the pinned component.

DebugName
const FName

An optional name that will be displayed when this pin is being drawn for debugging purposes.

**Returns**

an object representing the pin that connects \c ComponentToPin component to a real-world location and optionally to the \c TrackedGeometry.

PinComponentToARPin
static bool AR::PinComponentToARPin(
USceneComponent 	ComponentToPin,
UARPin 	Pin
	)

Associate a component with an ARPin, so that its transform will be updated by the pin.  Any previously associated component will be detached.

**Parameters**

ComponentToPin
USceneComponent

The Component which will be updated by the Pin.

Pin
UARPin

The Pin which the component will be updated by.

**Returns**

True if the operation was successful.

LoadARPinsFromLocalStore
static TMap<FName,UARPin> AR::LoadARPinsFromLocalStore()

Load all ARPins from local save Note: Multiple loads of a saved pin may result in duplicate pins OR overwritten pins.  It is reccomended to only load once.

**Returns**

Map of SaveName:ARPin.

RemovePin
static void AR::RemovePin(
UARPin 	PinToRemove
	)

Remove a pin such that it no longer updates the associated component.

AR AUGMENTEDREALITY|CAPABILITIES
GetSupportedVideoFormats
static TArray<FARVideoFormat> AR::GetSupportedVideoFormats(
EARSessionType 	SessionType
	)

**Returns**

The list of supported video formats for this device

AR AUGMENTEDREALITY|CLASSIFICATION
GetObjectClassificationAtLocation
static bool AR::GetObjectClassificationAtLocation(

FVector 	InWorldLocation,
EARObjectClassification& 	OutClassification,
FVector& 	OutClassificationLocation,
float32 	MaxLocationDiff	 = 	10.000000

)

Try to determine the classification of the object at a world space location @InWorldLocation: the world location where the classification is needed @OutClassification: the classification result @OutClassificationLocation: the world location at where the classification is calculated @MaxLocationDiff: the max distance between the specified world location and the classification location

**Returns**

whether a valid classification result is calculated
AR AUGMENTEDREALITY|DEBUG
DebugDrawPin
static void AR::DebugDrawPin(

UARPin 	ARPin,
	,
FLinearColor 	Color	 = 	FLinearColor ( 1.000000 , 1.000000 , 0.000000 , 0.750000 ),
float32 	Scale	 = 	5.000000,
float32 	PersistForSeconds	 = 	0.000000

)

Given a \c UARPin, draw it for debugging purposes.

DebugDrawTrackedGeometry
static void AR::DebugDrawTrackedGeometry(

UARTrackedGeometry 	TrackedGeometry,
	,
FLinearColor 	Color	 = 	FLinearColor ( 1.000000 , 1.000000 , 0.000000 , 0.750000 ),
float32 	OutlineThickness	 = 	5.000000,
float32 	PersistForSeconds	 = 	0.000000

)

Given some real-world geometry being tracked by the Augmented Reality system, draw it on the screen for debugging purposes (rudimentary)

AR AUGMENTEDREALITY|FACE TRACKING
GetNumberOfTrackedFacesSupported
static int AR::GetNumberOfTrackedFacesSupported()

**Returns**

the max number of faces can be tracked at the same time

AR AUGMENTEDREALITY|GEO TRACKING
GetCameraIntrinsics
static bool AR::GetCameraIntrinsics(
FARCameraIntrinsics& 	OutCameraIntrinsics
	)

**Returns**

the intrinsics of the AR camera.

AR AUGMENTEDREALITY|LIGHT ESTIMATE
GetCurrentLightEstimate
static UARLightEstimate AR::GetCurrentLightEstimate()

An AugmentedReality session can be configured to provide light estimates.  The specific approach to light estimation can be configured by the \c UARSessionConfig specified during \c StartARSession(). This function assumes that you will cast the returned \c UARLightEstimate to a derived type corresponding to your session config.

**Returns**

a \c UARLighEstimate that can be cast to a derived class.

AR AUGMENTEDREALITY|POSE TRACKING
GetAllTracked2DPoses
static TArray<FARPose2D> AR::GetAllTracked2DPoses()

**Returns**

all the 2D poses tracked by the AR system

AR AUGMENTEDREALITY|SESSION
GetARSessionStatus
static FARSessionStatus AR::GetARSessionStatus()

It is intended that you check the status of the Augmented Reality session on every frame and take action accordingly.  e.g. if the session stopped for an unexpected reason, you might give the user a prompt to re-start the session

**Returns**

The status of a current Augmented Reality session: e.g. Running or Not running for a specific reason.

ToggleARCapture
static bool AR::ToggleARCapture(
bool 	bOnOff,
EARCaptureType 	CaptureType
	)

Starts or stops a battery intensive service on device.

StopARSession
static void AR::StopARSession()

Stop a running Augmented Reality session and clear any state.

PauseARSession
static void AR::PauseARSession()

Pause a running Augmented Reality session without clearing existing state.

StartARSession
static void AR::StartARSession(
UARSessionConfig 	SessionConfig
	)

Begin a new Augmented Reality session. Subsequently, use the \c GetARSessionStatus() function to figure out the status of the session.

**Parameters**

SessionConfig
UARSessionConfig

Describes the tracking method to use, what kind of geometry to detect in the world, etc.

GetSessionConfig
static UARSessionConfig AR::GetSessionConfig()

**Returns**

the configuration that the current session was started with.

IsSceneReconstructionSupported
static bool AR::IsSceneReconstructionSupported(

EARSessionType 	SessionType,
EARSceneReconstruction 	SceneReconstructionMethod

)

**Returns**

if a particular scene reconstruction method is supported with the specified session type on the current platform

IsSessionTrackingFeatureSupported
static bool AR::IsSessionTrackingFeatureSupported(

EARSessionType 	SessionType,
EARSessionTrackingFeature 	SessionTrackingFeature

)

**Returns**

if a particular session feature is supported with the specified session type on the current platform

AddRuntimeCandidateImage
static UARCandidateImage AR::AddRuntimeCandidateImage(
UARSessionConfig 	SessionConfig,
UTexture2D 	CandidateTexture,
FString 	FriendlyName,
float32 	PhysicalWidth
	)

Create an ARCandidateImage object and add it to the ARCandidateImageList of the given \c UARSessionConfig object.

Note that you need to restart the AR session with the \c UARSessionConfig you are adding to to make the change take effect.

On ARCore platform, you can leave the PhysicalWidth to 0 if you don't know the physical size of the image or the physical size is dynamic. And this function takes time to perform non-trivial image processing (20ms - 30ms), and should be run on a background thread.

**Returns**

A \c UARCandidateImage Object pointer if the underlying ARPlatform added the candidate image at runtime successfully. Return nullptr otherwise.

IsARSupported
static bool AR::IsARSupported()

Checks if the current device can support AR

AR AUGMENTEDREALITY|TEXTURE
GetARTexture
static UARTexture AR::GetARTexture(
EARTextureType 	TextureType
	)

**Returns**

the AR texture for the specified type

AR AUGMENTEDREALITY|TRACE RESULT
LineTraceTrackedObjects3D
static TArray<FARTraceResult> AR::LineTraceTrackedObjects3D(

const 	FVector 	Start,
const 	FVector 	End,
	bool 	bTestFeaturePoints	 = 	true,
	bool 	bTestGroundPlane	 = 	true,
	bool 	bTestPlaneExtents	 = 	true,
	bool 	bTestPlaneBoundaryPolygon	 = 	true

)

Perform a line trace against any real-world geometry as tracked by the AR system.

**Parameters**

Start
const FVector

Start point of the trace, in world space.

End
const FVector

End point of the trace, in world space.

**Returns**

a list of \c FARTraceResult sorted by distance from camera.

LineTraceTrackedObjects
static TArray<FARTraceResult> AR::LineTraceTrackedObjects(

const 	FVector2D 	ScreenCoord,
	bool 	bTestFeaturePoints	 = 	true,
	bool 	bTestGroundPlane	 = 	true,
	bool 	bTestPlaneExtents	 = 	true,
	bool 	bTestPlaneBoundaryPolygon	 = 	true

)

Perform a line trace against any real-world geometry as tracked by the AR system.

**Parameters**

ScreenCoord
const FVector2D

Coordinate of the point on the screen from which to cast a ray into the tracking space.

**Returns**

a list of \c FARTraceResult sorted by distance from camera.

AR AUGMENTEDREALITY|TRACKING
GetAllGeometriesByClass
static TArray<UARTrackedGeometry> AR::GetAllGeometriesByClass(

TSubclassOf<UARTrackedGeometry> 	GeometryClass

)

**Returns**

a list of all the real-world geometry of the specified class as currently seen by the Augmented Reality system

IsSessionTypeSupported
static bool AR::IsSessionTypeSupported(
EARSessionType 	SessionType
	)

Test whether this type of session is supported by the current Augmented Reality platform.  e.g. is your device capable of doing positional tracking or orientation only?

AddManualEnvironmentCaptureProbe
static bool AR::AddManualEnvironmentCaptureProbe(
FVector 	Location,
FVector 	Extent
	)

Adds an environment capture probe to the ar world

GetWorldMappingStatus
static EARWorldMappingState AR::GetWorldMappingStatus()

**Returns**

the current world mapping status for the AR world

GetTrackingQualityReason
static EARTrackingQualityReason AR::GetTrackingQualityReason()

**Returns**

The reason for the current limited tracking state

GetTrackingQuality
static EARTrackingQuality AR::GetTrackingQuality()

**Returns**

how well the tracking system is performing at the moment

GetPointCloud
static TArray<FVector> AR::GetPointCloud()

**Returns**

the raw point cloud view of the AR scene

GetAllGeometries
static TArray<UARTrackedGeometry> AR::GetAllGeometries()

**Returns**

a list of all the real-world geometry as currently seen by the Augmented Reality system
