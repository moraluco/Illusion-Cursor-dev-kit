# UMaterial

**Visibility:** public

## Inheritance

UMaterialInterface → UMaterial → UPreviewMaterial

## Description

A Material is an asset which can be applied to a mesh to control the visual look of the scene.  When light from the scene hits the surface, the shading model of the material is used to calculate how that light interacts with the surface.

Warning: Creating new materials directly increases shader compile times!  Consider creating a Material Instance off of an existing material instead.

## FORWARDSHADING

### bForwardBlendsSkyLightCubemaps

```
bool bForwardBlendsSkyLightCubemaps
```

Enables blending of sky light cubemap textures. When disabled, the secondary cubemap is only visible when the blend factor is 1.

### bForwardRenderUsePreintegratedGFForSimpleIBL

```
bool bForwardRenderUsePreintegratedGFForSimpleIBL
```

Forward (including mobile) renderer: use preintegrated GF lut for simple IBL, but will use one more sampler.

### bUseHQForwardReflections

```
bool bUseHQForwardReflections
```

Forward renderer: enables multiple parallax-corrected reflection captures that blend together.  Mobile renderer: blend between nearest 3 reflection captures, but reduces the number of samplers available to the material as two more samplers will be used for reflection cubemaps.

### bUsePlanarForwardReflections

```
bool bUsePlanarForwardReflections
```

Enables planar reflection when using the forward renderer or mobile. Enabling this setting reduces the number of samplers available to the material as one more sampler will be used for the planar reflection.

### SORTING

```
GROUP SORTING
```
### ParameterGroupData

```
TArray<FParameterGroupData> ParameterGroupData
```

Controls where this parameter group is displayed in a material instance parameter list.  The lower the number the higher up in the parameter list.

---

## MATERIAL

### MaterialDomain

```
EMaterialDomain MaterialDomain
```

The domain that the material's attributes will be evaluated in.  Certain pieces of material functionality are only valid in certain domains, for example vertex normal is only valid on a surface.

### OpacityMaskClipValue

```
float32 OpacityMaskClipValue
```

If BlendMode is BLEND_Masked, the surface is not rendered where OpacityMask < OpacityMaskClipValue.  If BlendMode is BLEND_Translucent, BLEND_Additive, or BLEND_Modulate, and "Output Velocity" is enabled, the object velocity is not rendered where Opacity < OpacityMaskClipValue.

### bNormalCurvatureToRoughness

```
bool bNormalCurvatureToRoughness
```

Reduce roughness based on screen space normal changes.

### BlendMode

```
EBlendMode BlendMode
```

Determines how the material's color is blended with background colors.

### MaterialDecalResponse

```
EMaterialDecalResponse MaterialDecalResponse
```

Defines how the material reacts on DBuffer decals (Affects look, performance and texture/sample usage).  Non DBuffer Decals can be disabled on the primitive (e.g. static mesh)

### ShadingRate

```
EMaterialShadingRate ShadingRate
```

Select what shading rate to apply for platforms that have variable rate shading

### ShadingModel

```
EMaterialShadingModel ShadingModel
```

Determines how inputs are combined to create the material's final color.

### NumCustomizedUVs

```
int NumCustomizedUVs
```

Number of customized UV inputs to display.  Unconnected customized UV inputs will just pass through the vertex UVs.

### bFullyRough

```
bool bFullyRough
```

Forces the material to be completely rough. Saves a number of instructions and one sampler.

### bUseEmissiveForDynamicAreaLighting

```
bool bUseEmissiveForDynamicAreaLighting
```

If enabled, the material's emissive colour is injected into the LightPropagationVolume

---

## MOBILE

### bUseLightmapDirectionality

```
bool bUseLightmapDirectionality
```

Use lightmap directionality and per pixel normals. If disabled, lighting from lightmaps will be flat but cheaper.

### bMobileEnableHighQualityBRDF

```
bool bMobileEnableHighQualityBRDF
```

Use the high quality brdf functions on mobile to get better visual effects but adds GPU cost.

### FloatPrecisionMode

```
EMaterialFloatPrecisionMode FloatPrecisionMode
```

