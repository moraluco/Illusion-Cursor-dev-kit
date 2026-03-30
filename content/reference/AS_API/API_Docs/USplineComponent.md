# USplineComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → USplineComponent → UPaperTerrainSplineComponent

## Description

A spline component is a spline shape which can be used for other purposes (e.g. animating objects). It contains debug rendering capabilities.  @see https://​docs​.unrealengine​.com​/latest​/INT​/Resources​/ContentExamples​/Blueprint_Splines

## EDITOR

### EditorUnselectedSplineSegmentColor

```
FLinearColor EditorUnselectedSplineSegmentColor
```

Color of unselected spline component parts in the editor

### ScaleVisualizationWidth

```
float32 ScaleVisualizationWidth
```

Width of spline in editor for use with scale visualization

### bShouldVisualizeScale

```
bool bShouldVisualizeScale
```

Whether scale visualization should be displayed

### bAllowDiscontinuousSpline

```
bool bAllowDiscontinuousSpline
```

Whether the spline's leave and arrive tangents can be different

### EditorSelectedSplineSegmentColor

```
FLinearColor EditorSelectedSplineSegmentColor
```

Color of selected spline component parts in the editor

### EditorTangentColor

```
FLinearColor EditorTangentColor
```

Color of spline point tangents in the editor

---

## SPLINE

### bClosedLoop

```
bool bClosedLoop
```

Whether the spline is to be considered as a closed loop.  Use SetClosedLoop() to set this property, and IsClosedLoop() to read it.

### bStationaryEndpoints

```
bool bStationaryEndpoints
```

Whether the endpoints of the spline are considered stationary when traversing the spline at non-constant velocity.  Essentially this sets the endpoints' tangents to zero vectors.

### bInputSplinePointsToConstructionScript

```
bool bInputSplinePointsToConstructionScript
```

Whether the spline points should be passed to the User Construction Script so they can be further manipulated by it.  If false, they will not be visible to it, and it will not be able to influence the per-instance positions set in the editor.

### LoopPosition

```
float32 LoopPosition
```
### Duration

```
float32 Duration
```

Specifies the duration of the spline in seconds

### bDrawDebug

```
bool bDrawDebug
```

If true, the spline will be rendered if the Splines showflag is set.

### bSplineHasBeenEdited

```
bool bSplineHasBeenEdited
```

Whether the spline has been edited from its default by the spline component visualizer

### bLoopPositionOverride

```
bool bLoopPositionOverride
```
### ReparamStepsPerSegment

```
int ReparamStepsPerSegment
```

Number of steps per spline segment to place in the reparameterization table

NumberOfSplinePoints

### NumberOfSplinePoints

```
const int NumberOfSplinePoints
```

Get the number of points that make up this spline

NumberOfSplineSegments

### NumberOfSplineSegments

```
const int NumberOfSplineSegments
```

Get the number of segments that make up this spline

SplineLength

### const float32 SplineLength

```
const float32 SplineLength
```

Returns total length along this spline

---

## EDITOR

### SetUnselectedSplineSegmentColor

```
void SetUnselectedSplineSegmentColor(FLinearColor SegmentColor)
```

Specify unselected spline component segment color in the editor

### SetTangentColor

```
void SetTangentColor(FLinearColor TangentColor)
```

Specify selected spline component segment color in the editor

### SetSelectedSplineSegmentColor

```
void SetSelectedSplineSegmentColor(FLinearColor SegmentColor)
```

Specify selected spline component segment color in the editor

---

## SPLINE

### ClearSplinePoints

```
void ClearSplinePoints(bool bUpdateSpline = true)
```

Clears all the points in the spline

### ConvertSplineSegmentToPolyLine

```
bool ConvertSplineSegmentToPolyLine(int SplinePointStartIndex, ESplineCoordinateSpace CoordinateSpace, float32 MaxSquareDistanceFromSpline, TArray<FVector>& OutPoints)const
```

Given a threshold, returns a list of vertices along the spline segment that, treated as a list of segments (polyline), matches the spline shape.

### AddSplinePoint

```
void AddSplinePoint(FVector Position, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)
```

Adds a point to the spline

### ConvertSplineToPolyLine

```
bool ConvertSplineToPolyLine(ESplineCoordinateSpace CoordinateSpace, float32 MaxSquareDistanceFromSpline, TArray<FVector>& OutPoints)const
```

Given a threshold, returns a list of vertices along the spline that, treated as a list of segments (polyline), matches the spline shape.

### FindDirectionClosestToWorldLocation

```
FVector FindDirectionClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace)const
```

Given a location, in world space, return a unit direction vector of the spline tangent closest to the location.

### FindInputKeyClosestToWorldLocation

```
float32 FindInputKeyClosestToWorldLocation(FVector WorldLocation)const
```

