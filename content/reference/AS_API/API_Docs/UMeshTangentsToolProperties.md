# UMeshTangentsToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UMeshTangentsToolProperties → DISPLAY

## Description

bShowTangents bool bShowTangents

Display the mesh tangents

bShowNormals bool bShowNormals

Display the mesh normals

LineLength float32 LineLength

Length of lines used for displaying tangents and/or normals

LineThickness float32 LineThickness

Thickness of lines used for displaying tangents and/or normals

bShowDegenerates bool bShowDegenerates

Display tangents and/or normals for degenerate triangles

bCompareWithMikkt bool bCompareWithMikkt

Display difference between FastMikkTSpace tangents and MikkTSpace tangents.  This is only available if the FastMikkTSpace Calculation Method is selected.

CompareWithMikktThreshold float32 CompareWithMikktThreshold

Minimum angle difference in degrees for a FastMikkTSpace tangent to be considered different to a MikkTSpace tangent.  This is only available if a Compare with MikkT is enabled and the FastMikkTSpace Calculation Method is selected.

## TANGENTSCALCULATION

### CalculationMethod

```
EMeshTangentsType CalculationMethod
```

Method used for calculating the tangents

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMeshTangentsToolProperties::StaticClass()
```
