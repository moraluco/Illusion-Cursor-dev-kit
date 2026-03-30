# ALandscapeProxy

**Visibility:** public

## Inheritance

APartitionActor → ALandscapeProxy → ALandscape → ALandscapeStreamingProxy → COLLISION → CollisionMipLevel

## Description

int CollisionMipLevel

Landscape LOD to use for collision tests. Higher numbers use less memory and process faster, but are much less accurate

BodyInstance FBodyInstance BodyInstance

Collision profile settings for this landscape

CollisionThickness float32 CollisionThickness

Thickness of the collision surface, in unreal units

SimpleCollisionMipLevel int SimpleCollisionMipLevel

If set higher than the "Collision Mip Level", this specifies the Landscape LOD to use for "simple collision" tests, otherwise the "Collision Mip Level" is used for both simple and complex collision.  Does not work with an XY offset map (mesh collision)

bGenerateOverlapEvents bool bGenerateOverlapEvents

If true, Landscape will generate overlap events when other components are overlapping it (eg Begin Overlap).  Both the Landscape and the other component must have this flag enabled for overlap events to occur.

### See also

- [Overlap Events](https://​docs​.unrealengine​.com​/InteractiveExperiences​/Physics​/Collision​/Overview​#overlapandgenerateoverlapevents) @see UpdateOverlaps(), BeginComponentOverlap(), EndComponentOverlap()

## HIERARCHICALLOD

### bUseLandscapeForCullingInvisibleHLODVertices

```
bool bUseLandscapeForCullingInvisibleHLODVertices
```

Flag whether or not this Landscape's surface can be used for culling hidden triangles

---

## LANDSCAPE

### PositiveZBoundsExtension

```
float32 PositiveZBoundsExtension
```

Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the positive Z axis, positive value increases bound size Note that this can also be overridden per-component when the component is selected with the component select tool

### DefaultPhysMaterial

```
UPhysicalMaterial DefaultPhysMaterial
```

Default physical material, used when no per-layer values physical materials

### StreamingDistanceMultiplier

```
float32 StreamingDistanceMultiplier
```

Allows artists to adjust the distance where textures using UV 0 are streamed in/out.  1.0 is the default, whereas a higher value increases the streamed-in resolution.  Value can be < 0 (from legcay content, or code changes)

### LandscapeMaterial

```
UMaterialInterface LandscapeMaterial
```

Combined material used to render the landscape

### LandscapeHoleMaterial

```
UMaterialInterface LandscapeHoleMaterial
```

Material used to render landscape components with holes. If not set, LandscapeMaterial will be used (blend mode will be overridden to Masked if it is set to Opaque)

### LandscapeMaterialsOverride

```
TArray<FLandscapeProxyMaterialOverride> LandscapeMaterialsOverride
```
### bUseDynamicMaterialInstance

```
bool bUseDynamicMaterialInstance
```

When set to true it will generate MaterialInstanceDynamic for each components, so material can be changed at runtime

### NavigationGeometryGatheringMode

```
ENavDataGatheringMode NavigationGeometryGatheringMode
```
### NegativeZBoundsExtension

```
float32 NegativeZBoundsExtension
```

Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the negative Z axis, positive value increases bound size Note that this can also be overridden per-component when the component is selected with the component select tool

### MaxPaintedLayersPerComponent

```
int MaxPaintedLayersPerComponent
```

---

## LIGHTING

### bCastHiddenShadow

```
bool bCastHiddenShadow
```

If true, the primitive will cast shadows even if bHidden is true.  Controls whether the primitive should cast shadows when hidden.  This flag is only used if CastShadow is true.

### CastShadow

```
bool CastShadow
```

Controls whether the primitive component should cast a shadow or not.

### bAffectDistanceFieldLighting

```
bool bAffectDistanceFieldLighting
```

Controls whether the primitive should affect dynamic distance field lighting methods.  This flag is only used if CastShadow is true.

### bCastContactShadow

```
bool bCastContactShadow
```

Whether the object should cast contact shadows. This flag is only used if CastShadow is true.

### LightingChannels

```
FLightingChannels LightingChannels
```

Channels that this Landscape should be in.  Lights with matching channels will affect the Landscape.  These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.

### bCastStaticShadow

```
bool bCastStaticShadow
```

Whether the object should cast a static shadow from shadow casting lights.  This flag is only used if CastShadow is true.

### bCastDynamicShadow

```
bool bCastDynamicShadow
```

Controls whether the primitive should cast shadows in the case of non precomputed shadowing.  This flag is only used if CastShadow is true.

### StaticLightingLOD

```
int StaticLightingLOD
```

LOD level to use when running lightmass (increase to 1 or 2 for large landscapes to stop lightmass crashing)

### bCastShadowAsTwoSided

```
bool bCastShadowAsTwoSided
```

Whether this primitive should cast dynamic shadows as if it were a two sided material.  This flag is only used if CastShadow is true.

### StaticLightingResolution

```
float32 StaticLightingResolution
```

The resolution to cache lighting at, in texels/quad in one axis Total resolution would be changed by StaticLightingResolution*StaticLightingResolution Automatically calculate proper value for removing seams

### bCastFarShadow

```
bool bCastFarShadow
```

When enabled, the component will be rendering into the far shadow cascades(only for directional lights).  This flag is only used if CastShadow is true.

---

## LIGHTMASS

### LightmassSettings

```
FLightmassPrimitiveSettings LightmassSettings
```

The Lightmass settings for this object.

---

## LOD

### ComponentScreenSizeToUseSubSections

```
float32 ComponentScreenSizeToUseSubSections Component screen size(0.0
```

1.0) at which we should keep sub sections. This is mostly pertinent if you have large component of > 64 and component are close to the camera. The goal is to reduce draw call, so if a component is smaller than the value, we merge all subsections into 1 drawcall.

