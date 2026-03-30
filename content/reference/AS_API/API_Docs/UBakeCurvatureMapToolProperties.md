# UBakeCurvatureMapToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UBakeCurvatureMapToolProperties → CURVATUREOUTPUT → ColorMapping

## Description

EBakeCurvatureColorMode ColorMapping

How to map calculated curvature values to colors

ColorRangeMultiplier float32 ColorRangeMultiplier

Multiplier for how the curvature values fill the available range in the selected Color Mapping; a larger value means that higher curvature is required to achieve the maximum color value.

MinRangeMultiplier float32 MinRangeMultiplier

Minimum for the curvature values to not be clamped to zero relative to the curvature for the maximum color value; a larger value means that higher curvature is required to not be considered as no curvature.

Clamping EBakeCurvatureClampMode Clamping

Clamping applied to curvature values before color mapping

CurvatureType EBakeCurvatureTypeMode CurvatureType

Type of curvature

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBakeCurvatureMapToolProperties::StaticClass()
```