How to use full (highp) precision in the pixel shader.  highp is slower than the default (mediump) but can be used to work around precision-related rendering errors.  Use 'Full-precision for MaterialExpressions only' if you still want to keep the precision of the halfs in .ush/.usf This setting has no effect on older mobile devices that do not support high precision.

### bUseAlphaToCoverage

```
bool bUseAlphaToCoverage
```

Use alpha to coverage for masked material on mobile, make sure MSAA is enabled as well.

---

## PHYSICALMATERIAL

### PhysMaterialMask

```
UPhysicalMaterialMask PhysMaterialMask
```

Physical material mask to use for this graphics material. Used for sounds, effects etc.

### PhysMaterial

```
UPhysicalMaterial PhysMaterial
```

Physical material to use for this graphics material. Used for sounds, effects etc.

---

## PHYSICALMATERIALMASK

### PhysicalMaterialMap

```
UPhysicalMaterial PhysicalMaterialMap
```

Physical material mask map to use for this graphics material. Used for sounds, effects etc.

---

## POSTPROCESSMATERIAL

### StencilCompare

```
EMaterialStencilCompare StencilCompare
```
### StencilRefValue

```
uint8 StencilRefValue
```
### bIsBlendable

```
bool bIsBlendable
```

Allows blendability to be turned off, only used if domain is PostProcess

### BlendablePriority

```
int BlendablePriority
```

If multiple nodes with the same  type are inserted at the same point, this defined order and if they get combined, only used if domain is PostProcess

### BlendableOutputAlpha

```
bool BlendableOutputAlpha
```

If this is enabled, the blendable will output alpha

### BlendableLocation

```
EBlendableLocation BlendableLocation
```

Where the node is inserted in the (post processing) graph, only used if domain is PostProcess

---

## REFRACTION

### RefractionMode

```
ERefractionMode RefractionMode
```

Controls how the Refraction input is interpreted and how the refraction offset into scene color is computed for this material.

### RefractionDepthBias

```
float32 RefractionDepthBias
```

This is the refraction depth bias, larger values offset distortion to prevent closer objects from rendering into the distorted surface at acute viewing angles but increases the disconnect between surface and where the refraction starts.

---

## TRANSLUCENCY

### TranslucencyPass

```
EMaterialTranslucencyPass TranslucencyPass
```

Specifies the separate pass in which to render translucency.  This can be used to avoid artifacts caused by certain post processing effects.

### TranslucencyLightingMode

```
ETranslucencyLightingMode TranslucencyLightingMode
```

Sets the lighting mode that will be used on this material if it is translucent.

### TranslucencyDirectionalLightingIntensity

```
float32 TranslucencyDirectionalLightingIntensity
```

Useful for artificially increasing the influence of the normal on the lighting result for translucency.  A value larger than 1 increases the influence of the normal, a value smaller than 1 makes the lighting more ambient.

---

## TRANSLUCENCYSELFSHADOWING

### TranslucentMultipleScatteringExtinction

```
FLinearColor TranslucentMultipleScatteringExtinction
```

Colored extinction factor used to approximate multiple scattering in dense volumes.  This is only used when the object is casting a volumetric translucent shadow.

### TranslucentShadowStartOffset

```
float32 TranslucentShadowStartOffset
```

Local space distance to bias the translucent shadow.  Positive values move the shadow away from the light.

### TranslucentShadowDensityScale

```
float32 TranslucentShadowDensityScale
```

Scale used to make translucent shadows more or less opaque than the material's actual opacity.

### TranslucentSelfShadowDensityScale

```
float32 TranslucentSelfShadowDensityScale
```

Scale used to make translucent self-shadowing more or less opaque than the material's shadow on other objects.  This is only used when the object is casting a volumetric translucent shadow.

### TranslucentSelfShadowSecondDensityScale

```
float32 TranslucentSelfShadowSecondDensityScale
```

Used to make a second self shadow gradient, to add interesting shading in the shadow of the first.

### TranslucentBackscatteringExponent

```
float32 TranslucentBackscatteringExponent
```

Controls how diffuse the material's backscattering is when using the MSM_Subsurface shading model.  Larger exponents give a less diffuse look (smaller, brighter backscattering highlight).  This is only used when the object is casting a volumetric translucent shadow from a directional light.

