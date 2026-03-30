# UTexture

**Visibility:** public

## Inheritance

UStreamableRenderAsset → UTexture → UARTexture → UMediaTexture → UTexture2D → UTexture2DArray

## Description

and 5 other children

## ADJUSTMENTS

### ChromaKeyColor

```
FColor ChromaKeyColor
```

The color that will be replaced with transparent black if chroma keying is enabled

### AdjustBrightness

```
float32 AdjustBrightness
```

Static texture brightness adjustment (scales HSV value.)  (Non-destructive; Requires texture source art to be available.)

### AdjustBrightnessCurve

```
float32 AdjustBrightnessCurve
```

Static texture curve adjustment (raises HSV value to the specified power.)  (Non-destructive; Requires texture source art to be available.)

### AdjustVibrance

```
float32 AdjustVibrance Static texture "vibrance" adjustment(0
```

1) (HSV saturation algorithm adjustment.)  (Non-destructive; Requires texture source art to be available.)

### AdjustSaturation

```
float32 AdjustSaturation
```

Static texture saturation adjustment (scales HSV saturation.)  (Non-destructive; Requires texture source art to be available.)

### AdjustRGBCurve

```
float32 AdjustRGBCurve
```

Static texture RGB curve adjustment (raises linear-space RGB color to the specified power.)  (Non-destructive; Requires texture source art to be available.)

### AdjustHue

```
float32 AdjustHue Static texture hue adjustment(0
```

360) (offsets HSV hue by value in degrees.)  (Non-destructive; Requires texture source art to be available.)

### AdjustMinAlpha

```
float32 AdjustMinAlpha
```

Remaps the alpha to the specified min/max range, defines the new value of 0 (Non-destructive; Requires texture source art to be available.)

### AdjustMaxAlpha

```
float32 AdjustMaxAlpha
```

Remaps the alpha to the specified min/max range, defines the new value of 1 (Non-destructive; Requires texture source art to be available.)

### ChromaKeyThreshold

```
float32 ChromaKeyThreshold
```

The threshold that components have to match for the texel to be considered equal to the ChromaKeyColor when chroma keying (<=, set to 0 to require a perfect exact match)

### bChromaKeyTexture

```
bool bChromaKeyTexture
```

Whether to chroma key the image, replacing any pixels that match ChromaKeyColor with transparent black

---

## COMPOSITING

### CompositeTextureMode

```
ECompositeTextureMode CompositeTextureMode
```

defines how the CompositeTexture is applied, e.g. CTM_RoughnessFromNormalAlpha

### CompositePower

```
float32 CompositePower
```

default 1, high values result in a stronger effect e.g 1, 2, 4, 8 this is no slider because the texture update would not be fast enough

### CompositeTexture

```
UTexture CompositeTexture
```

Can be defined to modify the roughness based on the normal map variation (mostly from mip maps).  MaxAlpha comes in handy to define a base roughness if no source alpha was there.  Make sure the normal map has at least as many mips as this texture.

---

## COMPRESSION

### CompressionSettings

```
TextureCompressionSettings CompressionSettings
```

Compression settings to use when building the texture.

### CompressionNoAlpha

```
bool CompressionNoAlpha
```

If enabled, the texture's alpha channel will be discarded during compression

### DeferCompression

```
bool DeferCompression
```

If enabled, defer compression of the texture until save or manually compressed in the texture editor.

### CompressionQuality

```
ETextureCompressionQuality CompressionQuality
```

The compression quality for generated ASTC textures (i.e. mobile platform textures).

### LossyCompressionAmount

```
ETextureLossyCompressionAmount LossyCompressionAmount
```

How aggressively should any relevant lossy compression be applied. For compressors that support EncodeSpeed (i.e. Oodle), this is only applied if enabled (see Project Settings -> Texture Encoding). Note that this is in addition to any unavoidable loss due to the target format - selecting "No Lossy Compression" will not result in zero distortion for BCn formats.

### OodleTextureSdkVersion

```
FName OodleTextureSdkVersion
```

Oodle Texture SDK Version to encode with.  Enter 'latest' to update; 'None' preserves legacy encoding to avoid patches.

### MaxTextureSize

```
int MaxTextureSize
```

The maximum resolution for generated textures. A value of 0 means the maximum size for the format on each platform.

---

## IMPORTSETTINGS

### AssetImportData

```
UAssetImportData AssetImportData
```

---

## LEVELOFDETAIL

### MipGenSettings

```
TextureMipGenSettings MipGenSettings
```

