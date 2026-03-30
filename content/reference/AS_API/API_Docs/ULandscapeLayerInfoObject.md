# ULandscapeLayerInfoObject

**Visibility:** public

## Inheritance

UObject → ULandscapeLayerInfoObject → LANDSCAPELAYERINFOOBJECT → Hardness

## Description

float32 Hardness MinimumCollisionRelevanceWeight float32 MinimumCollisionRelevanceWeight

The minimum weight that needs to be painted for that layer to be picked up as the dominant physical layer

PhysMaterial UPhysicalMaterial PhysMaterial LayerUsageDebugColor FLinearColor LayerUsageDebugColor

The color to use for layer usage debug

## SPLINEFALLOFFMODULATION

### SplineFalloffModulationTiling

```
float32 SplineFalloffModulationTiling
```
### SplineFalloffModulationBias

```
float32 SplineFalloffModulationBias
```
### SplineFalloffModulationScale

```
float32 SplineFalloffModulationScale
```
### SplineFalloffModulationTexture

```
UTexture2D SplineFalloffModulationTexture
```

Texture to modulate the Splines Falloff Layer Alpha

### SplineFalloffModulationColorMask

```
ESplineModulationColorMask SplineFalloffModulationColorMask FUNCTIONS SetbNoWeightBlend void SetbNoWeightBlend(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULandscapeLayerInfoObject::StaticClass()
```
