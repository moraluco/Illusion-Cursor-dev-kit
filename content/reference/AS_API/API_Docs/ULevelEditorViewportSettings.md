# ULevelEditorViewportSettings

**Visibility:** public

## Inheritance

UObject → ULevelEditorViewportSettings

## Description

Implements the Level Editor's view port settings.

## CONTROLS

### bInvertMiddleMousePan

```
bool bInvertMiddleMousePan
```

Whether or not to invert the direction of middle mouse panning in viewports

### FlightCameraControlExperimentalNavigation

```
bool FlightCameraControlExperimentalNavigation
```

Enable the use of the experimental navigation in the flight camera controls.

### LandscapeEditorControlType

```
ELandscapeFoliageEditorControlType LandscapeEditorControlType
```

Choose the control scheme for landscape tools (ignored for pen input)

### FoliageEditorControlType

```
ELandscapeFoliageEditorControlType FoliageEditorControlType
```

Choose the control scheme for foliage tools

### MinimumOrthographicZoom

```
float32 MinimumOrthographicZoom
```

The closest possible distance allowed when viewing through an orthographic camera

### MouseScrollCameraSpeed

```
int MouseScrollCameraSpeed
```

How fast the perspective camera moves through the world when using mouse scroll.

### MouseSensitivty

```
float32 MouseSensitivty
```

The sensitivity of mouse movement when rotating the camera.

### bInvertMouseLookYAxis

```
bool bInvertMouseLookYAxis
```

Whether or not to invert mouse on the y axis in free look mode

### bInvertOrbitYAxis

```
bool bInvertOrbitYAxis
```

Whether or not to invert mouse on y axis in orbit mode

### FlightCameraControlType

```
EWASDType FlightCameraControlType
```

Enable the use of flight camera controls under various circumstances.

### bInvertRightMouseDollyYAxis

```
bool bInvertRightMouseDollyYAxis
```

Whether or not to invert the direction of right mouse dolly on the Y axis in orbit mode

### bLevelStreamingVolumePrevis

```
bool bLevelStreamingVolumePrevis
```

If enabled, the viewport will stream in levels automatically when the camera is moved.

### bUseUE3OrbitControls

```
bool bUseUE3OrbitControls
```

When checked, orbit the camera by using the L or U keys when unchecked, Alt and Left Mouse Drag will orbit around the look at point

### ScrollGestureDirectionFor3DViewports

```
EScrollGestureDirection ScrollGestureDirectionFor3DViewports
```

Direction of the scroll gesture for 3D viewports

### ScrollGestureDirectionForOrthoViewports

```
EScrollGestureDirection ScrollGestureDirectionForOrthoViewports
```

Direction of the scroll gesture for orthographic viewports

### bLevelEditorJoystickControls

```
bool bLevelEditorJoystickControls
```

Enables joystick-based camera movement in 3D level editing viewports

### bUseDistanceScaledCameraSpeed

```
bool bUseDistanceScaledCameraSpeed
```

If enabled, scale the perspective camera speed based on the distance between the camera and its look-at position

### bOrbitCameraAroundSelection

```
bool bOrbitCameraAroundSelection
```

If enabled, the camera will orbit around the current selection in the viewport

---

## GRIDSNAPPING

### bUsePowerOf2SnapSize

```
bool bUsePowerOf2SnapSize
```

If enabled will use power of 2 grid settings (e.g, 1,2,4,8,16,...,1024) instead of decimal grid sizes

### DecimalGridSizes

```
TArray<float32> DecimalGridSizes
```

Decimal grid sizes (for translation snapping and grid rendering)

### DecimalGridIntervals

```
TArray<float32> DecimalGridIntervals
```

The number of lines between each major line interval for decimal grids

### Pow2GridSizes

```
TArray<float32> Pow2GridSizes
```

Power of 2 grid sizes (for translation snapping and grid rendering)

### Pow2GridIntervals

```
TArray<float32> Pow2GridIntervals
```

The number of lines between each major line interval for pow2 grids

### CommonRotGridSizes

```
TArray<float32> CommonRotGridSizes
```

User defined grid intervals for rotations

### DivisionsOf360RotGridSizes

```
TArray<float32> DivisionsOf360RotGridSizes
```

Preset grid intervals for rotations

### ScalingGridSizes

```
TArray<float32> ScalingGridSizes
```

Grid sizes for scaling

---

## LOOKANDFEEL

### BillboardScale

```
float32 BillboardScale
```
### SelectionHighlightIntensity

```
float32 SelectionHighlightIntensity
```

