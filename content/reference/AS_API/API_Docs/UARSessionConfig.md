# UARSessionConfig

**Visibility:** public

## Inheritance

UDataAsset → UARSessionConfig

## Description

An Unreal Data Asset that defines what features are used in the AR session.

## Members

### GAMEPLAY

```
AR GAMEPLAY
```
### ImageComponentClass

```
TSubclassOf<UARImageComponent> ImageComponentClass
```

@see UARImageComponent

### PlaneComponentClass

```
TSubclassOf<UARPlaneComponent> PlaneComponentClass
```

@see UARPlaneComponent

### PointComponentClass

```
TSubclassOf<UARPointComponent> PointComponentClass
```

@see UARPointComponent

### PoseComponentClass

```
TSubclassOf<UARPoseComponent> PoseComponentClass
```

@see UARPoseComponent

### FaceComponentClass

```
TSubclassOf<UARFaceComponent> FaceComponentClass
```

@see UARFaceComponent

### MeshComponentClass

```
TSubclassOf<UARMeshComponent> MeshComponentClass
```

@see UARMeshComponent

### EnvironmentProbeComponentClass

```
TSubclassOf<UAREnvironmentProbeComponent> EnvironmentProbeComponentClass
```

@see UAREnvironmentProbeComponent

### QRCodeComponentClass

```
TSubclassOf<UARQRCodeComponent> QRCodeComponentClass
```

@see UARQRCodeComponent

### ObjectComponentClass

```
TSubclassOf<UARObjectComponent> ObjectComponentClass
```

@see UARObjectComponent

### GeoAnchorComponentClass

```
TSubclassOf<UARGeoAnchorComponent> GeoAnchorComponentClass
```

@see UARGeoAnchorComponent

### SETTINGS

```
AR SETTINGS
```
### bHorizontalPlaneDetection

```
bool bHorizontalPlaneDetection
```

Boolean to determine whether flat, horizontal surfaces are detected. This feature is used by ARCore and ARKit.

### bVerticalPlaneDetection

```
bool bVerticalPlaneDetection
```

Boolean to determine whether flat, vertical surfaces are detected. This feature is used by ARCore and ARKit.

### EnvironmentCaptureProbeType

```
EAREnvironmentCaptureProbeType EnvironmentCaptureProbeType
```

@see EAREnvironmentCaptureProbeType

### bEnableAutoFocus

```
bool bEnableAutoFocus
```

Boolean to determine whether the camera should autofocus. Autofocus can cause subtle shifts in position for small objects at further camera distance. This feature is used by ARCore and ARKit.

### bEnableAutomaticCameraOverlay

```
bool bEnableAutomaticCameraOverlay
```

Boolean to determine whether the AR camera feed should be drawn as an overlay. Defaults to true. This feature is used by ARCore and ARKit.

### EnabledSessionTrackingFeature

```
EARSessionTrackingFeature EnabledSessionTrackingFeature
```

@see EARSessionTrackingFeature

### SceneReconstructionMethod

```
EARSceneReconstruction SceneReconstructionMethod
```

@see EARSceneReconstruction

### CandidateObjects

```
TArray<TObjectPtr<UARCandidateObject>> CandidateObjects
```

The list of candidate objects to search for in the scene. This feature is used by ARKit.

### bUseOptimalVideoFormat

```
bool bUseOptimalVideoFormat
```

Boolean to determine whether to automatically pick the video format that best matches the device screen size

### WorldAlignment

```
EARWorldAlignment WorldAlignment
```

@see EARWorldAlignment

### FrameSyncMode

```
EARFrameSyncMode FrameSyncMode
```

@see EARFrameSyncMode

### LightEstimationMode

```
EARLightEstimationMode LightEstimationMode
```

@see EARLightEstimationMode

### bEnableAutomaticCameraTracking

```
bool bEnableAutomaticCameraTracking
```

Boolean to determine whether the virtual camera should track the device movement. Defaults to true. This feature is used by ARCore and ARKit.

### DesiredVideoFormat

```
FARVideoFormat DesiredVideoFormat
```

The desired video format (or the default, if not supported) that this session should use if the camera is enabled.  Use GetSupportedVideoFormats to get a list of device-supported formats.

### bResetCameraTracking

```
bool bResetCameraTracking
```

Boolean to determine whether the AR system should reset camera tracking, such as its origin and transforms, when a new AR session starts. Defaults to true. This feature is used by ARKit.

