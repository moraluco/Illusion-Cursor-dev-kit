# UBakeMultiTexture2DProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UBakeMultiTexture2DProperties → MULTITEXTUREOUTPUT → UVLayer

## Description

FString UVLayer

UV channel to use for the source mesh texture

AllSourceTextures TArray<TObjectPtr<UTexture2D>> AllSourceTextures

The set of all source textures from all input materials

MaterialIDSourceTextures TArray<TObjectPtr<UTexture2D>> MaterialIDSourceTextures

For each material ID, the source texture that will be resampled in that material's region

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBakeMultiTexture2DProperties::StaticClass()
```
