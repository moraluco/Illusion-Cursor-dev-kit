# UProceduralShapeToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UProceduralShapeToolProperties → UProceduralArrowToolProperties → UProceduralBoxToolProperties → UProceduralConeToolProperties → UProceduralCylinderToolProperties

## Description

and 5 other children

## ASSET

### bInstanceIfPossible

```
bool bInstanceIfPossible
```

Create instances of the last created asset rather than creating a whole new asset, provided the Shape settings have not changed.  If false, all created actors will have separate underlying mesh assets.

---

## POSITIONING

### TargetSurface

```
EMakeMeshPlacementType TargetSurface
```

How the shape is placed in the scene.

### bSnapToGrid

```
bool bSnapToGrid
```

If true, the shape pivot is snapped to the grid. This is only relevant if the coordinate system is set to world space.

### PivotLocation

```
EMakeMeshPivotLocation PivotLocation
```

Location of pivot within the shape

### Rotation

```
float32 Rotation
```

Rotation of the shape around its up axis

### bAlignToNormal

```
bool bAlignToNormal
```

If true, aligns the shape along the normal of the surface it is placed on.

---

## SHAPE

### PolygroupMode

```
EMakeMeshPolygroupMode PolygroupMode
```

How Polygroups are assigned to shape primitives.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UProceduralShapeToolProperties::StaticClass()
```
