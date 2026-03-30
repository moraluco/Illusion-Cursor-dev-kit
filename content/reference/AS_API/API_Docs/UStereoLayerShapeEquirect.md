# UStereoLayerShapeEquirect

**Visibility:** public

## Inheritance

UStereoLayerShape → UStereoLayerShapeEquirect

## Description

EQUIRECT PROPERTIES RightUVRect FBox2D RightUVRect

Right source texture UVRect, specifying portion of input texture corresponding to right eye.

LeftScale FVector2D LeftScale

Left eye's texture coordinate scale after mapping to 2D.

RightScale FVector2D RightScale

Right eye's texture coordinate scale after mapping to 2D.

LeftBias FVector2D LeftBias

Left eye's texture coordinate bias after mapping to 2D.

RightBias FVector2D RightBias

Right eye's texture coordinate bias after mapping to 2D.

LeftUVRect FBox2D LeftUVRect

Left source texture UVRect, specifying portion of input texture corresponding to left eye.

COMPONENTS|STEREO LAYER SetEquirectProps void SetEquirectProps( FEquirectProps 	InScaleBiases 	)

Set Equirect layer properties: UVRect, Scale, and Bias

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UStereoLayerShapeEquirect::StaticClass()
```