Sets the intensity of the overlay displayed when an object is selected

### BSPSelectionHighlightIntensity

```
float32 BSPSelectionHighlightIntensity
```

Sets the intensity of the overlay displayed when an object is selected

### CameraPreviewSize

```
float32 CameraPreviewSize
```

Affects the size of 'picture in picture' previews if they are enabled

### BackgroundDropDistance

```
float32 BackgroundDropDistance
```

Distance from the camera to place actors which are dropped on nothing in the view port.

### AspectRatioAxisConstraint

```
EAspectRatioAxisConstraint AspectRatioAxisConstraint
```

How to constrain perspective view port FOV

### TransformWidgetSizeAdjustment

```
int TransformWidgetSizeAdjustment
```

The size adjustment to apply to the translate/rotate/scale widgets (in Unreal units).

### MeasuringToolUnits

```
EMeasuringToolUnits MeasuringToolUnits
```

Specify the units used by the measuring tool

### SelectedSplinePointSizeAdjustment

```
float32 SelectedSplinePointSizeAdjustment
```

The size adjustment to apply to selected spline points (in screen space units).

### SplineLineThicknessAdjustment

```
float32 SplineLineThicknessAdjustment
```

The size adjustment to apply to spline line thickness which increases the spline's hit tolerance.

### SplineTangentHandleSizeAdjustment

```
float32 SplineTangentHandleSizeAdjustment
```

The size adjustment to apply to spline tangent handle (in screen space units).

### SplineTangentScale

```
float32 SplineTangentScale
```

The scale to apply to spline tangent lengths

---

## PREVIEW

### PreviewMeshes

```
TArray<FSoftObjectPath> PreviewMeshes
```

A list of meshes that can be used as preview mesh in the editor view port by holding down the backslash key

---

## FUNCTIONS

### SetbUsePercentageBasedScaling

```
void SetbUsePercentageBasedScaling(bool Value)
```

SetbCenterZoomAroundCursor

### void SetbCenterZoomAroundCursor

```
void SetbCenterZoomAroundCursor(bool Value)
```

SetbAllowTranslateRotateZWidget

### void SetbAllowTranslateRotateZWidget

```
void SetbAllowTranslateRotateZWidget(bool Value)
```

SetbAllowArcballRotate

### void SetbAllowArcballRotate

```
void SetbAllowArcballRotate(bool Value)
```

SetbAllowScreenRotate

### void SetbAllowScreenRotate

```
void SetbAllowScreenRotate(bool Value)
```

SetbClickBSPSelectsBrush

### void SetbClickBSPSelectsBrush

```
void SetbClickBSPSelectsBrush(bool Value)
```

SetbUseAbsoluteTranslation

### void SetbUseAbsoluteTranslation

```
void SetbUseAbsoluteTranslation(bool Value)
```

SetGridEnabled

### void SetGridEnabled

```
void SetGridEnabled(bool Value)
```

SetRotGridEnabled

### void SetRotGridEnabled

```
void SetRotGridEnabled(bool Value)
```

SetSnapScaleEnabled

### void SetSnapScaleEnabled

```
void SetSnapScaleEnabled(bool Value)
```

SetbPanMovesCanvas

### void SetbPanMovesCanvas

```
void SetbPanMovesCanvas(bool Value)
```

SetbEnableLayerSnap

### void SetbEnableLayerSnap

```
void SetbEnableLayerSnap(bool Value)
```

SetbEnableViewportHoverFeedback

### void SetbEnableViewportHoverFeedback

```
void SetbEnableViewportHoverFeedback(bool Value)
```

SetbHighlightWithBrackets

### void SetbHighlightWithBrackets

```
void SetbHighlightWithBrackets(bool Value)
```

SetbUseLinkedOrthographicViewports

### void SetbUseLinkedOrthographicViewports

```
void SetbUseLinkedOrthographicViewports(bool Value)
```

SetbUseSelectionOutline

### void SetbUseSelectionOutline

```
void SetbUseSelectionOutline(bool Value)
```

SetbEnableViewportCameraToUpdateFromPIV

### void SetbEnableViewportCameraToUpdateFromPIV

```
void SetbEnableViewportCameraToUpdateFromPIV(bool Value)
```

SetbPreviewSelectedCameras

### void SetbPreviewSelectedCameras

```
void SetbPreviewSelectedCameras(bool Value)
```

SetbSaveEngineStats

### void SetbSaveEngineStats

```
void SetbSaveEngineStats(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULevelEditorViewportSettings::StaticClass()
```