### ExportLOD

```
int ExportLOD
```

LOD level to use when exporting the landscape to obj or FBX

### MaxLODLevel

```
int MaxLODLevel
```

Max LOD level to use when rendering, -1 means the max available

### DISTRIBUTION

```
LOD DISTRIBUTION
```
### LODDistributionSetting

```
float32 LODDistributionSetting
```

The distribution setting used to change the LOD generation, 2 is the normal distribution, small number mean you want your last LODs to take more screen space and big number mean you want your first LODs to take more screen space.

### LOD0DistributionSetting

```
float32 LOD0DistributionSetting
```

The distribution setting used to change the LOD 0 generation, 1.75 is the normal distribution, numbers influence directly the LOD0 proportion on screen.

### LOD0ScreenSize

```
float32 LOD0ScreenSize
```

This is the starting screen size used to calculate the distribution. You can increase the value if you want less LOD0 component, and you use very large landscape component.

---

## MOBILE

### bMeshHoles

```
bool bMeshHoles
```

Use unique geometry instead of material alpha tests for holes on mobile platforms. This requires additional memory and will render more vertices at lower LODs.

### MeshHolesMaxLod

```
uint8 MeshHolesMaxLod
```

Maximum geometry LOD at which to render unique hole meshes.

---

## RENDERING

### CustomDepthStencilValue

```
int CustomDepthStencilValue
```

Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)

### LDMaxDrawDistance

```
float32 LDMaxDrawDistance
```

Max draw distance exposed to LDs. The real max draw distance is the min (disregarding 0) of this and volumes affecting this object.

### CustomDepthStencilWriteMask

```
ERendererStencilMask CustomDepthStencilWriteMask
```

Mask used for stencil buffer writes.

### bRenderCustomDepth

```
bool bRenderCustomDepth
```

If true, the Landscape will be rendered in the CustomDepth pass (usually used for outlines)

---

## VIRTUALTEXTURE

### VirtualTextureNumLods

```
int VirtualTextureNumLods
```

Number of mesh levels to use when rendering landscape into runtime virtual texture.  Lower values reduce vertex count when rendering to the runtime virtual texture but decrease accuracy when using values that require vertex interpolation.

### VirtualTextureLodBias

```
int VirtualTextureLodBias
```

Bias to the LOD selected for rendering to runtime virtual textures.  Higher values reduce vertex count when rendering to the runtime virtual texture.

### RuntimeVirtualTextures

```
TArray<TObjectPtr<URuntimeVirtualTexture>> RuntimeVirtualTextures
```

Array of runtime virtual textures into which we draw this landscape.  The material also needs to be set up to output to a virtual texture.

### VirtualTextureRenderPassType

```
ERuntimeVirtualTextureMainPassType VirtualTextureRenderPassType
```

Controls if this component draws in the main pass as well as in the virtual texture.

