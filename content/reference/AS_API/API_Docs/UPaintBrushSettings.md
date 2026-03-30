# UPaintBrushSettings

**Visibility:** public

## Inheritance

UObject → UPaintBrushSettings → BRUSH → BrushStrength

## Description

float32 BrushStrength Strength of the brush (0.0

1.0)

BrushFalloffAmount float32 BrushFalloffAmount Amount of falloff to apply (0.0

1.0)

bEnableFlow bool bEnableFlow

Enables "Flow" painting where paint is continually applied from the brush every tick

bOnlyFrontFacingTriangles bool bOnlyFrontFacingTriangles

Whether back-facing triangles should be ignored

BrushRadius float32 BrushRadius

Radius of the Brush used for Painting

## VIEW

### ColorViewMode

```
EMeshPaintColorViewMode ColorViewMode
```

Color view mode used to display Vertex Colors

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPaintBrushSettings::StaticClass()
```
