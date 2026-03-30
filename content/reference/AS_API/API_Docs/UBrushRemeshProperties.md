# UBrushRemeshProperties

**Visibility:** public

## Inheritance

URemeshProperties → UBrushRemeshProperties → REMESHING → TriangleSize

## Description

int TriangleSize

Desired size of triangles after Remeshing, relative to average initial triangle size. Larger value results in larger triangles.

PreserveDetail int PreserveDetail

Control the amount of simplification during sculpting. Higher values will avoid wiping out fine details on the mesh.

Iterations int Iterations bEnableRemeshing bool bEnableRemeshing

Toggle remeshing on/off

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBrushRemeshProperties::StaticClass()
```
