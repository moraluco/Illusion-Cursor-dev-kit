# UTextureFactory

**Visibility:** public

## Inheritance

UFactory → UTextureFactory → UReimportTextureFactory → UTrueTypeFontFactory → COMPRESSION → CompressionSettings

## Description

TextureCompressionSettings CompressionSettings

Compression settings for the texture

## CREATEMATERIAL

### ShadingModel

```
EMaterialShadingModel ShadingModel
```

The shading model of the created material

### Blending

```
EBlendMode Blending
```

The blend mode of the created material

---

## LODGROUP

### LODGroup

```
TextureGroup LODGroup
```

The group the texture belongs to

---

## PRESERVEALPHACOVERAGE

### bDoScaleMipsForAlphaCoverage

```
bool bDoScaleMipsForAlphaCoverage
```

Whether mip RGBA should be scaled to preserve the number of pixels with Value >= AlphaCoverageThresholds

### AlphaCoverageThresholds

```
FVector4 AlphaCoverageThresholds
```

Channel values to compare to when preserving alpha coverage from a mask for mips

---

## TEXTUREFACTORY

### MipGenSettings

```
TextureMipGenSettings MipGenSettings
```

The mip-map generation settings for the texture; Allows customization of the content of the mip-map chain

---

## FUNCTIONS

### SetbAlphaToOpacity

```
void SetbAlphaToOpacity(bool Value)
```

SetbDeferCompression

### void SetbDeferCompression

```
void SetbDeferCompression(bool Value)
```

SetbCreateMaterial

### void SetbCreateMaterial

```
void SetbCreateMaterial(bool Value)
```

SetbRGBToBaseColor

### void SetbRGBToBaseColor

```
void SetbRGBToBaseColor(bool Value)
```

SetbRGBToEmissive

### void SetbRGBToEmissive

```
void SetbRGBToEmissive(bool Value)
```

SetbAlphaToRoughness

### void SetbAlphaToRoughness

```
void SetbAlphaToRoughness(bool Value)
```

SetbAlphaToEmissive

### void SetbAlphaToEmissive

```
void SetbAlphaToEmissive(bool Value)
```

SetNoAlpha

### void SetNoAlpha

```
void SetNoAlpha(bool Value)
```

SetbAlphaToOpacityMask

### void SetbAlphaToOpacityMask

```
void SetbAlphaToOpacityMask(bool Value)
```

SetbTwoSided

### void SetbTwoSided

```
void SetbTwoSided(bool Value)
```

SetbDitherMipMapAlpha

### void SetbDitherMipMapAlpha

```
void SetbDitherMipMapAlpha(bool Value)
```

SetbPreserveBorder

### void SetbPreserveBorder

```
void SetbPreserveBorder(bool Value)
```

SetbFlipNormalMapGreenChannel

### void SetbFlipNormalMapGreenChannel

```
void SetbFlipNormalMapGreenChannel(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTextureFactory::StaticClass()
```
