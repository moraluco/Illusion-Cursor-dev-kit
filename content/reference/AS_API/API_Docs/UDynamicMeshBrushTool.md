# UDynamicMeshBrushTool

**Visibility:** public

## Inheritance

UBaseBrushTool → UDynamicMeshBrushTool → UMeshAttributePaintTool → UMeshSelectionTool → USeamSculptTool → UShapeSprayTool → USkinWeightsPaintTool

## Description

UDynamicMeshBrushTool is a base class that specializes UBaseBrushTool for brushing on an FDynamicMesh3. The input FPrimitiveComponentTarget is hidden and a UPreviewMesh is created and shown in its place. This UPreviewMesh is used for hit-testing and dynamic rendering.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDynamicMeshBrushTool::StaticClass()
```
