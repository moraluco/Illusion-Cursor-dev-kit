# UPolyEditInsetOutsetProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UPolyEditInsetOutsetProperties

## Description

INSET/OUTSET bBoundaryOnly bool bBoundaryOnly

Controls whether outset operation will move interior vertices as well as border vertices

AreaScale float32 AreaScale

Tweak area scaling when solving for interior vertices

bReproject bool bReproject

When insetting, determines whether vertices in inset region should be projected back onto input surface

Softness float32 Softness

Amount of smoothing applied to outset boundary

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPolyEditInsetOutsetProperties::StaticClass()
```