### TranslucentSelfShadowSecondOpacity

```
float32 TranslucentSelfShadowSecondOpacity
```

Controls the strength of the second self shadow gradient.

---

## USAGE

### bUsedWithNiagaraSprites

```
bool bUsedWithNiagaraSprites
```

Indicates that the material and its instances can be used with Niagara sprites (meshes and ribbons, respectively) This will result in the shaders required to support Niagara sprites being compiled which will increase shader compile time and memory usage.

### bUsedWithInstancedStaticMeshes

```
bool bUsedWithInstancedStaticMeshes
```

Indicates that the material and its instances can be used with instanced static meshes This will result in the shaders required to support instanced static meshes being compiled which will increase shader compile time and memory usage.

### bUsedWithStaticLighting

```
bool bUsedWithStaticLighting
```

Indicates that the material and its instances can be used with static lighting This will result in the shaders required to support static lighting being compiled which will increase shader compile time and memory usage.

### bUsedWithNiagaraMeshParticles

```
bool bUsedWithNiagaraMeshParticles
```
### bUsedWithHairStrands

```
bool bUsedWithHairStrands
```

Indicates that the material and its instances can be use with hair strands This will result in the shaders required to support hair strands geometries being compiled which will increase shader compile time and memory usage.

### bUsedWithLidarPointCloud

```
bool bUsedWithLidarPointCloud
```

Indicates that the material and its instances can be use with LiDAR Point Clouds This will result in the shaders required to support LiDAR Point Cloud geometries being compiled which will increase shader compile time and memory usage.

### bUsedWithNiagaraRibbons

```
bool bUsedWithNiagaraRibbons
```
### bUsedWithNanite

```
bool bUsedWithNanite
```

Indicates that the material and its instances can be used with Nanite meshes.  This will result in the shaders required to support Nanite geometries being compiled which will increase shader compile time and memory usage.

### bAutomaticallySetUsageInEditor

```
bool bAutomaticallySetUsageInEditor
```

Whether to automatically set usage flags based on what the material is applied to in the editor.  It can be useful to disable this on a base material with many instances, where adding another usage flag accidentally (eg bUsedWithSkeletalMeshes) can add a lot of shader permutations.

### bUsedWithGeometryCollections

```
bool bUsedWithGeometryCollections
```

Indicates that the material and its instances can be use with geometry collections This will result in the shaders required to support geometry collections being compiled which will increase shader compile time and memory usage.

### bUsedWithClothing

```
bool bUsedWithClothing
```

Indicates that the material and its instances can be used with clothing This will result in the shaders required to support clothing being compiled which will increase shader compile time and memory usage.

### bUsedWithMorphTargets

```
bool bUsedWithMorphTargets
```

Indicates that the material and its instances can be used with morph targets This will result in the shaders required to support morph targets being compiled which will increase shader compile time and memory usage.

### bUsedWithGeometryCache

```
bool bUsedWithGeometryCache
```
### bUsedWithWater

```
bool bUsedWithWater
```

Indicates that the material and its instances can be use with water This will result in the shaders required to support water meshes being compiled which will increase shader compile time and memory usage.

### bUsedWithVirtualHeightfieldMesh

```
bool bUsedWithVirtualHeightfieldMesh
```

Indicates that the material and its instances can be used with Virtual Heightfield Mesh.  This will result in the shaders required to support Virtual Heightfield Mesh geometries being compiled which will increase shader compile time and memory usage.

### bUsedWithMeshParticles

```
bool bUsedWithMeshParticles
```

Indicates that the material and its instances can be used with mesh particles This will result in the shaders required to support mesh particles being compiled which will increase shader compile time and memory usage.

### bUsedWithBeamTrails

```
bool bUsedWithBeamTrails
```

Indicates that the material and its instances can be used with beam trails This will result in the shaders required to support beam trails being compiled which will increase shader compile time and memory usage.

### bUsedWithParticleSprites

```
bool bUsedWithParticleSprites
```

Indicates that the material and its instances can be used with particle sprites This will result in the shaders required to support particle sprites being compiled which will increase shader compile time and memory usage.

