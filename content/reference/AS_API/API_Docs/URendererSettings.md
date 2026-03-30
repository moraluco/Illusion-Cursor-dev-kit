# URendererSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → URendererSettings

## Description

Rendering settings.

## CULLING

### MinScreenRadiusForLights

```
float32 MinScreenRadiusForLights
```

Screen radius at which lights are culled. Larger values can improve performance but causes lights to pop off when they affect a small area of the screen.

### MinScreenRadiusForEarlyZPass

```
float32 MinScreenRadiusForEarlyZPass
```

Screen radius at which objects are culled for the early Z pass. Larger values can improve performance but very large values can degrade performance if large occluders are not rendered.

### MinScreenRadiusForCSMdepth

```
float32 MinScreenRadiusForCSMdepth
```

Screen radius at which objects are culled for cascaded shadow map depth passes. Larger values can improve performance but can cause artifacts as objects stop casting shadows.

---

## DEFAULTSETTINGS

### DefaultFeatureAutoExposure

```
EAutoExposureMethodUI DefaultFeatureAutoExposure
```

The default method for AutoExposure(postprocess volume/camera/game setting can still override and enable or disable it independently)

### MSAASampleCount

```
ECompositingSampleCount MSAASampleCount
```

Default number of samples for MSAA.

### DefaultLightUnits

```
ELightUnits DefaultLightUnits
```

Which units to use for newly placed point, spot and rect lights

### DefaultFeatureAntiAliasing

```
EAntiAliasingMethod DefaultFeatureAntiAliasing
```

Selects the anti-aliasing method to use.

### DefaultFeatureAutoExposureBias

```
float32 DefaultFeatureAutoExposureBias
```

Default Value for auto exposure bias.

### DefaultBackBufferPixelFormat

```
EDefaultBackBufferPixelFormat DefaultBackBufferPixelFormat
```

Pixel format used for back buffer, when not specified

---

## EDITOR

### WireframeCullThreshold

```
float32 WireframeCullThreshold
```

Screen radius at which wireframe objects are culled. Larger values can improve performance when viewing a scene in wireframe.

EXPERIMENTAL|LOD STREAMING|SKELETAL MESH

### bStreamSkeletalMeshLODs

```
FPerPlatformBool bStreamSkeletalMeshLODs
```

Whether to stream skeletal mesh LODs by default.

### bDiscardSkeletalMeshOptionalLODs

```
FPerPlatformBool bDiscardSkeletalMeshOptionalLODs
```

Whether to discard skeletal mesh LODs below minimum LOD levels at cook time.

---

## GLOBALILLUMINATION

### DynamicGlobalIllumination

```
EDynamicGlobalIlluminationMethod DynamicGlobalIllumination
```
### Method

```
Dynamic Global Illumination Method
```

---

## LUMEN

### LumenSoftwareTracingMode

```
ELumenSoftwareTracingMode LumenSoftwareTracingMode
```

Controls which tracing method Lumen uses when using Software Ray Tracing.

### LumenRayLightingMode

```
ELumenRayLightingMode LumenRayLightingMode
```

Controls how Lumen Reflection rays are lit when Lumen is using Hardware Ray Tracing.  By default, Lumen uses the Surface Cache for best performance, but can be set to 'Hit Lighting' for higher quality.

---

## MATERIALS

### ShaderCompressionFormat

```
EShaderCompressionFormat ShaderCompressionFormat
```

Select how the shaders are compressed for storage

---

## MOBILE

### MobileFloatPrecisionMode

```
EMobileFloatPrecisionMode MobileFloatPrecisionMode
```

Project wide mobile float precision mode for shaders and materials. Changing this setting requires restarting the editor.

### MobilePlanarReflectionMode

```
EMobilePlanarReflectionMode MobilePlanarReflectionMode
```

The PlanarReflection will work differently on different mode on mobile platform, choose the proper mode as expect. Changing this setting requires restarting the editor.

### MaxMobileCascades

```
int MaxMobileCascades
```

The maximum number of cascades with which to render dynamic directional light shadows when using the mobile renderer.