Per asset specific setting to define the mip-map generation properties like sharpening and kernel size.

### Downscale

```
FPerPlatformFloat Downscale
```

Downscale source texture, applied only to textures without mips 0.0 - use scale value from texture group 1.0 - do not scale texture

1.0 - scale texure

### LODBias

```
int LODBias
```

A bias to the index of the top mip level to use.

### DownscaleOptions

```
ETextureDownscaleOptions DownscaleOptions
```

Texture downscaling options

### LODGroup

```
TextureGroup LODGroup
```

Texture group this texture belongs to

### bPreserveBorder

```
bool bPreserveBorder
```

When true the texture's border will be preserved during mipmap generation.

---

## TEXTURE

### MipLoadOptions

```
ETextureMipLoadOptions MipLoadOptions
```

The texture mip load options.

### SourceColorSettings

```
FTextureSourceColorSettings SourceColorSettings
```

Texture color management settings: source encoding and color space.

### PowerOfTwoMode

```
ETexturePowerOfTwoSetting PowerOfTwoMode
```

How to pad the texture to a power of 2 size (if necessary)

### Filter

```
TextureFilter Filter
```

The texture filtering mode to use when sampling this texture.

### PaddingColor

```
FColor PaddingColor
```

The color used to pad the texture out if it is resized due to PowerOfTwoMode

### AlphaCoverageThresholds

```
FVector4 AlphaCoverageThresholds
```

Alpha values per channel to compare to when preserving alpha coverage. 0 means disable channel.  Typical good values in 0.5

0.9, not 1.0

### bDoScaleMipsForAlphaCoverage

```
bool bDoScaleMipsForAlphaCoverage
```

Whether mip RGBA should be scaled to preserve the number of pixels with Value >= AlphaCoverageThresholds.  AlphaCoverageThresholds are ignored if this is off.

### bDitherMipMapAlpha

```
bool bDitherMipMapAlpha
```

When true, the alpha channel of mip-maps and the base image are dithered for smooth LOD transitions.

### AssetUserData

```
TArray<TObjectPtr<UAssetUserData>> AssetUserData
```

Array of user data stored with the asset

### bFlipGreenChannel

```
bool bFlipGreenChannel
```

When true the texture's green channel will be inverted. This is useful for some normal maps.

---

## SRGB

### bool SRGB

```
bool SRGB
```

This should be unchecked if using alpha channels individually as masks.

### bUseLegacyGamma

```
bool bUseLegacyGamma
```

A flag for using the simplified legacy gamma space e.g pow(color,1/2.2) for converting from FColor to FLinearColor, if we're doing sRGB.

### VirtualTextureStreaming

```
bool VirtualTextureStreaming
```

Is this texture streamed in using VT

---

## FUNCTIONS

### GetbFlipGreenChannel

```
bool GetbFlipGreenChannel()const
```

SetCompressionNoAlpha

### void SetCompressionNoAlpha

```
void SetCompressionNoAlpha(bool Value)
```

GetDeferCompression

### bool GetDeferCompression

```
bool GetDeferCompression()const SetDeferCompression
```

void SetDeferCompression(

### bool 	Value

```
bool 	Value 	)
```

GetbDitherMipMapAlpha

### bool GetbDitherMipMapAlpha

```
bool GetbDitherMipMapAlpha()const SetbDitherMipMapAlpha
```

void SetbDitherMipMapAlpha(

### bool 	Value

```
bool 	Value 	)
```

GetbPreserveBorder

### bool GetbPreserveBorder

```
bool GetbPreserveBorder()const SetbPreserveBorder
```

void SetbPreserveBorder(

### bool 	Value

```
bool 	Value 	)
```

GetCompressionNoAlpha

### bool GetCompressionNoAlpha

```
bool GetCompressionNoAlpha()const SetbFlipGreenChannel
```

void SetbFlipGreenChannel(

### bool 	Value

```
bool 	Value 	)
```

GetSRGB

### bool GetSRGB

```
bool GetSRGB()const SetSRGB
```

void SetSRGB(

### bool 	Value

```
bool 	Value 	)
```

GetbUseLegacyGamma

### bool GetbUseLegacyGamma

```
bool GetbUseLegacyGamma()const SetbUseLegacyGamma
```

void SetbUseLegacyGamma(

### bool 	Value

```
bool 	Value 	)
```

GetVirtualTextureStreaming

### bool GetVirtualTextureStreaming

```
bool GetVirtualTextureStreaming()const SetVirtualTextureStreaming
```

void SetVirtualTextureStreaming(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTexture::StaticClass()
```