### CandidateImageList

```
const TArray<UARCandidateImage> CandidateImageList
```
### CandidateImages

```
See: CandidateImages
```
### bResetTrackedObjects

```
bool bResetTrackedObjects
```

Boolean to determine whether the AR system should remove any tracked objects when a new AR session starts. Defaults to true. This feature is used by ARKit.

### bUseStandardOnboardingUX

```
bool bUseStandardOnboardingUX
```

Boolean to determine whether to use the standard onboarding UX, if the system supports it. This feature is used by ARKit.

### SessionType

```
EARSessionType SessionType
```

@see EARSessionType

### CandidateObjectList

```
TArray<UARCandidateObject> CandidateObjectList
```
### CandidateObjects

```
See: CandidateObjects
```

AR SETTINGS | IMAGE TRACKING

### bUseAutomaticImageScaleEstimation

```
bool bUseAutomaticImageScaleEstimation
```

Boolean to determine whether to automatically estimate and set the scale of a detected, or tracked, image. This feature is used by ARKit.

### CandidateImages

```
TArray<TObjectPtr<UARCandidateImage>> CandidateImages
```

The list of candidate images to detect within the AR camera view. This feature is used by ARKit.

### MaxNumSimultaneousImagesTracked

```
int MaxNumSimultaneousImagesTracked
```

The maximum number of images to track at the same time. Defaults to 1. This feature is used by ARKit.

AR SETTINGS | OCCLUSION

### bUseSceneDepthForOcclusion

```
bool bUseSceneDepthForOcclusion
```

Boolean to determine whether to use the scene depth information for occluding virtual content. This feature is used by ARCore and ARKit.

### bUsePersonSegmentationForOcclusion

```
bool bUsePersonSegmentationForOcclusion
```

Boolean to determine whether to use the person segmentation results for occluding virtual content. This feature is used by ARKit.

AR SETTINGS | WORLD MAPPING

### DefaultMeshMaterial

```
UMaterialInterface DefaultMeshMaterial
```

The default mesh material used by the generated mesh component.

### bGenerateCollisionForMeshData

```
bool bGenerateCollisionForMeshData
```

Boolean to determine whether the AR system should generate collision data from the mesh data.

### bTrackSceneObjects

```
bool bTrackSceneObjects
```

Boolean to determine whether the AR system should track scene objects: @see EARObjectClassification::SceneObject.

### bRenderMeshDataInWireframe

```
bool bRenderMeshDataInWireframe
```

Boolean to determine whether the AR system should render the mesh data as wireframe.  It is reccomended to simply set the DefaultMeshMaterial to whatever is desired, including a wireframe material and ignore this setting (there is no good reason for this to exist as a special case).

### DefaultWireframeMeshMaterial

```
UMaterialInterface DefaultWireframeMeshMaterial
```

The default mesh material used by the wireframe setting of the generated mesh component.  Note: It is recommended to ignore this wireframe feature and use a wireframe material for the DefaultMeshMaterial instead.

### bUseMeshDataForOcclusion

```
bool bUseMeshDataForOcclusion
```

Boolean to determine whether the AR system should render the mesh data as occlusion meshes.

### bGenerateNavMeshForMeshData

```
bool bGenerateNavMeshForMeshData
```

Boolean to determine whether the AR system should generate collision data from the mesh data.

### bGenerateMeshDataFromTrackedGeometry

```
bool bGenerateMeshDataFromTrackedGeometry
```

Boolean to determine whether the AR system should generate mesh data that can be used for rendering, collision, NavMesh, and more. This feature is used by OpenXR, Windows Mixed Reality.

### WorldMapData

```
TArray<uint8> WorldMapData
```

A previously saved world that will be loaded when the session starts. This feature is used by ARKit.

### SETTINGS

```
FACE AR SETTINGS
```
### FaceTrackingDirection

```
EARFaceTrackingDirection FaceTrackingDirection
```

@see EARFaceTrackingDirection

### MaxNumberOfTrackedFaces

```
int MaxNumberOfTrackedFaces
```

The maximum number of faces to track simultaneously. This feature is used by ARKit.

### FaceTrackingUpdate

```
EARFaceTrackingUpdate FaceTrackingUpdate
```

@see EARFaceTrackingUpdate

---

## VARIABLES