### MobileAntiAliasing

```
EMobileAntiAliasingMethod MobileAntiAliasing
```

The mobile default anti-aliasing method.

---

## MOBILESHADERPERMUTATIONREDUCTION

### MobileNumDynamicPointLights

```
uint MobileNumDynamicPointLights
```

The number of dynamic spotlights or point lights to support on mobile devices. Setting this to 0 for games which do not require dynamic spotlights or point lights will reduce the number of shaders generated. Changing this setting requires restarting the editor.

---

## OPTIMIZATIONS

### VelocityPass

```
EVelocityOutputPass VelocityPass
```

When to write velocity buffer. Changing this setting requires restarting the editor.

### SkinCacheSceneMemoryLimitInMB

```
float32 SkinCacheSceneMemoryLimitInMB
```

Maximum amount of memory (in MB) per world/scene allowed for the Compute Skin Cache to generate output vertex data and recompute tangents.

### DefaultSkinCacheBehavior

```
ESkinCacheDefaultBehavior DefaultSkinCacheBehavior
```

Default behavior if all skeletal meshes are included/excluded from the skin cache. If Support Ray Tracing is enabled on a mesh, will force inclusive behavior on that mesh.

### VertexDeformationOutputsVelocity

```
EVertexDeformationOutputsVelocity VertexDeformationOutputsVelocity
```

Enables materials with World Position Offset and/or World Displacement to output velocities during the velocity pass even when the actor has not moved.  If the VelocityPass is set to 'Write after base pass' this can incur a performance cost due to additional draw calls.  That performance cost is higher if many objects are using World Position Offset. A forest of trees for example.

### ClearSceneMethod

```
EClearSceneOptions ClearSceneMethod
```

Select how the g-buffer is cleared in game mode (only affects deferred shading).

### GBufferFormat

```
EGBufferFormat GBufferFormat
```

Selects which GBuffer format should be used. Affects performance primarily via how much GPU memory bandwidth used.

### GPUSimulationTextureSizeY

```
int GPUSimulationTextureSizeY
```

The Y size of the GPU simulation texture size. SizeX*SizeY determines the maximum number of GPU simulated particles in an emitter. Potentially overridden by CVar settings in BaseDeviceProfile.ini.

### GPUSimulationTextureSizeX

```
int GPUSimulationTextureSizeX
```

The X size of the GPU simulation texture size. SizeX*SizeY determines the maximum number of GPU simulated particles in an emitter. Potentially overridden by CVar settings in BaseDeviceProfile.ini.

### EarlyZPass

```
EEarlyZPass EarlyZPass
```

Whether to use a depth only pass to initialize Z culling for the base pass.

---

## POSTPROCESSCALIBRATIONMATERIALS

### VisualizeCalibrationColorMaterialPath

```
FSoftObjectPath VisualizeCalibrationColorMaterialPath
```

When the VisualizeCalibrationColor show flag is enabled, this path will be used as the post-process material to render.

### VisualizeCalibrationCustomMaterialPath

```
FSoftObjectPath VisualizeCalibrationCustomMaterialPath
```

When the VisualizeCalibrationCustom show flag is enabled, this path will be used as the post-process material to render.

### VisualizeCalibrationGrayscaleMaterialPath

```
FSoftObjectPath VisualizeCalibrationGrayscaleMaterialPath
```

When the VisualizeCalibrationGrayscale show flag is enabled, this path will be used as the post-process material to render.

---

## POSTPROCESSING

### CustomDepthStencil

```
ECustomDepthStencil CustomDepthStencil
```

Whether the custom depth pass for tagging primitives for postprocessing passes is enabled. Enabling it on demand can save memory but may cause a hitch the first time the feature is used.

### bEnableAlphaChannelInPostProcessing

```
EAlphaChannelMode bEnableAlphaChannelInPostProcessing
```

Configures alpha channel support in renderer's post processing chain. Still experimental: works only with Temporal AA, Motion Blur, Circle Depth Of Field. This option also force disable the separate translucency.

---