Given a location, in world space, return the input key closest to that location.

### FindScaleClosestToWorldLocation

```
FVector FindScaleClosestToWorldLocation(FVector WorldLocation)const
```

Given a location, in world space, return the spline's scale closest to the location.

### FindRightVectorClosestToWorldLocation

```
FVector FindRightVectorClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace)const
```

Given a location, in world space, return a unit direction vector corresponding to the spline's right vector closest to the location.

### FindRollClosestToWorldLocation

```
float32 FindRollClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace)const
```

Given a location, in world space, return the spline's roll closest to the location, in degrees.

### FindRotationClosestToWorldLocation

```
FRotator FindRotationClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace)const
```

Given a location, in world space, return rotation corresponding to the spline's rotation closest to the location.

### FindTangentClosestToWorldLocation

```
FVector FindTangentClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace)const
```

Given a location, in world space, return the tangent vector of the spline closest to the location.

DivideSplineIntoPolylineRecursive

### bool DivideSplineIntoPolylineRecursive

```
bool DivideSplineIntoPolylineRecursive(
```

float32 	StartDistanceAlongSpline,

### float32 	EndDistanceAlongSpline,

```
float32 	EndDistanceAlongSpline, ESplineCoordinateSpace 	CoordinateSpace, float32 	MaxSquareDistanceFromSpline, TArray<FVector>& 	OutPoints
```

) const

### Given a threshold, recursively sub-divides the spline section until the list of segments

```
Given a threshold, recursively sub-divides the spline section until the list of segments(polyline)matches the spline shape.
```

FindTransformClosestToWorldLocation

### FTransform FindTransformClosestToWorldLocation

```
FTransform FindTransformClosestToWorldLocation(
```

FVector 	WorldLocation,

ESplineCoordinateSpace 	CoordinateSpace,

bool 	bUseScale	 = 	false

### ) const

```
) const
```

Given a location, in world space, return an FTransform closest to that location.

### FindUpVectorClosestToWorldLocation

```
FVector FindUpVectorClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace)const
```

Given a location, in world space, return a unit direction vector corresponding to the spline's up vector closest to the location.

### GetArriveTangentAtSplinePoint

```
FVector GetArriveTangentAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace)const
```

Get the arrive tangent at spline point

### AddSplinePointAtIndex

```
void AddSplinePointAtIndex(FVector Position, int Index, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)
```

Adds a point to the spline at the specified index

### AddPoints

```
void AddPoints(TArray<FSplinePoint> Points, bool bUpdateSpline = true)
```

Adds an array of FSplinePoints to the spline.

### FindLocationClosestToWorldLocation

```
FVector FindLocationClosestToWorldLocation(FVector WorldLocation, ESplineCoordinateSpace CoordinateSpace)const
```

Given a location, in world space, return the point on the curve that is closest to the location.

### GetDefaultUpVector

```
FVector GetDefaultUpVector(ESplineCoordinateSpace CoordinateSpace)const
```

Gets the default up vector used by this spline

### GetDirectionAtSplinePoint

```
FVector GetDirectionAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace)const
```

Get the direction at spline point

### GetDirectionAtTime

```
FVector GetDirectionAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false)const
```

Given a time from 0 to the spline duration, return a unit direction vector of the spline tangent there.

### GetDistanceAlongSplineAtSplineInputKey

```
float32 GetDistanceAlongSplineAtSplineInputKey(float32 InKey)const
```

Get distance along the spline at the provided input key value

### GetDistanceAlongSplineAtSplinePoint

```
float32 GetDistanceAlongSplineAtSplinePoint(int PointIndex)const
```

Get the distance along the spline at the spline point

### GetFloatPropertyAtSplineInputKey

```
float32 GetFloatPropertyAtSplineInputKey(float32 InKey, FName PropertyName)const
```

Get a metadata property float value along the spline at spline input key

### GetFloatPropertyAtSplinePoint

```
float32 GetFloatPropertyAtSplinePoint(int Index, FName PropertyName)const
```

Get a metadata property float value along the spline at spline point

### GetInputKeyAtDistanceAlongSpline

```
float32 GetInputKeyAtDistanceAlongSpline(float32 Distance)const
```

Given a distance along the length of this spline, return the corresponding input key at that point

### GetLeaveTangentAtSplinePoint

```
FVector GetLeaveTangentAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace)const
```

Get the leave tangent at spline point

### GetLocationAndTangentAtSplinePoint

```
void GetLocationAndTangentAtSplinePoint(int PointIndex, FVector& Location, FVector& Tangent, ESplineCoordinateSpace CoordinateSpace)const
```

Get location and tangent at a spline point

### GetLocationAtDistanceAlongSpline

```
FVector GetLocationAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace)const
```

Given a distance along the length of this spline, return the point in space where this puts you

