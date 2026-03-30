# UMeshSpaceDeformerToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UMeshSpaceDeformerToolProperties → GIZMO

## Description

bAlignToNormalOnCtrlClick bool bAlignToNormalOnCtrlClick

When true, Ctrl+click not only moves the gizmo to the clicked location, but also aligns the Z axis with the normal at that point.

## OPTIONS

### LowerBoundsInterval

```
float32 LowerBoundsInterval
```

The lower bound to the region of space which the operation will affect. Measured along the gizmo Z axis from the gizmo center.

### BendDegrees

```
float32 BendDegrees
```

A line along the Z axis of the gizmo from lower bound to upper bound will be bent into a perfect arc of this many degrees in the direction of the Y axis without changing length.

### TwistDegrees

```
float32 TwistDegrees
```

Degrees of twist to from the lower bound to the upper bound along the gizmo Z axis.

### FlareProfileType

```
EFlareProfileType FlareProfileType
```

Determines the profile used as a displacement

### UpperBoundsInterval

```
float32 UpperBoundsInterval
```

The upper bound to the region of space which the operation will affect. Measured along the gizmo Z axis from the gizmo center.

### SelectedOperationType

```
ENonlinearOperationType SelectedOperationType
```
### bLockXAndYFlaring

```
bool bLockXAndYFlaring
```

If true, flaring is applied along the gizmo X and Y axis the same amount.

### FlarePercentX

```
float32 FlarePercentX
```

Determines how much to flare perpendicular to the Z axis in the X direction if the flaring is not locked to be the same in the X and Y directions.

### bLockBottom

```
bool bLockBottom
```

If true, the "bottom" of the mesh relative to the gizmo Z axis will stay in place while the rest bends or twists. If false, the bend or twist will happen around the gizmo location.

### bShowOriginalMesh

```
bool bShowOriginalMesh
```
### bDrawVisualization

```
bool bDrawVisualization
```
### FlarePercentY

```
float32 FlarePercentY
```

Determines how much to flare perpendicular to the Z axis. When set to 100%, points are moved double the distance away from the gizmo Z axis at the most extreme flare point. 0% does not flare at all, whereas -100% pinches all the way to the gizmo Z axis at the most extreme flare point.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMeshSpaceDeformerToolProperties::StaticClass()
```