## REFLECTIONS

### ReflectionCaptureResolution

```
int ReflectionCaptureResolution
```

The cubemap resolution for all reflection capture probes. Must be power of 2. Note that for very high values the memory and performance impact may be severe.

### Reflections

```
EReflectionMethod Reflections
```
### Method

```
Reflection Method
```

---

## SHADOWS

### ShadowMapMethod

```
EShadowMapMethod ShadowMapMethod
```

Select the primary shadow mapping method. Automatically uses 'Shadow Maps' when Forward Shading is enabled for the project as Virtual Shadow Maps are not supported.

---

## SKINNING

### MaxSkinBones

```
FPerPlatformInt MaxSkinBones
```

Max number of bones that can be skinned on the GPU in a single draw call. The default value is set by the Compat.MAX_GPUSKIN_BONES consolevariable. Changing this setting requires restarting the editor.

### UnlimitedBonInfluencesThreshold

```
int UnlimitedBonInfluencesThreshold
```

When Unlimited Bone Influence is enabled, it still uses a fixed bone inflence buffer until the max bone influence of a mesh exceeds this value

---

## SOFTWARERAYTRACING

### DistanceFieldVoxelDensity

```
float32 DistanceFieldVoxelDensity
```

Determines how the default scale of a mesh converts into distance field voxel dimensions. Changing this will cause all distance fields to be rebuilt.  Large values can consume memory very quickly!  Changing this setting requires restarting the editor.

---

## TRANSLUCENCY

### TranslucentSortPolicy

```
ETranslucentSortPolicy TranslucentSortPolicy
```

The sort mode for translucent primitives, affecting how they are ordered and how they change order as the camera moves. Requires that Separate Translucency (under Postprocessing) is true.

### TranslucentSortAxis

```
FVector TranslucentSortAxis
```

The axis that sorting will occur along when Translucent Sort Policy is set to SortAlongAxis.

---

## VIRTUALTEXTURES

### VirtualTextureTileBorderSize

```
uint VirtualTextureTileBorderSize
```

Size in pixels for virtual texture tile borders, will be rounded to next power-of-2. Larger borders allow higher degree of anisotropic filtering, but uses more disk/cache memory. Changing this setting requires restarting the editor.

### VirtualTextureFeedbackFactor

```
uint VirtualTextureFeedbackFactor
```

Lower factor will increase virtual texture feedback resolution which increases CPU/GPU overhead, but may decrease streaming latency, especially if materials use many virtual textures.

### VirtualTextureTileSize

```
uint VirtualTextureTileSize
```

Size in pixels for virtual texture tiles, will be rounded to next power-of-2. Changing this setting requires restarting the editor.

---

## VR

### HMDFixedFoveationLevel

```
EFixedFoveationLevels HMDFixedFoveationLevel
```

Set the level of fixed-foveation to apply when generating the Variable Rate Shading attachment. This feature is currently experimental.  This can yield some fairly significant performance benefits on GPUs that support Tier 2 VRS.  Lower settings will result in almost no discernible artifacting on most HMDs; higher settings will show some artifacts towards the edges of the view.

---

## WORKINGCOLORSPACE

### WorkingColorSpaceChoice

```
EWorkingColorSpace WorkingColorSpaceChoice
```

Choose from list of provided working color spaces, or custom to provide user-defined space.

### GreenChromaticityCoordinate

```
FVector2D GreenChromaticityCoordinate
```

Working color space green chromaticity coordinates.

### WhiteChromaticityCoordinate

```
FVector2D WhiteChromaticityCoordinate
```

Working color space white chromaticity coordinates.

### RedChromaticityCoordinate

```
FVector2D RedChromaticityCoordinate
```

Working color space red chromaticity coordinates.

### BlueChromaticityCoordinate

```
FVector2D BlueChromaticityCoordinate
```

Working color space blue chromaticity coordinates.

---

## FUNCTIONS

### SetbStencilForLODDither

```
void SetbStencilForLODDither(bool Value)
```

SetbMobileAllowDitheredLODTransition

