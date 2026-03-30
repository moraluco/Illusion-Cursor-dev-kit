# UVertexBrushAlphaProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UVertexBrushAlphaProperties

## Description

Tool Properties for a brush alpha mask

## ALPHA

### RotationAngle

```
float32 RotationAngle
```

Alpha is rotated by this angle, inside the brush stamp frame (vertically aligned)

### bRandomize

```
bool bRandomize
```

If true, a random angle in +/- RandomRange is added to Rotation angle for each stamp

### RandomRange

```
float32 RandomRange
```

Bounds of random generation (positive and negative) for randomized stamps

### Alpha

```
UTexture2D Alpha
```

Alpha mask applied to brush stamp. Red channel is used.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVertexBrushAlphaProperties::StaticClass()
```