---

## LANDSCAPE \| EDITOR

EditorApplySpline

### void EditorApplySpline

```
void EditorApplySpline(USplineComponent InSplineComponent, float32 StartWidth = 200.000000, float32 EndWidth = 200.000000, float32 StartSideFalloff = 200.000000, float32 EndSideFalloff = 200.000000, float32 StartRoll = 0.000000, float32 EndRoll = 0.000000, int NumSubdivisions = 20, bool bRaiseHeights = true, bool bLowerHeights = true, ULandscapeLayerInfoObject PaintLayer = nullptr, FName EditLayerName = NAME_None)
```

Deform landscape using a given spline

**Parameters**

InSplineComponent
USplineComponent

The component containing the spline data

StartWidth
float32

Width of the spline at the start node, in Spline Component local space

EndWidth
float32

Width of the spline at the end node, in Spline Component local space

StartSideFalloff
float32

Width of the falloff at either side of the spline at the start node, in Spline Component local space

EndSideFalloff
float32

Width of the falloff at either side of the spline at the end node, in Spline Component local space

StartRoll
float32

Roll applied to the spline at the start node, in degrees. 0 is flat

EndRoll
float32

Roll applied to the spline at the end node, in degrees. 0 is flat

NumSubdivisions
int

Number of triangles to place along the spline when applying it to the landscape. Higher numbers give better results, but setting it too high will be slow and may cause artifacts

bRaiseHeights
bool

Allow the landscape to be raised up to the level of the spline. If both bRaiseHeights and bLowerHeights are false, no height modification of the landscape will be performed

bLowerHeights
bool

Allow the landscape to be lowered down to the level of the spline. If both bRaiseHeights and bLowerHeights are false, no height modification of the landscape will be performed

PaintLayer
ULandscapeLayerInfoObject

LayerInfo to paint, or none to skip painting. The landscape must be configured with the same layer info in one of its layers or this will do nothing!

EditLayerName
FName

Name of the landscape edition layer to affect (in Edit Layers mode)

---

## LANDSCAPE \| RUNTIME \| MATERIAL

### SetLandscapeMaterialVectorParameterValue

```
void SetLandscapeMaterialVectorParameterValue(FName ParameterName, FLinearColor Value)
```

Set an MID vector parameter value for all landscape components.

### SetLandscapeMaterialTextureParameterValue

```
void SetLandscapeMaterialTextureParameterValue(FName ParameterName, UTexture Value)
```

Set an MID texture parameter value for all landscape components.

### SetLandscapeMaterialScalarParameterValue

```
void SetLandscapeMaterialScalarParameterValue(FName ParameterName, float32 Value)
```

Set a MID scalar (float) parameter value for all landscape components.

---

## RENDERING

### LandscapeExportHeightmapToRenderTarget

```
bool LandscapeExportHeightmapToRenderTarget(
```

UTextureRenderTarget2D 	InRenderTarget,

bool 	InExportHeightIntoRGChannel	 = 	false,

bool 	InExportLandscapeProxies	 = 	true

)

### target

```
Output a landscape heightmap to a render target
```
**Parameters**

InRenderTarget
UTextureRenderTarget2D

Valid render target with a format of RTF_RGBA16f, RTF_RGBA32f or RTF_RGBA8

InExportHeightIntoRGChannel
bool

Tell us if we should export the height that is internally stored as R & G (for 16 bits) to a single R channel of the render target (the format need to be RTF_RGBA16f or RTF_RGBA32f) Note that using RTF_RGBA16f with InExportHeightIntoRGChannel == false, could have precision loss.

InExportLandscapeProxies
bool

Option to also export components of all proxies of Landscape actor (if LandscapeProxy is the Landscape Actor)

LandscapeImportHeightmapFromRenderTarget
bool LandscapeImportHeightmapFromRenderTarget(

UTextureRenderTarget2D 	InRenderTarget,
bool 	InImportHeightFromRGChannel	 = 	false

)

Overwrites a landscape heightmap with render target data

**Parameters**

InRenderTarget
UTextureRenderTarget2D

Valid render target with a format of RTF_RGBA16f, RTF_RGBA32f or RTF_RGBA8

InImportHeightFromRGChannel
bool

