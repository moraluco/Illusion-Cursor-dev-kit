# UVirtualTextureBuilder

**Visibility:** public

## Inheritance

UObject → UVirtualTextureBuilder

## Description

Container for a UVirtualTexture2D that can be built from a FVirtualTextureBuildDesc description.  This has a simple BuildTexture() interface but we may want to extend in the future to support partial builds or other more blueprint driven approaches for data generation.

## TEXTURE

### Texture

```
UVirtualTexture2D Texture
```

The UTexture object.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVirtualTextureBuilder::StaticClass()
```