### GetLocationAtSplineInputKey

```
FVector GetLocationAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace)const
```

Get location along spline at the provided input key value

### GetLocationAtSplinePoint

```
FVector GetLocationAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace)const
```

Get the location at spline point

### GetLocationAtTime

```
FVector GetLocationAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false)const
```

Given a time from 0 to the spline duration, return the point in space where this puts you

### GetNumberOfSplinePoints

```
int GetNumberOfSplinePoints()const
```

Get the number of points that make up this spline

### GetNumberOfSplineSegments

```
int GetNumberOfSplineSegments()const
```

Get the number of segments that make up this spline

### GetRightVectorAtDistanceAlongSpline

```
FVector GetRightVectorAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace)const
```

Given a distance along the length of this spline, return a unit direction vector corresponding to the spline's right vector there.

### GetRightVectorAtSplineInputKey

```
FVector GetRightVectorAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace)const
```

Get right vector at the provided input key value

### GetDirectionAtDistanceAlongSpline

```
FVector GetDirectionAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace)const
```

Given a distance along the length of this spline, return a unit direction vector of the spline tangent there.

### GetRightVectorAtTime

```
FVector GetRightVectorAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false)const
```

Given a time from 0 to the spline duration, return the spline's right vector there.

### GetDirectionAtSplineInputKey

```
FVector GetDirectionAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace)const
```

Get unit direction along spline at the provided input key value

### GetRightVectorAtSplinePoint

```
FVector GetRightVectorAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace)const
```

Get the right vector at spline point

### GetRollAtSplinePoint

```
float32 GetRollAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace)const
```

Get the amount of roll at spline point, in degrees

### GetRollAtTime

```
float32 GetRollAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false)const
```

Given a time from 0 to the spline duration, return the spline's roll there, in degrees.

### AddPoint

```
void AddPoint(FSplinePoint Point, bool bUpdateSpline = true)
```

Adds an FSplinePoint to the spline. This contains its input key, position, tangent, rotation and scale.

### GetRotationAtSplineInputKey

```
FRotator GetRotationAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace)const
```

Get rotator corresponding to rotation along spline at the provided input key value

### GetRotationAtSplinePoint

```
FRotator GetRotationAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace)const
```

Get the rotation at spline point as a rotator

### GetRotationAtTime

```
FRotator GetRotationAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false)const
```

Given a time from 0 to the spline duration, return a rotation corresponding to the spline's position and direction there.

### GetScaleAtDistanceAlongSpline

```
FVector GetScaleAtDistanceAlongSpline(float32 Distance)const
```

Given a distance along the length of this spline, return the spline's scale there.

### GetScaleAtSplineInputKey

```
FVector GetScaleAtSplineInputKey(float32 InKey)const
```

Get scale at the provided input key value

### GetScaleAtSplinePoint

```
FVector GetScaleAtSplinePoint(int PointIndex)const
```

Get the scale at spline point

### GetScaleAtTime

```
FVector GetScaleAtTime(float32 Time, bool bUseConstantVelocity = false)const
```

Given a time from 0 to the spline duration, return the spline's scale there.

### GetSplineLength

```
float32 GetSplineLength()const
```

Returns total length along this spline

### GetSplinePointType

```
ESplinePointType GetSplinePointType(int PointIndex)const
```

Get the type of a spline point

### GetTangentAtDistanceAlongSpline

```
FVector GetTangentAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace)const
```

Given a distance along the length of this spline, return the tangent vector of the spline there.

### GetTangentAtSplineInputKey

```
FVector GetTangentAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace)const
```

Get tangent along spline at the provided input key value

### GetTangentAtSplinePoint

```
FVector GetTangentAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace)const
```

Get the tangent at spline point. This fetches the Leave tangent of the point.

### GetTangentAtTime

```
FVector GetTangentAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false)const
```

Given a time from 0 to the spline duration, return the spline's tangent there.

### GetTransformAtDistanceAlongSpline

```
FTransform GetTransformAtDistanceAlongSpline(
```

float32 	Distance,

ESplineCoordinateSpace 	CoordinateSpace,

bool 	bUseScale	 = 	false

) const

### Given a distance along the length of this spline, return an FTransform corresponding to that point on the spline.

```
Given a distance along the length of this spline, return an FTransform corresponding to that point on the spline.
```

GetTransformAtSplineInputKey

### FTransform GetTransformAtSplineInputKey

```
FTransform GetTransformAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace, bool bUseScale = false)const
```

Get transform at the provided input key value

### GetTransformAtSplinePoint

```
FTransform GetTransformAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace, bool bUseScale = false)const
```

Get the transform at spline point

### GetTransformAtTime

```
FTransform GetTransformAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false, bool bUseScale = false)const
```