Only relevant when using format RTF_RGBA16f or RTF_RGBA32f, and will tell us if we should import the height data from the R channel only of the Render target or from R & G. Note that using RTF_RGBA16f with InImportHeightFromRGChannel == false, could have precision loss Only works in the editor

LandscapeImportWeightmapFromRenderTarget
bool LandscapeImportWeightmapFromRenderTarget(
UTextureRenderTarget2D 	InRenderTarget,
FName 	InLayerName
	)

Overwrites a landscape weightmap with render target data Only works in the editor

ChangeComponentScreenSizeToUseSubSections
void ChangeComponentScreenSizeToUseSubSections(
float32 	InComponentScreenSizeToUseSubSections
	)

Change ComponentScreenSizeToUseSubSections value on the render proxy.

LandscapeExportWeightmapToRenderTarget
bool LandscapeExportWeightmapToRenderTarget(
UTextureRenderTarget2D 	InRenderTarget,
FName 	InLayerName
	)

Output a landscape weightmap to a render target Only works in the editor

---

## FUNCTIONS

### EditorSetLandscapeMaterial

```
void EditorSetLandscapeMaterial(UMaterialInterface NewLandscapeMaterial)
```

Setter for LandscapeMaterial. Has no effect outside the editor.

### SetbCastContactShadow

```
void SetbCastContactShadow(bool Value)
```

GetCastShadow

### bool GetCastShadow

```
bool GetCastShadow()const SetCastShadow
```

void SetCastShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastDynamicShadow

### bool GetbCastDynamicShadow

```
bool GetbCastDynamicShadow()const SetbCastDynamicShadow
```

void SetbCastDynamicShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastStaticShadow

### bool GetbCastStaticShadow

```
bool GetbCastStaticShadow()const SetbCastStaticShadow
```

void SetbCastStaticShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastContactShadow

### bool GetbCastContactShadow

```
bool GetbCastContactShadow()const GetHeightAtLocation
```

bool GetHeightAtLocation(

### FVector 	Location,

```
FVector 	Location, float32& 	OutHeight 	) const
```

GetbCastFarShadow

### bool GetbCastFarShadow

```
bool GetbCastFarShadow()const SetbCastFarShadow
```

void SetbCastFarShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastHiddenShadow

### bool GetbCastHiddenShadow

```
bool GetbCastHiddenShadow()const SetbCastHiddenShadow
```

void SetbCastHiddenShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastShadowAsTwoSided

### bool GetbCastShadowAsTwoSided

```
bool GetbCastShadowAsTwoSided()const SetbCastShadowAsTwoSided
```

void SetbCastShadowAsTwoSided(

### bool 	Value

```
bool 	Value 	)
```

GetbAffectDistanceFieldLighting

### bool GetbAffectDistanceFieldLighting

```
bool GetbAffectDistanceFieldLighting()const SetbAffectDistanceFieldLighting
```

void SetbAffectDistanceFieldLighting(

### bool 	Value

```
bool 	Value 	)
```

SetbUseMaterialPositionOffsetInStaticLighting

### void SetbUseMaterialPositionOffsetInStaticLighting

```
void SetbUseMaterialPositionOffsetInStaticLighting(bool Value)
```

GetbRenderCustomDepth

### bool GetbRenderCustomDepth

```
bool GetbRenderCustomDepth()const SetbRenderCustomDepth
```

void SetbRenderCustomDepth(

### bool 	Value

```
bool 	Value 	)
```

GetbGenerateOverlapEvents

### bool GetbGenerateOverlapEvents

```
bool GetbGenerateOverlapEvents()const SetbGenerateOverlapEvents
```

void SetbGenerateOverlapEvents(

### bool 	Value

```
bool 	Value 	)
```

SetbBakeMaterialPositionOffsetIntoCollision

### void SetbBakeMaterialPositionOffsetIntoCollision

```
void SetbBakeMaterialPositionOffsetIntoCollision(bool Value)
```

SetbUsedForNavigation

### void SetbUsedForNavigation

```
void SetbUsedForNavigation(bool Value)
```

SetbFillCollisionUnderLandscapeForNavmesh

### void SetbFillCollisionUnderLandscapeForNavmesh

```
void SetbFillCollisionUnderLandscapeForNavmesh(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ALandscapeProxy ALandscapeProxy::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ALandscapeProxy::StaticClass

```
static UClass ALandscapeProxy::StaticClass()
```