### PlaneDetectionMode

```
const EARPlaneDetectionMode PlaneDetectionMode
```

@see EARPlaneDetectionMode

### AR SETTINGS

```
AR SETTINGS SetFaceTrackingDirection void SetFaceTrackingDirection(EARFaceTrackingDirection InDirection)
```

### See: FaceTrackingDirection

```
See: FaceTrackingDirection
```

AddCandidateObject

### void AddCandidateObject

```
void AddCandidateObject(UARCandidateObject CandidateObject)
```

### See: CandidateObjects

```
See: CandidateObjects
```

GetCandidateImageList

### const TArray<UARCandidateImage>& GetCandidateImageList

```
const TArray<UARCandidateImage>& GetCandidateImageList()const
```

### See: CandidateImages

```
See: CandidateImages
```

GetCandidateObjectList

### const TArray<UARCandidateObject>& GetCandidateObjectList

```
const TArray<UARCandidateObject>& GetCandidateObjectList()const
```

### See: CandidateObjects

```
See: CandidateObjects
```

GetDesiredVideoFormat

### FARVideoFormat GetDesiredVideoFormat

```
FARVideoFormat GetDesiredVideoFormat()const
```

### See: DesiredVideoFormat

```
See: DesiredVideoFormat
```

GetEnabledSessionTrackingFeature

### EARSessionTrackingFeature GetEnabledSessionTrackingFeature

```
EARSessionTrackingFeature GetEnabledSessionTrackingFeature()const
```

### See: EnabledSessionTrackingFeatures

```
See: EnabledSessionTrackingFeatures
```

GetEnvironmentCaptureProbeType

### EAREnvironmentCaptureProbeType GetEnvironmentCaptureProbeType

```
EAREnvironmentCaptureProbeType GetEnvironmentCaptureProbeType()const
```

### See: EnvironmentCaptureProbeType

```
See: EnvironmentCaptureProbeType
```

GetFaceTrackingDirection

### EARFaceTrackingDirection GetFaceTrackingDirection

```
EARFaceTrackingDirection GetFaceTrackingDirection()const
```

### See: FaceTrackingDirection

```
See: FaceTrackingDirection
```

GetFaceTrackingUpdate

### EARFaceTrackingUpdate GetFaceTrackingUpdate

```
EARFaceTrackingUpdate GetFaceTrackingUpdate()const
```

### See: FaceTrackingUpdate

```
See: FaceTrackingUpdate
```

GetFrameSyncMode

### EARFrameSyncMode GetFrameSyncMode

```
EARFrameSyncMode GetFrameSyncMode()const
```

### See: FrameSyncMode

```
See: FrameSyncMode
```

GetLightEstimationMode

### EARLightEstimationMode GetLightEstimationMode

```
EARLightEstimationMode GetLightEstimationMode()const
```

### See: LightEstimationMode

```
See: LightEstimationMode
```

GetMaxNumSimultaneousImagesTracked

### int GetMaxNumSimultaneousImagesTracked

```
int GetMaxNumSimultaneousImagesTracked()const
```

### See: MaxNumSimultaneousImagesTracked

```
See: MaxNumSimultaneousImagesTracked
```

GetPlaneDetectionMode

### EARPlaneDetectionMode GetPlaneDetectionMode

```
EARPlaneDetectionMode GetPlaneDetectionMode()const
```

### See: PlaneDetectionMode

```
See: PlaneDetectionMode
```

GetSceneReconstructionMethod

### EARSceneReconstruction GetSceneReconstructionMethod

```
EARSceneReconstruction GetSceneReconstructionMethod()const
```

### See: SceneReconstructionMethod

```
See: SceneReconstructionMethod
```

GetSessionType

### EARSessionType GetSessionType

```
EARSessionType GetSessionType()const
```

### See: SessionType

```
See: SessionType
```

GetWorldAlignment

### EARWorldAlignment GetWorldAlignment

```
EARWorldAlignment GetWorldAlignment()const
```

### See: EARWorldAlignment

```
See: EARWorldAlignment
```

GetWorldMapData

### const TArray<uint8>& GetWorldMapData

```
const TArray<uint8>& GetWorldMapData()const
```

### See: WorldMapData

```
See: WorldMapData
```

SetCandidateObjectList

### void SetCandidateObjectList

```
void SetCandidateObjectList(TArray<UARCandidateObject> InCandidateObjects)
```

