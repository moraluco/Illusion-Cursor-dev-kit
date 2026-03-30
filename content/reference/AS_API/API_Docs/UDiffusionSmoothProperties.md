# UDiffusionSmoothProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UDiffusionSmoothProperties

## Description

Properties for Diffusion Smoothing

## DIFFUSIONSMOOTHINGOPTIONS

### Steps

```
int Steps
```

Number of Smoothing iterations

### bPreserveUVs

```
bool bPreserveUVs
```

If this is false, the smoother will try to reshape the triangles to be more regular, which will distort UVs

### SmoothingPerStep

```
float32 SmoothingPerStep
```

Amount of smoothing allowed per step. Smaller steps will avoid things like collapse of small/thin features.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDiffusionSmoothProperties::StaticClass()
```
