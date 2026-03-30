# UCubeGridToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UCubeGridToolProperties → BLOCKSELECTION → PlaneTolerance

## Description

float PlaneTolerance

When performing selection, the tolerance to use when determining whether things lie in the same plane as a cube face.

FaceSelectionMode ECubeGridToolFaceSelectionMode FaceSelectionMode

How the selected face is determined.

bHitGridGroundPlaneIfCloser bool bHitGridGroundPlaneIfCloser

When the grid ground plane is above some geometry, whether we should hit that plane or pass through to the other geometry.

bHitUnrelatedGeometry bool bHitUnrelatedGeometry

When raycasting to find a selected grid face, this determines whether geometry in the scene that is not part of the edited mesh is hit.

## OPTIONS

### BlocksPerStep

```
int BlocksPerStep
```

How many blocks each push/pull invocation will do at a time.

### bCrosswiseDiagonal

```
bool bCrosswiseDiagonal
```

When pushing/pulling in a way where the diagonal matters, setting this to true makes the diagonal generally try to lie flat across the face rather than at an incline.

### bShowGizmo

```
bool bShowGizmo
```
### GridFrameOrientation

```
FRotator GridFrameOrientation
```
### PowerOfTwo

```
uint8 PowerOfTwo
```

Determines cube grid scale. Can also be adjusted with Ctrl + E/Q.

### GridFrameOrigin

```
FVector GridFrameOrigin
```
### BlockBaseSize

```
float BlockBaseSize
```

Smallest block size to use in the grid. For instance, 3.125 results in blocks that are 100 sized at 5 power of two since 3.125 * 2^5 = 100.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCubeGridToolProperties::StaticClass()
```
