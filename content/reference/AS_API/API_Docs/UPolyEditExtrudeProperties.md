# UPolyEditExtrudeProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UPolyEditExtrudeProperties → EXTRUDE → MeasureDirection

## Description

EPolyEditExtrudeDirection MeasureDirection

What axis to measure the extrusion distance along.

bShellsToSolids bool bShellsToSolids

Controls whether extruding an entire open-border patch should create a solid or an open shell

DirectionMode EPolyEditExtrudeModeOptions DirectionMode

How to move the vertices during the extrude

bUseColinearityForSettingBorderGroups bool bUseColinearityForSettingBorderGroups

When extruding regions that touch the mesh border, assign the side groups (groups on the stitched side of the extrude) in a way that considers edge colinearity. For instance, when true, extruding a flat rectangle will give four different groups on its sides rather than one connected group.

Direction EPolyEditExtrudeDirection Direction

Direction in which to extrude.

## OFFSET

### MaxDistanceScaleFactor

```
float MaxDistanceScaleFactor
```

Controls the maximum distance vertices can move from the target distance in order to stay parallel with their source triangles.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPolyEditExtrudeProperties::StaticClass()
```
