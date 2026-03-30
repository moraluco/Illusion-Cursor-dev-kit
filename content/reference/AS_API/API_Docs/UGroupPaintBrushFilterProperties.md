# UGroupPaintBrushFilterProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UGroupPaintBrushFilterProperties → ACTIONTYPE → EraseGroup

## Description

int EraseGroup

Group to set as Erased value

BrushSize float32 BrushSize

Relative size of brush

BrushAreaMode EMeshGroupPaintBrushAreaType BrushAreaMode

When Volumetric, all faces inside the brush sphere are selected, otherwise only connected faces are selected

bHitBackFaces bool bHitBackFaces

Allow the Brush to hit the back-side of the mesh

SetGroup int SetGroup

The group that will be assigned to triangles

bOnlySetUngrouped bool bOnlySetUngrouped

If true, only triangles with no group assigned will be painted

SubToolType EMeshGroupPaintInteractionType SubToolType bOnlyEraseCurrent bool bOnlyEraseCurrent

When enabled, only the current group configured in the Paint brush is erased

## FILTERS

### bUVSeams

```
bool bUVSeams
```

The Region affected by the current operation will be bounded by UV borders/seams

### bNormalSeams

```
bool bNormalSeams
```

The Region affected by the current operation will be bounded by Hard Normal edges/seams

### VisibilityFilter

```
EMeshGroupPaintVisibilityType VisibilityFilter
```

Control which triangles can be affected by the current operation based on visibility. Applied after all other filters.

### MinTriVertCount

```
int MinTriVertCount
```

Number of vertices in a triangle the Lasso must hit to be counted as "inside"

### AngleThreshold

```
float32 AngleThreshold
```

The Region affected by the current operation will be bounded by edge angles larger than this threshold

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGroupPaintBrushFilterProperties::StaticClass()
```