### bUsedWithSkeletalMesh

```
bool bUsedWithSkeletalMesh
```

Indicates that the material and its instances can be used with skeletal meshes.  This will result in the shaders required to support skeletal meshes being compiled which will increase shader compile time and memory usage.

### bUsedWithSplineMeshes

```
bool bUsedWithSplineMeshes
```

Indicates that the material and its instances can be used with spline meshes This will result in the shaders required to support spline meshes being compiled which will increase shader compile time and memory usage.

### bUsedWithEditorCompositing

```
bool bUsedWithEditorCompositing
```

Indicates that the material and its instances can be used with editor compositing This will result in the shaders required to support editor compositing being compiled which will increase shader compile time and memory usage.

---

## FUNCTIONS

### SetbUsedWithWater

```
void SetbUsedWithWater(bool Value)
```

SetbEnableResponsiveAA

### void SetbEnableResponsiveAA

```
void SetbEnableResponsiveAA(bool Value)
```

SetbScreenSpaceReflections

### void SetbScreenSpaceReflections

```
void SetbScreenSpaceReflections(bool Value)
```

SetbContactShadows

### void SetbContactShadows

```
void SetbContactShadows(bool Value)
```

SetTwoSided

### void SetTwoSided

```
void SetTwoSided(bool Value)
```

SetDitheredLODTransition

### void SetDitheredLODTransition

```
void SetDitheredLODTransition(bool Value)
```

SetDitherOpacityMask

### void SetDitherOpacityMask

```
void SetDitherOpacityMask(bool Value)
```

SetbAllowNegativeEmissiveColor

### void SetbAllowNegativeEmissiveColor

```
void SetbAllowNegativeEmissiveColor(bool Value)
```

SetbEnableMobileSeparateTranslucency

### void SetbEnableMobileSeparateTranslucency

```
void SetbEnableMobileSeparateTranslucency(bool Value)
```

SetbDisableDepthTest

### void SetbDisableDepthTest

```
void SetbDisableDepthTest(bool Value)
```

SetbWriteOnlyAlpha

### void SetbWriteOnlyAlpha

```
void SetbWriteOnlyAlpha(bool Value)
```

SetbGenerateSphericalParticleNormals

### void SetbGenerateSphericalParticleNormals

```
void SetbGenerateSphericalParticleNormals(bool Value)
```

SetbTangentSpaceNormal

### void SetbTangentSpaceNormal

```
void SetbTangentSpaceNormal(bool Value)
```

GetbUseEmissiveForDynamicAreaLighting

### bool GetbUseEmissiveForDynamicAreaLighting

```
bool GetbUseEmissiveForDynamicAreaLighting()const SetbUseEmissiveForDynamicAreaLighting
```

