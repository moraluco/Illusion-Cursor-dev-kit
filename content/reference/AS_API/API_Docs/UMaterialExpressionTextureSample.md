# UMaterialExpressionTextureSample

**Visibility:** public

## Inheritance

UMaterialExpressionTextureBase → UMaterialExpressionTextureSample → UMaterialExpressionParticleSubUV → UMaterialExpressionTextureSampleParameter → MATERIALEXPRESSIONTEXTURESAMPLE → SamplerSource

## Description

ESamplerSourceMode SamplerSource

Controls where the sampler for this texture lookup will come from.  Choose 'from texture asset' to make use of the UTexture addressing settings, Otherwise use one of the global samplers, which will not consume a sampler slot.  This allows materials to use more than 16 unique textures on SM5 platforms.

ConstCoordinate uint8 ConstCoordinate

only used if Coordinates is not hooked up

ConstMipValue int ConstMipValue

only used if MipValue is not hooked up

MipValueMode ETextureMipValueMode MipValueMode

Defines how the MipValue property is applied to the texture lookup

## FUNCTIONS

### SetAutomaticViewMipBias

```
void SetAutomaticViewMipBias(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialExpressionTextureSample::StaticClass()
```
