# UFoliageType

**Visibility:** public

## Inheritance

UObject → UFoliageType → UFoliageType_Actor → UFoliageType_InstancedStaticMesh → HLOD

## Description

bIncludeInHLOD bool bIncludeInHLOD

## INSTANCESETTINGS

### bUseAsOccluder

```
bool bUseAsOccluder
```

If enabled, foliage will render a pre-pass which allows it to occlude other primitives, and also allows it to correctly receive DBuffer decals. Enabling this setting may have a negative performance impact.

### bVisibleInRayTracing

```
bool bVisibleInRayTracing
```
### CastShadow

```
bool CastShadow
```

Controls whether the foliage should cast a shadow or not.

### Mobility

```
EComponentMobility Mobility
```

Mobility property to apply to foliage components

### bEvaluateWorldPositionOffset

```
bool bEvaluateWorldPositionOffset
```
### bReceivesDecals

```
bool bReceivesDecals
```

Whether the foliage receives decals.

### bCastShadowAsTwoSided

```
bool bCastShadowAsTwoSided
```

Whether this foliage should cast dynamic shadows as if it were a two sided material.

### bRenderCustomDepth

```
bool bRenderCustomDepth
```

If true, the foliage will be rendered in the CustomDepth pass (usually used for outlines)

### bCastStaticShadow

```
bool bCastStaticShadow
```

Whether the foliage should cast a static shadow from shadow casting lights.  This flag is only used if CastShadow is true.

### bCastDynamicShadow

```
bool bCastDynamicShadow
```

Controls whether the foliage should cast shadows in the case of non precomputed shadowing.  This flag is only used if CastShadow is true.

### bAffectDistanceFieldLighting

```
bool bAffectDistanceFieldLighting
```

Controls whether the primitive should affect dynamic distance field lighting methods.  This flag is only used if CastShadow is true.

### bAffectDynamicIndirectLighting

```
bool bAffectDynamicIndirectLighting
```

Controls whether the foliage should inject light into the Light Propagation Volume.  This flag is only used if CastShadow is true.

### bOverrideLightMapRes

```
bool bOverrideLightMapRes
```

Whether to override the lightmap resolution defined in the static mesh.

### bCastContactShadow

```
bool bCastContactShadow
```

Whether the object should cast contact shadows. This flag is only used if CastShadow is true.

### OverriddenLightMapRes

```
int OverriddenLightMapRes
```

Overrides the lightmap resolution defined in the static mesh

### LightmapType

```
ELightmapType LightmapType
```

Controls the type of lightmap used for this component.

### BodyInstance

```
FBodyInstance BodyInstance
```

Custom collision for foliage

### CustomNavigableGeometry

```
EHasCustomNavigableGeometry CustomNavigableGeometry
```
### navmesh

```
Force navmesh
```
### LightingChannels

```
FLightingChannels LightingChannels
```

Lighting channels that placed foliage will be assigned. Lights with matching channels will affect the foliage.  These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.

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

### TranslucencySortPriority

```
int TranslucencySortPriority
```

Translucent objects with a lower sort priority draw behind objects with a higher priority.  Translucent objects with the same priority are rendered from back-to-front based on their bounds origin.  This setting is also used to sort objects being drawn into a runtime virtual texture.

Ignored if the object is not translucent.  The default priority is zero.  Warning: This should never be set to a non-default value unless you know what you are doing, as it will prevent the renderer from sorting correctly.  It is especially problematic on dynamic gameplay effects.

---

## PAINTING

### SingleInstanceModeRadius

```
float32 SingleInstanceModeRadius
```

The radius used in single instance mode to detect collision with other instances

### VertexColorMaskByChannel

```
FFoliageVertexColorChannelMask VertexColorMaskByChannel
```
### Scaling

```
EFoliageScaling Scaling
```

Specifies foliage instance scaling behavior when painting.

### Radius

```
float32 Radius
```

The minimum distance between foliage instances

### bSingleInstanceModeOverrideRadius

```
bool bSingleInstanceModeOverrideRadius
```

Option to override radius used to detect collision with other instances when painting in single instance mode

### Density

```
float32 Density
```

Foliage instances will be placed at this density, specified in instances per 1000x1000 unit area

### DensityAdjustmentFactor

```
float32 DensityAdjustmentFactor
```

The factor by which to adjust the density of instances. Values >1 will increase density while values <1 will decrease it.

---

## PLACEMENT

### AverageNormalSingleComponent

```
bool AverageNormalSingleComponent
```

Whether to discard normals originating from other hit components or not when averaging normals

### AverageNormalSampleCount

```
int AverageNormalSampleCount
```

Line trace count to use around hit location when averaging normal

### CollisionScale

```
FVector CollisionScale
```

The foliage instance's collision bounding box will be scaled by the specified amount before performing the overlap check

### RandomYaw

```
bool RandomYaw
```

If selected, foliage instances will have a random yaw rotation around their vertical axis applied

### AverageNormal

```
bool AverageNormal
```

Will average normal based on Foliage Type base radius (this as a cost as it will do extra line traces)

