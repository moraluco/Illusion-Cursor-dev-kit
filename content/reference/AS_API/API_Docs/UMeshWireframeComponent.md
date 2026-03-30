# UMeshWireframeComponent

**Visibility:** public

## Inheritance

UMeshComponent → UMeshWireframeComponent

## Description

UMeshWireframeComponent draws a mesh wireframe as lines, with line color/thickness varying depending on line type and the configuration settings.  Currently can draw: - all mesh edges - boundary edges - UV seam edges - Normal seam edges - Color seam edges

Client must provide a IMeshWireframeSourceProvider implementation that provides the edge set, vertices, and edge type

## MESHWIREFRAME

### bEnableUVSeams

```
bool bEnableUVSeams
```

UV seam properties

### LineDepthBiasSizeScale

```
float32 LineDepthBiasSizeScale
```

Target-size depth bias scale. This is multiplied by LineDepthBias.  Client of UMeshWireframeComponent can set this if desired, eg to fraction of target object bounding box size, etc.

### ThicknessScale

```
float32 ThicknessScale
```

Scaling factor applied to the per-edge-type thicknesses defined below

### bEnableWireframe

```
bool bEnableWireframe
```
### properties

```
Wireframe properties
```
### WireframeColor

```
FColor WireframeColor
```
### WireframeThickness

```
float32 WireframeThickness
```
### bEnableBoundaryEdges

```
bool bEnableBoundaryEdges
```
### properties

```
Boundary Edge properties
```
### BoundaryEdgeColor

```
FColor BoundaryEdgeColor
```
### BoundaryEdgeThickness

```
float32 BoundaryEdgeThickness
```
### LineDepthBias

```
float32 LineDepthBias
```

Depth bias of the lines, used to offset in depth to avoid z-fighting

### UVSeamColor

```
FColor UVSeamColor
```
### UVSeamThickness

```
float32 UVSeamThickness
```
### bEnableNormalSeams

```
bool bEnableNormalSeams
```

normal seam properties

### NormalSeamColor

```
FColor NormalSeamColor
```
### NormalSeamThickness

```
float32 NormalSeamThickness
```
### bEnableColorSeams

```
bool bEnableColorSeams
```

color seam properties

### ColorSeamColor

```
FColor ColorSeamColor
```
### ColorSeamThickness

```
float32 ColorSeamThickness STATIC FUNCTIONS Get static UMeshWireframeComponent UMeshWireframeComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UMeshWireframeComponent UMeshWireframeComponent::GetOrCreate

```
static UMeshWireframeComponent UMeshWireframeComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UMeshWireframeComponent UMeshWireframeComponent::Create

```
static UMeshWireframeComponent UMeshWireframeComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UMeshWireframeComponent::StaticClass

```
static UClass UMeshWireframeComponent::StaticClass()
```