### See: CandidateObjects

```
See: CandidateObjects
```

SetDesiredVideoFormat

### void SetDesiredVideoFormat

```
void SetDesiredVideoFormat(FARVideoFormat NewFormat)
```

### See: DesiredVideoFormat

```
See: DesiredVideoFormat
```

SetEnableAutoFocus

### void SetEnableAutoFocus

```
void SetEnableAutoFocus(bool bNewValue)
```

### See: bEnableAutoFocus

```
See: bEnableAutoFocus
```

AddCandidateImage

### void AddCandidateImage

```
void AddCandidateImage(UARCandidateImage NewCandidateImage)
```

Add a new CandidateImage to the ARSessionConfig.

### SetFaceTrackingUpdate

```
void SetFaceTrackingUpdate(EARFaceTrackingUpdate InUpdate)
```

### See: FaceTrackingUpdate

```
See: FaceTrackingUpdate
```

SetResetCameraTracking

### void SetResetCameraTracking

```
void SetResetCameraTracking(bool bNewValue)
```

### See: bResetCameraTracking

```
See: bResetCameraTracking
```

SetResetTrackedObjects

### void SetResetTrackedObjects

```
void SetResetTrackedObjects(bool bNewValue)
```

### See: bResetTrackedObjects

```
See: bResetTrackedObjects
```

SetSceneReconstructionMethod

### void SetSceneReconstructionMethod

```
void SetSceneReconstructionMethod(EARSceneReconstruction InSceneReconstructionMethod)
```

### See: SceneReconstructionMethod

```
See: SceneReconstructionMethod
```

SetSessionTrackingFeatureToEnable

### void SetSessionTrackingFeatureToEnable

```
void SetSessionTrackingFeatureToEnable(EARSessionTrackingFeature InSessionTrackingFeature)
```

### See: EnabledSessionTrackingFeatures

```
See: EnabledSessionTrackingFeatures
```

SetWorldMapData

### void SetWorldMapData

```
void SetWorldMapData(TArray<uint8> WorldMapData)
```

### See: WorldMapData

```
See: WorldMapData
```

ShouldEnableAutoFocus

### bool ShouldEnableAutoFocus

```
bool ShouldEnableAutoFocus()const
```

### See: bEnableAutoFocus

```
See: bEnableAutoFocus
```

ShouldEnableCameraTracking

### bool ShouldEnableCameraTracking

```
bool ShouldEnableCameraTracking()const
```

### See: bEnableAutomaticCameraTracking

```
See: bEnableAutomaticCameraTracking
```

ShouldRenderCameraOverlay

### bool ShouldRenderCameraOverlay

```
bool ShouldRenderCameraOverlay()const
```

### See: bEnableAutomaticCameraOverlay

```
See: bEnableAutomaticCameraOverlay
```

ShouldResetCameraTracking

### bool ShouldResetCameraTracking

```
bool ShouldResetCameraTracking()const
```

### See: bResetCameraTracking

```
See: bResetCameraTracking
```

ShouldResetTrackedObjects

### bool ShouldResetTrackedObjects

```
bool ShouldResetTrackedObjects()const
```

### See: bResetTrackedObjects

```
See: bResetTrackedObjects
```

---

## FUNCTIONS

### SetSessionType

```
void SetSessionType(const EARSessionType& Value)
```

SetLightEstimationMode

### void SetLightEstimationMode

```
void SetLightEstimationMode(const EARLightEstimationMode& Value)
```

SetFrameSyncMode

### void SetFrameSyncMode

```
void SetFrameSyncMode(const EARFrameSyncMode& Value)
```

SetMaxNumSimultaneousImagesTracked

### void SetMaxNumSimultaneousImagesTracked

```
void SetMaxNumSimultaneousImagesTracked(const int& Value)
```

SetEnvironmentCaptureProbeType

### void SetEnvironmentCaptureProbeType

```
void SetEnvironmentCaptureProbeType(const EAREnvironmentCaptureProbeType& Value)
```

SetEnabledSessionTrackingFeature

### void SetEnabledSessionTrackingFeature

```
void SetEnabledSessionTrackingFeature(const EARSessionTrackingFeature& Value)
```

SetWorldAlignment

### void SetWorldAlignment

```
void SetWorldAlignment(const EARWorldAlignment& Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UARSessionConfig::StaticClass()
```
