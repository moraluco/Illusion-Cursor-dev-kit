# UDrawPolygonToolSnapProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UDrawPolygonToolSnapProperties → SNAPPING

## Description

bSnapToVertices bool bSnapToVertices

Snap to vertices in other meshes. Requires Enable Snapping to be true.

bSnapToEdges bool bSnapToEdges

Snap to edges in other meshes. Requires Enable Snapping to be true.

bSnapToAxes bool bSnapToAxes

Snap to axes of the drawing grid and axes relative to the last segment. Requires grid snapping to be disabled in viewport, and Enable Snapping to be true.

bSnapToLengths bool bSnapToLengths

When snapping to axes, also try to snap to the length of an existing segment in the polygon. Requires grid snapping to be disabled in viewport, and Snap to Axes and Enable Snapping to be true.

bSnapToSurfaces bool bSnapToSurfaces

Snap to surfaces of existing objects. Requires grid snapping to be disabled in viewport, and Enable Snapping to be true.

SnapToSurfacesOffset float32 SnapToSurfacesOffset

Offset for snap point on the surface of an existing object in the direction of the surface normal. Requires grid snapping to be disabled in viewport, and Snap to Surfaces and Enable Snapping to be true.

bEnableSnapping bool bEnableSnapping

Enables additional snapping controls. If false, all snapping is disabled.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDrawPolygonToolSnapProperties::StaticClass()
```