### void SetbMobileAllowDitheredLODTransition

```
void SetbMobileAllowDitheredLODTransition(bool Value)
```

SetbMobileVirtualTextures

### void SetbMobileVirtualTextures

```
void SetbMobileVirtualTextures(bool Value)
```

SetbReflectionCaptureCompression

### void SetbReflectionCaptureCompression

```
void SetbReflectionCaptureCompression(bool Value)
```

SetbDiscardUnusedQualityLevels

### void SetbDiscardUnusedQualityLevels

```
void SetbDiscardUnusedQualityLevels(bool Value)
```

SetbOcclusionCulling

### void SetbOcclusionCulling

```
void SetbOcclusionCulling(bool Value)
```

SetbPrecomputedVisibilityWarning

### void SetbPrecomputedVisibilityWarning

```
void SetbPrecomputedVisibilityWarning(bool Value)
```

SetbTextureStreaming

### void SetbTextureStreaming

```
void SetbTextureStreaming(bool Value)
```

SetbUseDXT5NormalMaps

### void SetbUseDXT5NormalMaps

```
void SetbUseDXT5NormalMaps(bool Value)
```

SetbVirtualTextures

### void SetbVirtualTextures

```
void SetbVirtualTextures(bool Value)
```

SetbVirtualTextureEnableAutoImport

### void SetbVirtualTextureEnableAutoImport

```
void SetbVirtualTextureEnableAutoImport(bool Value)
```

SetbVirtualTexturedLightmaps

### void SetbVirtualTexturedLightmaps

```
void SetbVirtualTexturedLightmaps(bool Value)
```

SetbVirtualTextureAnisotropicFiltering

### void SetbVirtualTextureAnisotropicFiltering

```
void SetbVirtualTextureAnisotropicFiltering(bool Value)
```

SetbClearCoatEnableSecondNormal

### void SetbClearCoatEnableSecondNormal

```
void SetbClearCoatEnableSecondNormal(bool Value)
```

SetReflectionEnvironmentLightmapMixBasedOnRoughness

### void SetReflectionEnvironmentLightmapMixBasedOnRoughness

```
void SetReflectionEnvironmentLightmapMixBasedOnRoughness(bool Value)
```

SetbUseHardwareRayTracingForLumen

### void SetbUseHardwareRayTracingForLumen

```
void SetbUseHardwareRayTracingForLumen(bool Value)
```

SetbEnableRayTracing

### void SetbEnableRayTracing

```
void SetbEnableRayTracing(bool Value)
```

SetbEnableRayTracingShadows

### void SetbEnableRayTracingShadows

```
void SetbEnableRayTracingShadows(bool Value)
```

SetbEnableRayTracingSkylight

### void SetbEnableRayTracingSkylight

```
void SetbEnableRayTracingSkylight(bool Value)
```

SetbEnableRayTracingTextureLOD

### void SetbEnableRayTracingTextureLOD

```
void SetbEnableRayTracingTextureLOD(bool Value)
```

SetbEnablePathTracing

### void SetbEnablePathTracing

```
void SetbEnablePathTracing(bool Value)
```

SetbGenerateMeshDistanceFields

### void SetbGenerateMeshDistanceFields

```
void SetbGenerateMeshDistanceFields(bool Value)
```

SetbAllowStaticLighting

### void SetbAllowStaticLighting

```
void SetbAllowStaticLighting(bool Value)
```

SetbUseNormalMapsForStaticLighting

### void SetbUseNormalMapsForStaticLighting

```
void SetbUseNormalMapsForStaticLighting(bool Value)
```

SetbForwardShading

### void SetbForwardShading

```
void SetbForwardShading(bool Value)
```

SetbVertexFoggingForOpaque

### void SetbVertexFoggingForOpaque

```
void SetbVertexFoggingForOpaque(bool Value)
```

SetbSeparateTranslucency

### void SetbSeparateTranslucency

```
void SetbSeparateTranslucency(bool Value)
```

SetbHMDFixedFoveationDynamic

### void SetbHMDFixedFoveationDynamic