### MinimumExclusionLayerWeight

```
float32 MinimumExclusionLayerWeight
```

Specifies the minimum value above which the landscape exclusion layer weight value must be, in order for foliage instances to be excluded in a specific area

### LandscapeLayers

```
TArray<FName> LandscapeLayers
```

If layer names are specified, painting on landscape will limit the foliage to areas of landscape with the specified layers painted

### RandomPitchAngle

```
float32 RandomPitchAngle
```

A random pitch adjustment can be applied to each instance, up to the specified angle in degrees, from the original vertical

### MinimumLayerWeight

```
float32 MinimumLayerWeight
```

Specifies the minimum value above which the landscape layer weight value must be, in order for foliage instances to be placed in a specific area

### AlignMaxAngle

```
float32 AlignMaxAngle
```

The maximum angle in degrees that foliage instances will be adjusted away from the vertical

### ExclusionLandscapeLayers

```
TArray<FName> ExclusionLandscapeLayers
```

If layer names are specified, painting on landscape will exclude the foliage to areas of landscape without the specified layers painted

### CollisionWithWorld

```
bool CollisionWithWorld
```

If checked, an overlap test with existing world geometry is performed before each instance is placed

### AlignToNormal

```
bool AlignToNormal
```

Whether foliage instances should have their angle adjusted away from vertical to match the normal of the surface they're painted on If AlignToNormal is enabled and RandomYaw is disabled, the instance will be rotated so that the +X axis points down-slope

---

## PROCEDURAL

### CollisionRadius

```
float32 CollisionRadius
```

The CollisionRadius determines when two instances overlap. When two instances overlap a winner will be picked based on rules and priority.

### bSpawnsInShade

```
bool bSpawnsInShade
```

Whether new seeds are spawned exclusively in shade. Occurs in a second pass after all types that do not spawn in shade have been simulated.  Only valid when CanGrowInShade is true.

### MaxInitialAge

```
float32 MaxInitialAge
```

Allows a new seed to be older than 0 when created. New seeds will be randomly assigned an age in the range [0,MaxInitialAge]

### SeedsPerStep

```
int SeedsPerStep
```

The number of seeds an instance will spread in a single step of the simulation.

### MaxAge

```
float32 MaxAge
```

Specifies the oldest a seed can be. After reaching this age the instance will still spread seeds, but will not get any older

### OverlapPriority

```
float32 OverlapPriority
```

When two instances overlap we must determine which instance to remove.  The instance with a lower OverlapPriority will be removed.  In the case where OverlapPriority is the same regular simulation rules apply.

### NumSteps

```
int NumSteps
```

The number of times we age the species and spread its seeds.

### ScaleCurve

```
FRuntimeFloatCurve ScaleCurve
```

Instance scale factor as a function of normalized age (i.e. Current Age / Max Age).  X = 0 corresponds to Age = 0, X = 1 corresponds to Age = Max Age.  Y = 0 corresponds to Min Scale, Y = 1 corresponds to Max Scale.

### DensityFalloff

```
FFoliageDensityFalloff DensityFalloff
```
### MaxInitialSeedOffset

```
float32 MaxInitialSeedOffset
```

The seed that determines placement of initial seeds.

### bCanGrowInShade

```
bool bCanGrowInShade
```

If true, seeds of this type will ignore shade radius during overlap tests with other types.

### InitialSeedDensity

```
float32 InitialSeedDensity
```

Specifies the number of seeds to populate along 10 meters. The number is implicitly squared to cover a 10m x 10m area

### ShadeRadius

```
float32 ShadeRadius
```

The ShadeRadius determines when two instances overlap. If an instance can grow in the shade this radius is ignored.

### AverageSpreadDistance

```
float32 AverageSpreadDistance
```

The average distance between the spreading instance and its seeds. For example, a tree with an AverageSpreadDistance 10 will ensure the average distance between the tree and its seeds is 10cm

### SpreadVariance

```
float32 SpreadVariance
```

Specifies how much seed distance varies from the average. For example, a tree with an AverageSpreadDistance 10 and a SpreadVariance 1 will produce seeds with an average distance of 10cm plus or minus 1cm

### DistributionSeed

```
int DistributionSeed
```

The seed that determines placement of initial seeds.

---

## VIRTUALTEXTURE

### VirtualTextureCullMips

```
int VirtualTextureCullMips
```

Number of lower mips in the runtime virtual texture to skip for rendering this primitive.  Larger values reduce the effective draw distance in the runtime virtual texture.  This culling method doesn't take into account primitive size or virtual texture size.

### RuntimeVirtualTextures

```
TArray<TObjectPtr<URuntimeVirtualTexture>> RuntimeVirtualTextures
```

Array of runtime virtual textures into which we draw the instances.  The mesh material also needs to be set up to output to a virtual texture.

### VirtualTextureRenderPassType

```
ERuntimeVirtualTextureMainPassType VirtualTextureRenderPassType
```

Controls if this component draws in the main pass as well as in the virtual texture.

---

## FUNCTIONS

### GetbUseAsOccluder

```
bool GetbUseAsOccluder()const
```

