# UMaterialExpressionSceneTexture

**Visibility:** public

## Inheritance

UMaterialExpression → UMaterialExpressionSceneTexture → UMATERIALEXPRESSIONSCENETEXTURE

## Description

bFiltered bool bFiltered

Whether to use point sampled texture lookup (default) or using [bi-linear] filtered (can be slower, avoid faceted lock with distortions), some SceneTextures cannot be filtered

SceneTextureId ESceneTextureId SceneTextureId

Which scene texture (screen aligned texture) we want to make a lookup into

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialExpressionSceneTexture::StaticClass()
```
