# ULandscapeSplineSegment

**Visibility:** public

## Inheritance

UObject → ULandscapeSplineSegment → COLLISION → BodyInstance

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

## LANDSCAPESPLINEMESHES

### CollisionProfileName

```
FName CollisionProfileName
```

Name of the collision profile to use for this spline // // TODO: This field does not have proper Slate customization.  // Instead of a text field, this should be a dropdown with the // default option.  //

### RandomSeed

```
int RandomSeed
```

Random seed used for choosing which order to use spline meshes. Ignored if only one mesh is set.

### LDMaxDrawDistance

```
float32 LDMaxDrawDistance
```

Max draw distance for all the mesh pieces used in this spline

### TranslucencySortPriority

```
int TranslucencySortPriority
```

Translucent objects with a lower sort priority draw behind objects with a higher priority.  Translucent objects with the same priority are rendered from back-to-front based on their bounds origin.  This setting is also used to sort objects being drawn into a runtime virtual texture.

Ignored if the object is not translucent.  The default priority is zero.  Warning: This should never be set to a non-default value unless you know what you are doing, as it will prevent the renderer from sorting correctly.

### SplineMeshes

```
TArray<FLandscapeSplineMeshEntry> SplineMeshes
```

Spline meshes from this list are used in random order along the spline.

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

---

## LANDSCAPESPLINESEGMENT

### Connections

```
FLandscapeSplineSegmentConnection Connections
```

Directly editable data:

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

### VirtualTextureLodBias

```
int VirtualTextureLodBias
```

Lod bias for rendering to runtime virtual texture.

### RuntimeVirtualTextures

```
TArray<TObjectPtr<URuntimeVirtualTexture>> RuntimeVirtualTextures
```

Array of runtime virtual textures into which we draw the spline segment.  The material also needs to be set up to output to a virtual texture.

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
STATIC FUNCTIONS StaticClass static UClass ULandscapeSplineSegment::StaticClass()
```
