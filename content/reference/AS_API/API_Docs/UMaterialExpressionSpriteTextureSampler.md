# UMaterialExpressionSpriteTextureSampler

**Visibility:** public

## Inheritance

UMaterialExpressionTextureSampleParameter2D → UMaterialExpressionSpriteTextureSampler

## Description

This is a texture sampler 2D with a special automatically defined parameter name. The texture specified here will be replaced by the SourceTexture or an AdditionalSourceTextures entry of a Paper2D sprite if this material is used on a sprite.

## PAPER2D

### AdditionalSlotIndex

```
int AdditionalSlotIndex
```

This is the slot index into the AdditionalSourceTextures array

### SlotDisplayName

```
FText SlotDisplayName
```

Friendly label for the texture slot, displayed in the Sprite Editor if not empty

### bSampleAdditionalTextures

```
bool bSampleAdditionalTextures
```

Is this a sampler for the default SourceTexture or the AdditionalSourceTextures list?

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialExpressionSpriteTextureSampler::StaticClass()
```
