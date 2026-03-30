# UPolyEditOffsetProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UPolyEditOffsetProperties → OFFSET → MaxDistanceScaleFactor

## Description

float MaxDistanceScaleFactor

Controls the maximum distance vertices can move from the target distance in order to stay parallel with their source triangles.

bShellsToSolids bool bShellsToSolids

Controls whether offseting an entire open-border patch should create a solid or an open shell

MeasureDirection EPolyEditExtrudeDirection MeasureDirection

What axis to measure the extrusion distance along. When the direction mode is Single Direction, also controls the direction.

bUseColinearityForSettingBorderGroups bool bUseColinearityForSettingBorderGroups

When offseting regions that touch the mesh border, assign the side groups (groups on the stitched side of the extrude) in a way that considers edge colinearity. For instance, when true, extruding a flat rectangle will give four different groups on its sides rather than one connected group.

DirectionMode EPolyEditOffsetModeOptions DirectionMode

Which way to move vertices during the offset

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPolyEditOffsetProperties::StaticClass()
```
