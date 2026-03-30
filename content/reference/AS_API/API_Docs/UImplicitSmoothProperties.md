# UImplicitSmoothProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UImplicitSmoothProperties

## Description

Properties for Implicit smoothing

## IMPLICITSMOOTHINGOPTIONS

### bPreserveUVs

```
bool bPreserveUVs
```

If this is false, the smoother will try to reshape the triangles to be more regular, which will distort UVs

### VolumeCorrection

```
float32 VolumeCorrection
```

Magic number that allows you to try to correct for shrinking caused by smoothing

### Smoothness

```
float32 Smoothness
```

Desired Smoothness. This is not a linear quantity, but larger numbers produce smoother results

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UImplicitSmoothProperties::StaticClass()
```
