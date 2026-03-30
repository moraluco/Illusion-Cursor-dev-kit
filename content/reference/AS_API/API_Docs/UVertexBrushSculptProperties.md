# UVertexBrushSculptProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UVertexBrushSculptProperties → SCULPTING → PrimaryFalloffType

## Description

EMeshSculptFalloffType PrimaryFalloffType

Primary Brush Falloff Type, multiplied by Alpha Mask where applicable

BrushFilter EMeshVertexSculptBrushFilterType BrushFilter

Filter applied to Stamp Region Triangles, based on first Stroke Stamp

bFreezeTarget bool bFreezeTarget

When Freeze Target is toggled on, the Brush Target Surface will be Frozen in its current state, until toggled off. Brush strokes will be applied relative to the Target Surface, for applicable Brushes

PrimaryBrushType EMeshVertexSculptBrushType PrimaryBrushType

### Primary Brush Mode

```
Primary Brush Mode
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVertexBrushSculptProperties::StaticClass()
```
