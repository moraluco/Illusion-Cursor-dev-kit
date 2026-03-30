# UMeshElementsVisualizerProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UMeshElementsVisualizerProperties

## Description

Visualization settings UMeshElementsVisualizer

## MESHELEMENTVISUALIZATION

### WireframeColor

```
FColor WireframeColor
```

Color of mesh wireframe

### bShowWireframe

```
bool bShowWireframe
```

Should mesh wireframe be shown

### bShowBorders

```
bool bShowBorders
```

Should mesh boundary edges be shown

### bShowUVSeams

```
bool bShowUVSeams
```

Should mesh uv seam edges be shown

### bShowNormalSeams

```
bool bShowNormalSeams
```

Should mesh normal seam edges be shown

### bShowColorSeams

```
bool bShowColorSeams
```

Should mesh color seam edges be shown

### ThicknessScale

```
float32 ThicknessScale
```

multiplier on edge thicknesses

### bVisible

```
bool bVisible
```

Should any be mesh elements be shown

### BoundaryEdgeColor

```
FColor BoundaryEdgeColor
```

Color of mesh boundary edges

### UVSeamColor

```
FColor UVSeamColor
```

Color of mesh UV seam edges

### NormalSeamColor

```
FColor NormalSeamColor
```

Color of mesh normal seam edges

### ColorSeamColor

```
FColor ColorSeamColor
```

Color of mesh color seam edges

### DepthBias

```
float32 DepthBias
```

depth bias used to slightly shift depth of lines

### bAdjustDepthBiasUsingMeshSize

```
bool bAdjustDepthBiasUsingMeshSize
```

If true, the depth bias will be adjusted depending on the diagonal length of the mesh bounding box (smaller for smaller meshes).

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMeshElementsVisualizerProperties::StaticClass()
```
