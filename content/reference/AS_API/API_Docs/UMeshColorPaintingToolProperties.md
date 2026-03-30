# UMeshColorPaintingToolProperties

**Visibility:** public

## Inheritance

UMeshVertexPaintingToolProperties → UMeshColorPaintingToolProperties → COLORPAINTING

## Description

bWriteGreen bool bWriteGreen

Whether or not to apply Vertex Color Painting to the Green Channel

bWriteBlue bool bWriteBlue

Whether or not to apply Vertex Color Painting to the Blue Channel

bWriteAlpha bool bWriteAlpha

Whether or not to apply Vertex Color Painting to the Alpha Channel

bWriteRed bool bWriteRed

Whether or not to apply Vertex Color Painting to the Red Channel

## PAINTING

### LODIndex

```
int LODIndex
```

LOD Index to which should specifically be painted

### bPaintOnSpecificLOD

```
bool bPaintOnSpecificLOD
```

When unchecked the painting on the base LOD will be propagate automatically to all other LODs when exiting the mode or changing the selection

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMeshColorPaintingToolProperties::StaticClass()
```
