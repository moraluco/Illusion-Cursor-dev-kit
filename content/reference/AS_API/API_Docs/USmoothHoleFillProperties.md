# USmoothHoleFillProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → USmoothHoleFillProperties

## Description

Properties. This class reflects the parameters in FSmoothFillOptions, but is decorated to allow use in the UI system.

## SMOOTHHOLEFILLOPTIONS

### RemeshingExteriorRegionWidth

```
int RemeshingExteriorRegionWidth
```

Number of vertex rings outside of the fill region to allow remeshing

### SmoothingExteriorRegionWidth

```
int SmoothingExteriorRegionWidth
```

Number of vertex rings outside of the fill region to perform smoothing

### SmoothingInteriorRegionWidth

```
int SmoothingInteriorRegionWidth
```

Number of vertex rings away from the fill region boundary to constrain smoothing

### InteriorSmoothness

```
float32 InteriorSmoothness
```

Desired Smoothness. This is not a linear quantity, but larger numbers produce smoother results

### FillDensityScalar

```
float FillDensityScalar
```

Relative triangle density of fill region

### bProjectDuringRemesh

```
bool bProjectDuringRemesh
```

Whether to project to the original mesh during post-smooth remeshing. This can be expensive on large meshes with many holes.

### bConstrainToHoleInterior

```
bool bConstrainToHoleInterior
```

Allow smoothing and remeshing of triangles outside of the fill region

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USmoothHoleFillProperties::StaticClass()
```
