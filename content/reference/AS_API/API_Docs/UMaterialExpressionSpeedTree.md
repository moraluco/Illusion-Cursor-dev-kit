# UMaterialExpressionSpeedTree

**Visibility:** public

## Inheritance

UMaterialExpression → UMaterialExpressionSpeedTree → MATERIALEXPRESSIONSPEEDTREE → WindType

## Description

ESpeedTreeWindType WindType

The type of wind effect used on this tree. This can only go as high as it was in the SpeedTree Modeler, but you can set it to a lower option for lower quality wind and faster rendering.

LODType ESpeedTreeLODType LODType

The type of LOD to use

BillboardThreshold float32 BillboardThreshold

The threshold for triangles to be removed from the bilboard mesh when not facing the camera (0 = none pass, 1 = all pass).

bAccurateWindVelocities bool bAccurateWindVelocities

Support accurate velocities from wind. This will incur extra cost per vertex.

GeometryType ESpeedTreeGeometryType GeometryType

The type of SpeedTree geometry on which this material will be used

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialExpressionSpeedTree::StaticClass()
```
