# UMeshTexturePaintingToolProperties

**Visibility:** public

## Inheritance

UBrushBaseProperties → UMeshTexturePaintingToolProperties → BRUSH

## Description

bEnableFlow bool bEnableFlow

Enables "Flow" painting where paint is continually applied from the brush every tick

bOnlyFrontFacingTriangles bool bOnlyFrontFacingTriangles

Whether back-facing triangles should be ignored

## TEXTUREPAINTING

### bWriteGreen

```
bool bWriteGreen
```

Whether or not to apply Texture Color Painting to the Green Channel

### bWriteRed

```
bool bWriteRed
```

Whether or not to apply Texture Color Painting to the Red Channel

### EraseColor

```
FLinearColor EraseColor
```

Color used for Erasing Texture Color Painting

### bWriteBlue

```
bool bWriteBlue
```

Whether or not to apply Texture Color Painting to the Blue Channel

### UVChannel

```
int UVChannel
```

UV channel which should be used for paint textures

### bEnableSeamPainting

```
bool bEnableSeamPainting
```

Seam painting flag, True if we should enable dilation to allow the painting of texture seams

### PaintTexture

```
UTexture2D PaintTexture
```

Texture to which Painting should be Applied

### PaintColor

```
FLinearColor PaintColor
```

Color used for Applying Texture Color Painting

### bWriteAlpha

```
bool bWriteAlpha
```

Whether or not to apply Texture Color Painting to the Alpha Channel

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMeshTexturePaintingToolProperties::StaticClass()
```
