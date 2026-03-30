# UDrawPolygonToolStandardProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UDrawPolygonToolStandardProperties → EXTRUDE → ExtrudeMode

## Description

EDrawPolygonExtrudeMode ExtrudeMode

If and how the drawn polygon gets extruded

ExtrudeHeight float32 ExtrudeHeight

Extrude distance when using the Fixed extrude mode

## POLYGON

### RadialSlices

```
int RadialSlices
```

Number of radial subdivisions in round features, e.g. circles or rounded corners

### bShowGridGizmo

```
bool bShowGridGizmo
```

If true, shows a gizmo to manipulate the additional grid used to draw the polygon on

### FeatureSizeRatio

```
float32 FeatureSizeRatio
```

Size of secondary features, e.g. the rounded corners of a rounded rectangle, as fraction of the overall shape size

### bAllowSelfIntersections

```
bool bAllowSelfIntersections
```

Allow freehand drawn polygons to self-intersect

### PolygonDrawMode

```
EDrawPolygonDrawMode PolygonDrawMode
```

Type of polygon to draw in the viewport

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDrawPolygonToolStandardProperties::StaticClass()
```
