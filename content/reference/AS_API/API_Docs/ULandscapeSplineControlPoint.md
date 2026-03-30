# ULandscapeSplineControlPoint

**Visibility:** public

## Inheritance

UObject → ULandscapeSplineControlPoint → COLLISION → BodyInstance

## Description

FBodyInstance BodyInstance

## Members

### Settings

```
Mesh Collision Settings
```

---

## LANDSCAPEDEFORMATION

### LayerName

```
FName LayerName
```

Name of blend layer to paint when applying spline to landscape If "none", no layer is painted

---

## LANDSCAPESPLINE

### LayerWidthRatio

```
float32 LayerWidthRatio
```

Layer Width ratio of the spline at this point.

### SideFalloff

```
float32 SideFalloff
```

Falloff at the sides of the spline at this point.

### Rotation

```
FRotator Rotation
```

Rotation of tangent vector at this point (in landscape-space)

### RightSideFalloffFactor

```
float32 RightSideFalloffFactor
```
### LeftSideLayerFalloffFactor

```
float32 LeftSideLayerFalloffFactor RightSideLayerFalloffFactor float32 RightSideLayerFalloffFactor EndFalloff float32 EndFalloff
```

Falloff at the start/end of the spline (if this point is a start or end point, otherwise ignored).

### Width

```
float32 Width
```

Half-Width of the spline at this point.

### LeftSideFalloffFactor

```
float32 LeftSideFalloffFactor
```
### SegmentMeshOffset

```
float32 SegmentMeshOffset
```

Vertical offset of the spline segment mesh. Useful for a river's surface, among other things.

### Location

```
FVector Location
```

Location in Landscape-space

---

## MESH

### MeshScale

```
FVector MeshScale
```

Scale of the control point mesh

### CollisionProfileName

```
FName CollisionProfileName
```

Name of the collision profile to use for this spline

### LDMaxDrawDistance

```
float32 LDMaxDrawDistance
```

Max draw distance for the mesh used on this control point

### TranslucencySortPriority

```
int TranslucencySortPriority
```

Translucent objects with a lower sort priority draw behind objects with a higher priority.  Translucent objects with the same priority are rendered from back-to-front based on their bounds origin.  This setting is also used to sort objects being drawn into a runtime virtual texture.

Ignored if the object is not translucent.  The default priority is zero.  Warning: This should never be set to a non-default value unless you know what you are doing, as it will prevent the renderer from sorting correctly.

### CustomDepthStencilWriteMask

```
ERendererStencilMask CustomDepthStencilWriteMask
```

Mask used for stencil buffer writes.

### CustomDepthStencilValue

```
int CustomDepthStencilValue
```

Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)

### Mesh

```
UStaticMesh Mesh
```

Mesh to use on the control point

### MaterialOverrides

```
TArray<TObjectPtr<UMaterialInterface>> MaterialOverrides
```

Overrides mesh's materials

---

## VIRTUALTEXTURE

### VirtualTextureCullMips

```
int VirtualTextureCullMips
```

Number of lower mips in the runtime virtual texture to skip for rendering this primitive.  Larger values reduce the effective draw distance in the runtime virtual texture.  This culling method doesn't take into account primitive size or virtual texture size.

### VirtualTextureMainPassMaxDrawDistance

```
float32 VirtualTextureMainPassMaxDrawDistance
```

Desired cull distance in the main pass if we are rendering to both the virtual texture AND the main pass. A value of 0 has no effect.

### VirtualTextureRenderPassType

```
ERuntimeVirtualTextureMainPassType VirtualTextureRenderPassType
```

Controls if this component draws in the main pass as well as in the virtual texture.

### RuntimeVirtualTextures

```
TArray<TObjectPtr<URuntimeVirtualTexture>> RuntimeVirtualTextures
```

Array of runtime virtual textures into which we draw the spline segment.  The material also needs to be set up to output to a virtual texture.

### VirtualTextureLodBias

```
int VirtualTextureLodBias
```

Lod bias for rendering to runtime virtual texture.

---

## FUNCTIONS

### SetbLowerTerrain

```
void SetbLowerTerrain(bool Value)
```

SetbCastShadow

### void SetbCastShadow

```
void SetbCastShadow(bool Value)
```

SetbHiddenInGame

### void SetbHiddenInGame

```
void SetbHiddenInGame(bool Value)
```

SetbPlaceSplineMeshesInStreamingLevels

### void SetbPlaceSplineMeshesInStreamingLevels

```
void SetbPlaceSplineMeshesInStreamingLevels(bool Value)
```

SetbRenderCustomDepth

### void SetbRenderCustomDepth

```
void SetbRenderCustomDepth(bool Value)
```

SetbRaiseTerrain

### void SetbRaiseTerrain

```
void SetbRaiseTerrain(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULandscapeSplineControlPoint::StaticClass()
```