SetAlignToNormal

### void SetAlignToNormal

```
void SetAlignToNormal(bool Value)
```

GetAverageNormal

### bool GetAverageNormal

```
bool GetAverageNormal()const SetAverageNormal
```

void SetAverageNormal(

### bool 	Value

```
bool 	Value 	)
```

GetAverageNormalSingleComponent

### bool GetAverageNormalSingleComponent

```
bool GetAverageNormalSingleComponent()const SetAverageNormalSingleComponent
```

void SetAverageNormalSingleComponent(

### bool 	Value

```
bool 	Value 	)
```

GetRandomYaw

### bool GetRandomYaw

```
bool GetRandomYaw()const SetRandomYaw
```

void SetRandomYaw(

### bool 	Value

```
bool 	Value 	)
```

GetCollisionWithWorld

### bool GetCollisionWithWorld

```
bool GetCollisionWithWorld()const SetCollisionWithWorld
```

void SetCollisionWithWorld(

### bool 	Value

```
bool 	Value 	)
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

GetbAffectDynamicIndirectLighting

### bool GetbAffectDynamicIndirectLighting

```
bool GetbAffectDynamicIndirectLighting()const SetbAffectDynamicIndirectLighting
```

void SetbAffectDynamicIndirectLighting(

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
bool GetbCastContactShadow()const SetbCastContactShadow
```

void SetbCastContactShadow(

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

GetbReceivesDecals

### bool GetbReceivesDecals

```
bool GetbReceivesDecals()const SetbReceivesDecals
```

void SetbReceivesDecals(

### bool 	Value

```
bool 	Value 	)
```

GetbOverrideLightMapRes

### bool GetbOverrideLightMapRes

```
bool GetbOverrideLightMapRes()const SetbOverrideLightMapRes
```

void SetbOverrideLightMapRes(

### bool 	Value

```
bool 	Value 	)
```

GetAlignToNormal

### bool GetAlignToNormal

```
bool GetAlignToNormal()const SetbUseAsOccluder
```

void SetbUseAsOccluder(

### bool 	Value

```
bool 	Value 	)
```

GetbVisibleInRayTracing

### bool GetbVisibleInRayTracing

```
bool GetbVisibleInRayTracing()const SetbVisibleInRayTracing
```

void SetbVisibleInRayTracing(

### bool 	Value

```
bool 	Value 	)
```

GetbEvaluateWorldPositionOffset

### bool GetbEvaluateWorldPositionOffset

```
bool GetbEvaluateWorldPositionOffset()const SetbEvaluateWorldPositionOffset
```

void SetbEvaluateWorldPositionOffset(

### bool 	Value

```
bool 	Value 	)
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

SetReapplyDensity

### void SetReapplyDensity

```
void SetReapplyDensity(bool Value)
```

SetReapplyRadius

### void SetReapplyRadius

```
void SetReapplyRadius(bool Value)
```

SetReapplyAlignToNormal

### void SetReapplyAlignToNormal

```
void SetReapplyAlignToNormal(bool Value)
```

SetReapplyRandomYaw

### void SetReapplyRandomYaw

```
void SetReapplyRandomYaw(bool Value)
```

SetReapplyScaling

### void SetReapplyScaling

```
void SetReapplyScaling(bool Value)
```

SetReapplyScaleX

### void SetReapplyScaleX

```
void SetReapplyScaleX(bool Value)
```

SetReapplyScaleY

### void SetReapplyScaleY

```
void SetReapplyScaleY(bool Value)
```

SetReapplyScaleZ

### void SetReapplyScaleZ

```
void SetReapplyScaleZ(bool Value)
```

SetReapplyRandomPitchAngle

### void SetReapplyRandomPitchAngle

```
void SetReapplyRandomPitchAngle(bool Value)
```

SetReapplyGroundSlope

### void SetReapplyGroundSlope

```
void SetReapplyGroundSlope(bool Value)
```

SetReapplyHeight

### void SetReapplyHeight

```
void SetReapplyHeight(bool Value)
```

SetReapplyLandscapeLayers

### void SetReapplyLandscapeLayers

```
void SetReapplyLandscapeLayers(bool Value)
```

SetReapplyZOffset

### void SetReapplyZOffset

```
void SetReapplyZOffset(bool Value)
```

SetReapplyCollisionWithWorld

### void SetReapplyCollisionWithWorld

```
void SetReapplyCollisionWithWorld(bool Value)
```

SetReapplyVertexColorMask

### void SetReapplyVertexColorMask

```
void SetReapplyVertexColorMask(bool Value)
```

SetbEnableDensityScaling

### void SetbEnableDensityScaling

```
void SetbEnableDensityScaling(bool Value)
```

SetbEnableDiscardOnLoad

### void SetbEnableDiscardOnLoad

```
void SetbEnableDiscardOnLoad(bool Value)
```

GetbIncludeInHLOD

### bool GetbIncludeInHLOD

```
bool GetbIncludeInHLOD()const SetbIncludeInHLOD
```

void SetbIncludeInHLOD(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFoliageType::StaticClass()
```
