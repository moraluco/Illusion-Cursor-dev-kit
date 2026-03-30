# UMaterialExpressionVectorNoise

**Visibility:** public

## Inheritance

UMaterialExpression → UMaterialExpressionVectorNoise → MATERIALEXPRESSIONVECTORNOISE → Quality

## Description

int Quality

For noise functions where applicable, lower numbers are faster and lower quality, higher numbers are slower and higher quality

TileSize uint TileSize

How many units in each tile (if Tiling is on) For Perlin noise functions, Tile Size must be a multiple of three

NoiseFunction EVectorNoiseFunction NoiseFunction

Noise function, affects performance and look

## FUNCTIONS

### SetbTiling

```
void SetbTiling(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialExpressionVectorNoise::StaticClass()
```
