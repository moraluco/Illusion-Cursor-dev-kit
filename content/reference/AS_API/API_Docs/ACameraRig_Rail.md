# ACameraRig_Rail

**Visibility:** public

## Inheritance

AActor → ACameraRig_Rail

## Description

RAIL COMPONENTS RailCameraMount USceneComponent RailCameraMount

Component to define the attach point for cameras. Moves along the rail.

TransformComponent USceneComponent TransformComponent

Root component to give the whole actor a transform.

RailSplineComponent USplineComponent RailSplineComponent

Spline component to define the rail path.

## Members

### CONTROLS

```
RAIL CONTROLS
```
### PreviewMeshScale

```
float32 PreviewMeshScale
```

Determines the scale of the rail mesh preview

### bShowRailVisualization

```
bool bShowRailVisualization
```

Determines whether or not to show the rail mesh preview.

### bLockOrientationToRail

```
bool bLockOrientationToRail
```

Determines whether the orientation of the mount should be in the direction of the rail.

### CurrentPositionOnRail

```
float32 CurrentPositionOnRail
```

Defines current position of the mount point along the rail, in terms of normalized distance from the beginning of the rail.

### RAIL COMPONENTS

```
RAIL COMPONENTS GetRailSplineComponent USplineComponent GetRailSplineComponent()
```

Returns the spline component that defines the rail path

---

## FUNCTIONS

### SetRailSplineComponent

```
void SetRailSplineComponent(USplineComponent Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ACameraRig_Rail ACameraRig_Rail::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ACameraRig_Rail::StaticClass

```
static UClass ACameraRig_Rail::StaticClass()
```
