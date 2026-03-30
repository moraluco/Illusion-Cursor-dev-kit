# UMeshVertexPaintingToolProperties

**Visibility:** public

## Inheritance

UBrushBaseProperties → UMeshVertexPaintingToolProperties → UMeshColorPaintingToolProperties → UMeshWeightPaintingToolProperties → BRUSH

## Description

bEnableFlow bool bEnableFlow

Enables "Flow" painting where paint is continually applied from the brush every tick

bOnlyFrontFacingTriangles bool bOnlyFrontFacingTriangles

Whether back-facing triangles should be ignored

## VERTEXPAINTING

### EraseColor

```
FLinearColor EraseColor
```

Color used for Erasing Vertex Color Painting

### PaintColor

```
FLinearColor PaintColor
```

Color used for Applying Vertex Color Painting

---

## VERTEXPAINTING \| VISUALIZATION

### VertexPreviewSize

```
float32 VertexPreviewSize
```

Size of vertex points drawn when mesh painting is active.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMeshVertexPaintingToolProperties::StaticClass()
```
