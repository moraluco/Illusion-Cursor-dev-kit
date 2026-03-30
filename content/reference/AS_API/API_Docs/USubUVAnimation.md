# USubUVAnimation

**Visibility:** public

## Inheritance

UObject → USubUVAnimation

## Description

SubUV animation asset, which caches bounding geometry for regions in the SubUVTexture with non-zero opacity.  Particle emitters with a SubUV module which use this asset leverage the optimal bounding geometry to reduce overdraw.

## SUBUV

### SubImages_Horizontal

```
int SubImages_Horizontal
```

The number of sub-images horizontally in the texture

### SubImages_Vertical

```
int SubImages_Vertical
```

The number of sub-images vertically in the texture

### BoundingMode

```
ESubUVBoundingVertexCount BoundingMode
```

More bounding vertices results in reduced overdraw, but adds more triangle overhead.  The eight vertex mode is best used when the SubUV texture has a lot of space to cut out that is not captured by the four vertex version, and when the particles using the texture will be few and large.

### OpacitySourceMode

```
EOpacitySourceMode OpacitySourceMode
```
### AlphaThreshold

```
float32 AlphaThreshold
```

Alpha channel values larger than the threshold are considered occupied and will be contained in the bounding geometry.  Raising this threshold slightly can reduce overdraw in particles using this animation asset.

### SubUVTexture

```
UTexture2D SubUVTexture
```

Texture to generate bounding geometry from.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USubUVAnimation::StaticClass()
```
