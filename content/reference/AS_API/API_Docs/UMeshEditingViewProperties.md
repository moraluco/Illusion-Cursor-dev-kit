# UMeshEditingViewProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UMeshEditingViewProperties → RENDERING → MaterialMode

## Description

EMeshEditingMaterialModes MaterialMode

Set which material to use on object

bFlatShading bool bFlatShading

Toggle flat shading on/off

Color FLinearColor Color

Main Color of Material

Image UTexture2D Image

Image used in Image-Based Material

Opacity float Opacity

Opacity of transparent material

TransparentMaterialColor FLinearColor TransparentMaterialColor bTwoSided bool bTwoSided

Although a two-sided transparent material causes rendering issues with overlapping faces, it is still frequently useful to see the shape when sculpting around other objects.

bShowWireframe bool bShowWireframe

Toggle drawing of wireframe overlay on/off [Alt+W]

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMeshEditingViewProperties::StaticClass()
```