void SetbUseEmissiveForDynamicAreaLighting(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithSkeletalMesh

### bool GetbUsedWithSkeletalMesh

```
bool GetbUsedWithSkeletalMesh()const SetbUsedWithSkeletalMesh
```

void SetbUsedWithSkeletalMesh(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithEditorCompositing

### bool GetbUsedWithEditorCompositing

```
bool GetbUsedWithEditorCompositing()const SetbUsedWithEditorCompositing
```

void SetbUsedWithEditorCompositing(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithParticleSprites

### bool GetbUsedWithParticleSprites

```
bool GetbUsedWithParticleSprites()const SetbUsedWithParticleSprites
```

void SetbUsedWithParticleSprites(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithBeamTrails

### bool GetbUsedWithBeamTrails

```
bool GetbUsedWithBeamTrails()const SetbUsedWithBeamTrails
```

void SetbUsedWithBeamTrails(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithMeshParticles

### bool GetbUsedWithMeshParticles

```
bool GetbUsedWithMeshParticles()const SetbUsedWithMeshParticles
```

void SetbUsedWithMeshParticles(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithNiagaraSprites

### bool GetbUsedWithNiagaraSprites

```
bool GetbUsedWithNiagaraSprites()const SetbUsedWithNiagaraSprites
```

void SetbUsedWithNiagaraSprites(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithNiagaraRibbons

### bool GetbUsedWithNiagaraRibbons

```
bool GetbUsedWithNiagaraRibbons()const SetbUsedWithNiagaraRibbons
```

void SetbUsedWithNiagaraRibbons(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithNiagaraMeshParticles

### bool GetbUsedWithNiagaraMeshParticles

```
bool GetbUsedWithNiagaraMeshParticles()const SetbUsedWithNiagaraMeshParticles
```

void SetbUsedWithNiagaraMeshParticles(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithGeometryCache

### bool GetbUsedWithGeometryCache

```
bool GetbUsedWithGeometryCache()const SetbUsedWithGeometryCache
```

void SetbUsedWithGeometryCache(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithStaticLighting

### bool GetbUsedWithStaticLighting

```
bool GetbUsedWithStaticLighting()const SetbUsedWithStaticLighting
```

void SetbUsedWithStaticLighting(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithMorphTargets

### bool GetbUsedWithMorphTargets

```
bool GetbUsedWithMorphTargets()const SetbUsedWithMorphTargets
```

void SetbUsedWithMorphTargets(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithSplineMeshes

### bool GetbUsedWithSplineMeshes

```
bool GetbUsedWithSplineMeshes()const SetbUsedWithSplineMeshes
```

void SetbUsedWithSplineMeshes(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithInstancedStaticMeshes

### bool GetbUsedWithInstancedStaticMeshes

```
bool GetbUsedWithInstancedStaticMeshes()const SetbUsedWithInstancedStaticMeshes
```

void SetbUsedWithInstancedStaticMeshes(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithGeometryCollections

### bool GetbUsedWithGeometryCollections

```
bool GetbUsedWithGeometryCollections()const SetbUsedWithGeometryCollections
```

void SetbUsedWithGeometryCollections(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithClothing

### bool GetbUsedWithClothing

```
bool GetbUsedWithClothing()const SetbUsedWithClothing
```

void SetbUsedWithClothing(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithWater

### bool GetbUsedWithWater

```
bool GetbUsedWithWater()const SetbCastDynamicShadowAsMasked
```

void SetbCastDynamicShadowAsMasked(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithHairStrands

### bool GetbUsedWithHairStrands

```
bool GetbUsedWithHairStrands()const SetbUsedWithHairStrands
```

void SetbUsedWithHairStrands(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithLidarPointCloud

### bool GetbUsedWithLidarPointCloud

```
bool GetbUsedWithLidarPointCloud()const SetbUsedWithLidarPointCloud
```

void SetbUsedWithLidarPointCloud(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithVirtualHeightfieldMesh

### bool GetbUsedWithVirtualHeightfieldMesh

```
bool GetbUsedWithVirtualHeightfieldMesh()const SetbUsedWithVirtualHeightfieldMesh
```

void SetbUsedWithVirtualHeightfieldMesh(

### bool 	Value

```
bool 	Value 	)
```

GetbUsedWithNanite

### bool GetbUsedWithNanite

```
bool GetbUsedWithNanite()const SetbUsedWithNanite
```

void SetbUsedWithNanite(

### bool 	Value

```
bool 	Value 	)
```

GetbAutomaticallySetUsageInEditor

### bool GetbAutomaticallySetUsageInEditor

```
bool GetbAutomaticallySetUsageInEditor()const SetbAutomaticallySetUsageInEditor
```

void SetbAutomaticallySetUsageInEditor(

### bool 	Value

```
bool 	Value 	)
```

GetbFullyRough

### bool GetbFullyRough

```
bool GetbFullyRough()const SetbFullyRough
```

void SetbFullyRough(

### bool 	Value

```
bool 	Value 	)
```

GetbUseLightmapDirectionality

### bool GetbUseLightmapDirectionality

```
bool GetbUseLightmapDirectionality()const SetbUseLightmapDirectionality
```

void SetbUseLightmapDirectionality(

### bool 	Value

```
bool 	Value 	)
```

GetbMobileEnableHighQualityBRDF

### bool GetbMobileEnableHighQualityBRDF

```
bool GetbMobileEnableHighQualityBRDF()const SetbMobileEnableHighQualityBRDF
```

void SetbMobileEnableHighQualityBRDF(

### bool 	Value

```
bool 	Value 	)
```

GetbUseAlphaToCoverage

### bool GetbUseAlphaToCoverage

```
bool GetbUseAlphaToCoverage()const SetbUseAlphaToCoverage
```

void SetbUseAlphaToCoverage(

### bool 	Value

```
bool 	Value 	)
```

GetbForwardRenderUsePreintegratedGFForSimpleIBL

### bool GetbForwardRenderUsePreintegratedGFForSimpleIBL

```
bool GetbForwardRenderUsePreintegratedGFForSimpleIBL()const SetbForwardRenderUsePreintegratedGFForSimpleIBL
```

void SetbForwardRenderUsePreintegratedGFForSimpleIBL(

### bool 	Value

```
bool 	Value 	)
```

GetbUseHQForwardReflections

### bool GetbUseHQForwardReflections

```
bool GetbUseHQForwardReflections()const SetbUseHQForwardReflections
```

void SetbUseHQForwardReflections(

### bool 	Value

```
bool 	Value 	)
```

GetbForwardBlendsSkyLightCubemaps

### bool GetbForwardBlendsSkyLightCubemaps

```
bool GetbForwardBlendsSkyLightCubemaps()const SetbForwardBlendsSkyLightCubemaps
```

void SetbForwardBlendsSkyLightCubemaps(

### bool 	Value

```
bool 	Value 	)
```

GetbUsePlanarForwardReflections

### bool GetbUsePlanarForwardReflections

```
bool GetbUsePlanarForwardReflections()const SetbUsePlanarForwardReflections
```

void SetbUsePlanarForwardReflections(

### bool 	Value

```
bool 	Value 	)
```

GetbNormalCurvatureToRoughness

### bool GetbNormalCurvatureToRoughness

```
bool GetbNormalCurvatureToRoughness()const SetbNormalCurvatureToRoughness
```

void SetbNormalCurvatureToRoughness(

### bool 	Value

```
bool 	Value 	)
```

SetAllowTranslucentCustomDepthWrites

### void SetAllowTranslucentCustomDepthWrites

```
void SetAllowTranslucentCustomDepthWrites(bool Value)
```

SetWireframe

### void SetWireframe

```
void SetWireframe(bool Value)
```

SetbUseMaterialAttributes

### void SetbUseMaterialAttributes

```
void SetbUseMaterialAttributes(bool Value)
```

SetbEnableExecWire

### void SetbEnableExecWire

```
void SetbEnableExecWire(bool Value)
```

SetbEnableNewHLSLGenerator

### void SetbEnableNewHLSLGenerator

```
void SetbEnableNewHLSLGenerator(bool Value)
```

SetbCastRayTracedShadows

### void SetbCastRayTracedShadows

```
void SetbCastRayTracedShadows(bool Value)
```

SetbUseTranslucencyVertexFog

### void SetbUseTranslucencyVertexFog

```
void SetbUseTranslucencyVertexFog(bool Value)
```

SetbApplyCloudFogging

### void SetbApplyCloudFogging

```
void SetbApplyCloudFogging(bool Value)
```

SetbIsSky

### void SetbIsSky

```
void SetbIsSky(bool Value)
```

SetbComputeFogPerPixel

### void SetbComputeFogPerPixel

```
void SetbComputeFogPerPixel(bool Value)
```

SetbOutputTranslucentVelocity

### void SetbOutputTranslucentVelocity

```
void SetbOutputTranslucentVelocity(bool Value)
```

GetBlendableOutputAlpha

### bool GetBlendableOutputAlpha

```
bool GetBlendableOutputAlpha()const SetBlendableOutputAlpha
```

void SetBlendableOutputAlpha(

### bool 	Value

```
bool 	Value 	)
```

SetbEnableStencilTest

### void SetbEnableStencilTest

```
void SetbEnableStencilTest(bool Value)
```

GetbIsBlendable

### bool GetbIsBlendable

```
bool GetbIsBlendable()const SetbIsBlendable
```

void SetbIsBlendable(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterial::StaticClass()
```