```
void SetbHMDFixedFoveationDynamic(bool Value)
```

SetbCustomDepthTaaJitter

### void SetbCustomDepthTaaJitter

```
void SetbCustomDepthTaaJitter(bool Value)
```

SetbDefaultFeatureBloom

### void SetbDefaultFeatureBloom

```
void SetbDefaultFeatureBloom(bool Value)
```

SetbDefaultFeatureAmbientOcclusion

### void SetbDefaultFeatureAmbientOcclusion

```
void SetbDefaultFeatureAmbientOcclusion(bool Value)
```

SetbDefaultFeatureAmbientOcclusionStaticFraction

### void SetbDefaultFeatureAmbientOcclusionStaticFraction

```
void SetbDefaultFeatureAmbientOcclusionStaticFraction(bool Value)
```

SetbDefaultFeatureAutoExposure

### void SetbDefaultFeatureAutoExposure

```
void SetbDefaultFeatureAutoExposure(bool Value)
```

SetbExtendDefaultLuminanceRangeInAutoExposureSettings

### void SetbExtendDefaultLuminanceRangeInAutoExposureSettings

```
void SetbExtendDefaultLuminanceRangeInAutoExposureSettings(bool Value)
```

SetbDefaultFeatureMotionBlur

### void SetbDefaultFeatureMotionBlur

```
void SetbDefaultFeatureMotionBlur(bool Value)
```

SetbDefaultFeatureLensFlare

### void SetbDefaultFeatureLensFlare

```
void SetbDefaultFeatureLensFlare(bool Value)
```

SetbTemporalUpsampling

### void SetbTemporalUpsampling

```
void SetbTemporalUpsampling(bool Value)
```

SetbRenderUnbuiltPreviewShadowsInGame

### void SetbRenderUnbuiltPreviewShadowsInGame

```
void SetbRenderUnbuiltPreviewShadowsInGame(bool Value)
```

SetbMobileDisableVertexFog

### void SetbMobileDisableVertexFog

```
void SetbMobileDisableVertexFog(bool Value)
```

SetbEarlyZPassOnlyMaterialMasking

### void SetbEarlyZPassOnlyMaterialMasking

```
void SetbEarlyZPassOnlyMaterialMasking(bool Value)
```

SetbEnableCSMCaching

### void SetbEnableCSMCaching

```
void SetbEnableCSMCaching(bool Value)
```

SetbDBuffer

### void SetbDBuffer

```
void SetbDBuffer(bool Value)
```

SetbSelectiveBasePassOutputs

### void SetbSelectiveBasePassOutputs

```
void SetbSelectiveBasePassOutputs(bool Value)
```

SetbDefaultParticleCutouts

### void SetbDefaultParticleCutouts

```
void SetbDefaultParticleCutouts(bool Value)
```

SetbGlobalClipPlane

### void SetbGlobalClipPlane

```
void SetbGlobalClipPlane(bool Value)
```

SetbUseGPUMorphTargets

### void SetbUseGPUMorphTargets

```
void SetbUseGPUMorphTargets(bool Value)
```

SetbNvidiaAftermathEnabled

### void SetbNvidiaAftermathEnabled

```
void SetbNvidiaAftermathEnabled(bool Value)
```

SetbMultiView

### void SetbMultiView

```
void SetbMultiView(bool Value)
```

SetbMobilePostProcessing

### void SetbMobilePostProcessing

```
void SetbMobilePostProcessing(bool Value)
```

SetbMobileMultiView

### void SetbMobileMultiView

```
void SetbMobileMultiView(bool Value)
```

SetbRoundRobinOcclusion

### void SetbRoundRobinOcclusion

```
void SetbRoundRobinOcclusion(bool Value)
```

SetbODSCapture

### void SetbODSCapture

```
void SetbODSCapture(bool Value)
```

SetbMeshStreaming

### void SetbMeshStreaming

```
void SetbMeshStreaming(bool Value)
```

SetbSupportStationarySkylight

### void SetbSupportStationarySkylight