Given a time from 0 to the spline duration, return the spline's transform at the corresponding position.

### GetUpVectorAtDistanceAlongSpline

```
FVector GetUpVectorAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace)const
```

Given a distance along the length of this spline, return a unit direction vector corresponding to the spline's up vector there.

### GetUpVectorAtSplineInputKey

```
FVector GetUpVectorAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace)const
```

Get up vector at the provided input key value

### GetUpVectorAtSplinePoint

```
FVector GetUpVectorAtSplinePoint(int PointIndex, ESplineCoordinateSpace CoordinateSpace)const
```

Get the up vector at spline point

### GetUpVectorAtTime

```
FVector GetUpVectorAtTime(float32 Time, ESplineCoordinateSpace CoordinateSpace, bool bUseConstantVelocity = false)const
```

Given a time from 0 to the spline duration, return the spline's up vector there.

### GetVectorPropertyAtSplineInputKey

```
FVector GetVectorPropertyAtSplineInputKey(float32 InKey, FName PropertyName)const
```

Get a metadata property vector value along the spline at spline input key

### GetVectorPropertyAtSplinePoint

```
FVector GetVectorPropertyAtSplinePoint(int Index, FName PropertyName)const
```

Get a metadata property vector value along the spline at spline point

### IsClosedLoop

```
bool IsClosedLoop()const
```

Check whether the spline is a closed loop or not

### RemoveSplinePoint

```
void RemoveSplinePoint(int Index, bool bUpdateSpline = true)
```

Removes point at specified index from the spline

### SetClosedLoop

```
void SetClosedLoop(bool bInClosedLoop, bool bUpdateSpline = true)
```

Specify whether the spline is a closed loop or not. The loop position will be at 1.0 after the last point's input key

### SetClosedLoopAtPosition

```
void SetClosedLoopAtPosition(bool bInClosedLoop, float32 Key, bool bUpdateSpline = true)
```

Specify whether the spline is a closed loop or not, and if so, the input key corresponding to the loop point

### SetDefaultUpVector

```
void SetDefaultUpVector(FVector UpVector, ESplineCoordinateSpace CoordinateSpace)
```

Sets the default up vector used by this spline

### SetDrawDebug

```
void SetDrawDebug(bool bShow)
```

Specify whether this spline should be rendered when the Editor/Game spline show flag is set

### SetLocationAtSplinePoint

```
void SetLocationAtSplinePoint(int PointIndex, FVector InLocation, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)
```

Move an existing point to a new location

### SetRotationAtSplinePoint

```
void SetRotationAtSplinePoint(int PointIndex, FRotator InRotation, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)
```

Set the rotation of an existing spline point

### SetScaleAtSplinePoint

```
void SetScaleAtSplinePoint(int PointIndex, FVector InScaleVector, bool bUpdateSpline = true)
```

Set the scale at a given spline point

### GetRollAtDistanceAlongSpline

```
float32 GetRollAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace)const
```

Given a distance along the length of this spline, return the spline's roll there, in degrees.

### SetSplinePoints

```
void SetSplinePoints(TArray<FVector> Points, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)
```

Sets the spline to an array of points

### SetSplinePointType

```
void SetSplinePointType(int PointIndex, ESplinePointType Type, bool bUpdateSpline = true)
```

Specify the type of a spline point

### SetTangentAtSplinePoint

```
void SetTangentAtSplinePoint(int PointIndex, FVector InTangent, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)
```

Specify the tangent at a given spline point

### GetRollAtSplineInputKey

```
float32 GetRollAtSplineInputKey(float32 InKey, ESplineCoordinateSpace CoordinateSpace)const
```

Get roll in degrees at the provided input key value

### SetTangentsAtSplinePoint

```
void SetTangentsAtSplinePoint(int PointIndex, FVector InArriveTangent, FVector InLeaveTangent, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)
```

Specify the tangents at a given spline point

### GetRotationAtDistanceAlongSpline

```
FRotator GetRotationAtDistanceAlongSpline(float32 Distance, ESplineCoordinateSpace CoordinateSpace)const
```

Given a distance along the length of this spline, return a rotation corresponding to the spline's rotation there.

### SetUpVectorAtSplinePoint

```
void SetUpVectorAtSplinePoint(int PointIndex, FVector InUpVector, ESplineCoordinateSpace CoordinateSpace, bool bUpdateSpline = true)
```

Specify the up vector at a given spline point

### UpdateSpline

```
void UpdateSpline()
```

Update the spline tangents and SplineReparamTable

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static USplineComponent USplineComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USplineComponent USplineComponent::GetOrCreate

```
static USplineComponent USplineComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USplineComponent USplineComponent::Create

```
static USplineComponent USplineComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USplineComponent::StaticClass

```
static UClass USplineComponent::StaticClass()
```
