# UMaterialExpressionRuntimeVirtualTextureSample

**Visibility:** public

## Inheritance

UMaterialExpression → UMaterialExpressionRuntimeVirtualTextureSample → UMaterialExpressionRuntimeVirtualTextureSampleParameter

## Description

Material expression for sampling from a runtime virtual texture.

## TEXTURESAMPLE

### MipValueMode

```
ERuntimeVirtualTextureMipValueMode MipValueMode
```

Defines how the mip level is calculated for the virtual texture lookup.

### TextureAddressMode

```
ERuntimeVirtualTextureTextureAddressMode TextureAddressMode
```

Defines the texture addressing mode.

---

## VIRTUALTEXTURE

### bAdaptive

```
bool bAdaptive
```

Enable sparse adaptive page tables. Note that the bound Virtual Texture should have valid adaptive virtual texture settings for sampling to work correctly.

### bSinglePhysicalSpace

```
bool bSinglePhysicalSpace
```

Enable page table channel packing. Note that the bound Virtual Texture should have the same setting for sampling to work correctly.

### MaterialType

```
ERuntimeVirtualTextureMaterialType MaterialType
```

How to interpret the virtual texture contents. Note that the bound Virtual Texture should have the same setting for sampling to work correctly.

### VirtualTexture

```
URuntimeVirtualTexture VirtualTexture
```

The virtual texture object to sample.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialExpressionRuntimeVirtualTextureSample::StaticClass()
```