```
void SetbSupportStationarySkylight(bool Value)
```

SetbSupportLowQualityLightmaps

### void SetbSupportLowQualityLightmaps

```
void SetbSupportLowQualityLightmaps(bool Value)
```

SetbSupportPointLightWholeSceneShadows

### void SetbSupportPointLightWholeSceneShadows

```
void SetbSupportPointLightWholeSceneShadows(bool Value)
```

SetbSupportSkyAtmosphere

### void SetbSupportSkyAtmosphere

```
void SetbSupportSkyAtmosphere(bool Value)
```

SetbSupportSkyAtmosphereAffectsHeightFog

### void SetbSupportSkyAtmosphereAffectsHeightFog

```
void SetbSupportSkyAtmosphereAffectsHeightFog(bool Value)
```

SetbSupportCloudShadowOnForwardLitTranslucent

### void SetbSupportCloudShadowOnForwardLitTranslucent

```
void SetbSupportCloudShadowOnForwardLitTranslucent(bool Value)
```

SetbMaterialRoughDiffuse

### void SetbMaterialRoughDiffuse

```
void SetbMaterialRoughDiffuse(bool Value)
```

SetbMaterialEnergyConservation

### void SetbMaterialEnergyConservation

```
void SetbMaterialEnergyConservation(bool Value)
```

SetbSupportSkinCacheShaders

### void SetbSupportSkinCacheShaders

```
void SetbSupportSkinCacheShaders(bool Value)
```

SetbMobileEnableStaticAndCSMShadowReceivers

### void SetbMobileEnableStaticAndCSMShadowReceivers

```
void SetbMobileEnableStaticAndCSMShadowReceivers(bool Value)
```

SetbMobileEnableMovableLightCSMShaderCulling

### void SetbMobileEnableMovableLightCSMShaderCulling

```
void SetbMobileEnableMovableLightCSMShaderCulling(bool Value)
```

SetbMobileEnableNoPrecomputedLightingCSMShader

### void SetbMobileEnableNoPrecomputedLightingCSMShader

```
void SetbMobileEnableNoPrecomputedLightingCSMShader(bool Value)
```

SetbMobileAllowDistanceFieldShadows

### void SetbMobileAllowDistanceFieldShadows

```
void SetbMobileAllowDistanceFieldShadows(bool Value)
```

SetbMobileAllowMovableDirectionalLights

### void SetbMobileAllowMovableDirectionalLights

```
void SetbMobileAllowMovableDirectionalLights(bool Value)
```

SetbMobileAllowMovableSpotlights

### void SetbMobileAllowMovableSpotlights

```
void SetbMobileAllowMovableSpotlights(bool Value)
```

SetbMobileAllowMovableSpotlightShadows

### void SetbMobileAllowMovableSpotlightShadows

```
void SetbMobileAllowMovableSpotlightShadows(bool Value)
```

SetbSupport16BitBoneIndex

### void SetbSupport16BitBoneIndex

```
void SetbSupport16BitBoneIndex(bool Value)
```

SetbGPUSkinLimit2BoneInfluences

### void SetbGPUSkinLimit2BoneInfluences

```
void SetbGPUSkinLimit2BoneInfluences(bool Value)
```

SetbSupportDepthOnlyIndexBuffers

### void SetbSupportDepthOnlyIndexBuffers

```
void SetbSupportDepthOnlyIndexBuffers(bool Value)
```

SetbSupportReversedIndexBuffers

### void SetbSupportReversedIndexBuffers

```
void SetbSupportReversedIndexBuffers(bool Value)
```

SetbMobileAmbientOcclusion

### void SetbMobileAmbientOcclusion

```
void SetbMobileAmbientOcclusion(bool Value)
```

SetbUseUnlimitedBoneInfluences

### void SetbUseUnlimitedBoneInfluences

```
void SetbUseUnlimitedBoneInfluences(bool Value)
```

SetbMobileSupportsGen4TAA

### void SetbMobileSupportsGen4TAA

```
void SetbMobileSupportsGen4TAA(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URendererSettings::StaticClass()
```
