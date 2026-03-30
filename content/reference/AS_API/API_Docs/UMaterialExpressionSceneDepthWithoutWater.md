# UMaterialExpressionSceneDepthWithoutWater

**Visibility:** public

## Inheritance

UMaterialExpression → UMaterialExpressionSceneDepthWithoutWater → MATERIALEXPRESSIONSCENEDEPTHWITHOUTWATER → ConstInput

## Description

FVector2D ConstInput

only used if Input is not hooked up

FallbackDepth float32 FallbackDepth

Depth to fall back to in case the needed texture isn't available on a particular platform or configuration

InputMode EMaterialSceneAttributeInputMode InputMode Coordinates

UV coordinates to apply to the scene depth lookup.

OffsetFraction

An offset to apply to the scene depth lookup in a 2d fraction of the screen.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialExpressionSceneDepthWithoutWater::StaticClass()
```
