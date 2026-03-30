# UDirectionalLightComponent

**Visibility:** public

## Inheritance

ULightComponent → UDirectionalLightComponent

## Description

A light component that has parallel rays. Will provide a uniform lighting across any affected surface (eg. The Sun). This will affect all objects in the defined light-mass importance volume.

## ATMOSPHEREANDCLOUD

### bCastCloudShadows

```
bool bCastCloudShadows
```

Whether the light should cast any shadows from clouds onto the atmosphere and other scene elements.

### bCastShadowsOnAtmosphere

```
bool bCastShadowsOnAtmosphere
```

Whether the light should cast any shadows from opaque meshes onto the atmosphere.

### AtmosphereSunLightIndex

```
int AtmosphereSunLightIndex
```

Two atmosphere lights are supported. For instance: a sun and a moon, or two suns.

### AtmosphereSunDiskColorScale

```
FLinearColor AtmosphereSunDiskColorScale
```

A color multiplied with the sun disk luminance.

### CloudShadowStrength

```
float32 CloudShadowStrength
```

The overall strength of the cloud shadow, higher value will block more light.

### CloudShadowOnAtmosphereStrength

```
float32 CloudShadowOnAtmosphereStrength
```

The strength of the shadow on atmosphere. Disabled when 0.

### CloudShadowOnSurfaceStrength

```
float32 CloudShadowOnSurfaceStrength
```

The strength of the shadow on opaque and transparent meshes. Disabled when 0.

### CloudShadowDepthBias

```
float32 CloudShadowDepthBias
```

The bias applied to the shadow front depth of the volumetric cloud shadow map.

### CloudShadowExtent

```
float32 CloudShadowExtent
```

The world space radius of the cloud shadow map around the camera in kilometers.

### CloudShadowMapResolutionScale

```
float32 CloudShadowMapResolutionScale
```

Scale the cloud shadow map resolution, base resolution is 512. The resolution is still clamped to 'r.VolumetricCloud.ShadowMap.MaxResolution'.

### CloudShadowRaySampleCountScale

```
float32 CloudShadowRaySampleCountScale
```

Scale the shadow map tracing sample count.  The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.ShadowMap.RaySampleMaxCount'.

### CloudScatteredLuminanceScale

```
FLinearColor CloudScatteredLuminanceScale
```

Scales the lights contribution when scattered in cloud participating media. This can help counter balance the fact that our multiple scattering solution is only an approximation.

### bAtmosphereSunLight

```
bool bAtmosphereSunLight
```

Whether the directional light can interact with the atmosphere, cloud and generate a visual disk. All of which compose the visual sky.

### bPerPixelAtmosphereTransmittance

```
bool bPerPixelAtmosphereTransmittance
```

Whether to apply atmosphere transmittance per pixel on opaque meshes, instead of using the light global transmittance. Note: VolumetricCloud per pixel transmittance option is selectable on the VolumetricCloud component itself.

### bCastShadowsOnClouds

```
bool bCastShadowsOnClouds
```

Whether the light should cast any shadows from opaque meshes onto clouds. This is disabled for AtmosphereLight1.

---

## CASCADEDSHADOWMAPS

### FarShadowDistance

```
float32 FarShadowDistance
```

Distance at which the far shadow cascade should end.  Far shadows will cover the range between 'Dynamic Shadow Distance' and this distance.

### ShadowDistanceFadeoutFraction

```
float32 ShadowDistanceFadeoutFraction
```

Controls the size of the fade out region at the far extent of the dynamic shadow's influence.  This is specified as a fraction of DynamicShadowDistance.

### bUseInsetShadowsForMovableObjects

```
bool bUseInsetShadowsForMovableObjects
```

Stationary lights only: Whether to use per-object inset shadows for movable components, even though cascaded shadow maps are enabled.  This allows dynamic objects to have a shadow even when they are outside of the cascaded shadow map, which is important when DynamicShadowDistanceStationaryLight is small.  If DynamicShadowDistanceStationaryLight is large (currently > 8000), this will be forced off.  Disabling this can reduce shadowing cost significantly with many movable objects.

### DynamicShadowCascades

```
int DynamicShadowCascades
```

Number of cascades to split the view frustum into for the whole scene dynamic shadow.  More cascades result in better shadow resolution, but adds significant rendering cost.

### DynamicShadowDistanceMovableLight

```
float32 DynamicShadowDistanceMovableLight
```

How far Cascaded Shadow Map dynamic shadows will cover for a movable light, measured from the camera.  A value of 0 disables the dynamic shadow.

### CascadeDistributionExponent

```
float32 CascadeDistributionExponent
```

Controls whether the cascades are distributed closer to the camera (larger exponent) or further from the camera (smaller exponent).  An exponent of 1 means that cascade transitions will happen at a distance proportional to their resolution.

### DynamicShadowDistanceStationaryLight

```
float32 DynamicShadowDistanceStationaryLight
```

How far Cascaded Shadow Map dynamic shadows will cover for a stationary light, measured from the camera.  A value of 0 disables the dynamic shadow.

### FarShadowCascadeCount

```
int FarShadowCascadeCount
```

0: no DistantShadowCascades, otherwise the count of cascades between WholeSceneDynamicShadowRadius and DistantShadowDistance that are covered by distant shadow cascades.

### CascadeTransitionFraction

```
float32 CascadeTransitionFraction
```

Proportion of the fade region between cascades.  Pixels within the fade region of two cascades have their shadows blended to avoid hard transitions between quality levels.  A value of zero eliminates the fade region, creating hard transitions.  Higher values increase the size of the fade region, creating a more gradual transition between cascades.  The value is expressed as a percentage proportion (i.e. 0.1 = 10% overlap).  Ideal values are the smallest possible which still hide the transition.  An increased fade region size causes an increase in shadow rendering cost.

---

## DISTANCEFIELDSHADOWS

### TraceDistance

```
float32 TraceDistance
```

Determines how far shadows can be cast, in world units.  Larger values increase the shadowing cost.

### DistanceFieldShadowDistance

```
float32 DistanceFieldShadowDistance
```

Distance at which the ray traced shadow cascade should end.  Distance field shadows will cover the range between 'Dynamic Shadow Distance' this distance.

---

## LIGHT

### ModulatedShadowColor

```
FColor ModulatedShadowColor
```

Color to modulate against the scene color when rendering modulated shadows. (mobile only)

### LightSourceAngle

```
float32 LightSourceAngle
```

Angle subtended by light source in degrees (also known as angular diameter).  Defaults to 0.5357 which is the angle for our sun.

### LightSourceSoftAngle

```
float32 LightSourceSoftAngle
```

Angle subtended by soft light source in degrees.

### ShadowAmount

```
float32 ShadowAmount
```

Control the amount of shadow occlusion. A value of 0 means no occlusion, thus no shadow.

### LightmassSettings

```
FLightmassDirectionalLightSettings LightmassSettings
```

The Lightmass settings for this object.

### ShadowCascadeBiasDistribution

```
float32 ShadowCascadeBiasDistribution
```

Controls the depth bias scaling across cascades. This allows to mitigage the shadow acne difference on shadow cascades transition.  A value of 1 scales shadow bias based on each cascade size (Default).  A value of 0 scales shadow bias uniformly accross all cacascade.

### bCastModulatedShadows

```
bool bCastModulatedShadows
```

Whether the light should cast modulated shadows from dynamic objects (mobile only).  Also requires Cast Shadows to be set to True.

---

## LIGHTSHAFTS

### bEnableLightShaftOcclusion

```
bool bEnableLightShaftOcclusion
```

Whether to occlude fog and atmosphere inscattering with screenspace blurred occlusion from this light.

### OcclusionMaskDarkness

```
float32 OcclusionMaskDarkness
```

Controls how dark the occlusion masking is, a value of 1 results in no darkening term.

### OcclusionDepthRange

```
float32 OcclusionDepthRange
```

Everything closer to the camera than this distance will occlude light shafts.

### LightShaftOverrideDirection

```
FVector LightShaftOverrideDirection
```

Can be used to make light shafts come from somewhere other than the light's actual direction.  This will only be used when non-zero.  It does not have to be normalized.

---

## RAYTRACING

### ShadowSourceAngleFactor

```
float32 ShadowSourceAngleFactor
```

Shadow source angle factor, relative to the light source angle.  Defaults to 1.0 to coincide with light source angle.

---

## RENDERING \| LIGHTING

### SetShadowAmount

```
void SetShadowAmount(float32 NewValue)
```

SetAtmosphereSunLightIndex

### void SetAtmosphereSunLightIndex

```
void SetAtmosphereSunLightIndex(int NewValue)
```

SetCascadeDistributionExponent

### void SetCascadeDistributionExponent

```
void SetCascadeDistributionExponent(float32 NewValue)
```

SetCascadeTransitionFraction

### void SetCascadeTransitionFraction

```
void SetCascadeTransitionFraction(float32 NewValue)
```

SetDynamicShadowCascades

### void SetDynamicShadowCascades

```
void SetDynamicShadowCascades(int NewValue)
```

SetDynamicShadowDistanceMovableLight

### void SetDynamicShadowDistanceMovableLight

```
void SetDynamicShadowDistanceMovableLight(float32 NewValue)
```

SetDynamicShadowDistanceStationaryLight

### void SetDynamicShadowDistanceStationaryLight

```
void SetDynamicShadowDistanceStationaryLight(float32 NewValue)
```

SetEnableLightShaftOcclusion

### void SetEnableLightShaftOcclusion

```
void SetEnableLightShaftOcclusion(bool bNewValue)
```

SetLightShaftOverrideDirection

### void SetLightShaftOverrideDirection

```
void SetLightShaftOverrideDirection(FVector NewValue)
```

SetLightSourceAngle

### void SetLightSourceAngle

```
void SetLightSourceAngle(float32 NewValue)
```

SetLightSourceSoftAngle

### void SetLightSourceSoftAngle

```
void SetLightSourceSoftAngle(float32 NewValue)
```

SetOcclusionDepthRange

### void SetOcclusionDepthRange

```
void SetOcclusionDepthRange(float32 NewValue)
```

SetOcclusionMaskDarkness

### void SetOcclusionMaskDarkness

```
void SetOcclusionMaskDarkness(float32 NewValue)
```

SetAtmosphereSunLight

### void SetAtmosphereSunLight

```
void SetAtmosphereSunLight(bool bNewValue)
```

SetShadowCascadeBiasDistribution

### void SetShadowCascadeBiasDistribution

```
void SetShadowCascadeBiasDistribution(float32 NewValue)
```

SetShadowDistanceFadeoutFraction

### void SetShadowDistanceFadeoutFraction

```
void SetShadowDistanceFadeoutFraction(float32 NewValue)
```

SetShadowSourceAngleFactor

### void SetShadowSourceAngleFactor

```
void SetShadowSourceAngleFactor(float32 NewValue)
```

---

## FUNCTIONS

### GetOcclusionDepthRange

```
const float32& GetOcclusionDepthRange()const
```

GetbEnableLightShaftOcclusion

### bool GetbEnableLightShaftOcclusion

```
bool GetbEnableLightShaftOcclusion()const SetbEnableLightShaftOcclusion
```

void SetbEnableLightShaftOcclusion(

### bool 	Value

```
bool 	Value 	)
```

GetOcclusionMaskDarkness

### const float32& GetOcclusionMaskDarkness

```
const float32& GetOcclusionMaskDarkness()const GetShadowCascadeBiasDistribution
```

const float32& GetShadowCascadeBiasDistribution() const

### GetLightShaftOverrideDirection

```
const FVector& GetLightShaftOverrideDirection()const
```

GetDynamicShadowDistanceMovableLight

### const float32& GetDynamicShadowDistanceMovableLight

```
const float32& GetDynamicShadowDistanceMovableLight()const GetDynamicShadowDistanceStationaryLight
```

const float32& GetDynamicShadowDistanceStationaryLight() const

### GetDynamicShadowCascades

```
const int& GetDynamicShadowCascades()const
```

GetCascadeDistributionExponent

### const float32& GetCascadeDistributionExponent

```
const float32& GetCascadeDistributionExponent()const GetCascadeTransitionFraction
```

const float32& GetCascadeTransitionFraction() const

### GetShadowDistanceFadeoutFraction

```
const float32& GetShadowDistanceFadeoutFraction()const
```

GetbUseInsetShadowsForMovableObjects

### bool GetbUseInsetShadowsForMovableObjects

```
bool GetbUseInsetShadowsForMovableObjects()const SetbUseInsetShadowsForMovableObjects
```

void SetbUseInsetShadowsForMovableObjects(

### bool 	Value

```
bool 	Value 	)
```

GetLightSourceAngle

### const float32& GetLightSourceAngle

```
const float32& GetLightSourceAngle()const GetLightSourceSoftAngle
```

const float32& GetLightSourceSoftAngle() const

### GetShadowSourceAngleFactor

```
const float32& GetShadowSourceAngleFactor()const
```

GetbAtmosphereSunLight

### bool GetbAtmosphereSunLight

```
bool GetbAtmosphereSunLight()const SetbAtmosphereSunLight
```

void SetbAtmosphereSunLight(

### bool 	Value

```
bool 	Value 	)
```

GetAtmosphereSunLightIndex

### const int& GetAtmosphereSunLightIndex

```
const int& GetAtmosphereSunLightIndex()const GetbPerPixelAtmosphereTransmittance
```

bool GetbPerPixelAtmosphereTransmittance() const

### SetbPerPixelAtmosphereTransmittance

```
void SetbPerPixelAtmosphereTransmittance(bool Value)
```

GetbCastShadowsOnClouds

### bool GetbCastShadowsOnClouds

```
bool GetbCastShadowsOnClouds()const SetbCastShadowsOnClouds
```

void SetbCastShadowsOnClouds(

### bool 	Value

```
bool 	Value 	)
```

GetbCastShadowsOnAtmosphere

### bool GetbCastShadowsOnAtmosphere

```
bool GetbCastShadowsOnAtmosphere()const SetbCastShadowsOnAtmosphere
```

void SetbCastShadowsOnAtmosphere(

### bool 	Value

```
bool 	Value 	)
```

GetbCastCloudShadows

### bool GetbCastCloudShadows

```
bool GetbCastCloudShadows()const SetbCastCloudShadows
```

void SetbCastCloudShadows(

### bool 	Value

```
bool 	Value 	)
```

GetbCastModulatedShadows

### bool GetbCastModulatedShadows

```
bool GetbCastModulatedShadows()const SetbCastModulatedShadows
```

void SetbCastModulatedShadows(

### bool 	Value

```
bool 	Value 	)
```

GetShadowAmount

### const float32& GetShadowAmount

```
const float32& GetShadowAmount()const STATIC FUNCTIONS
```

Get

### static UDirectionalLightComponent UDirectionalLightComponent::Get

```
static UDirectionalLightComponent UDirectionalLightComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UDirectionalLightComponent UDirectionalLightComponent::GetOrCreate

```
static UDirectionalLightComponent UDirectionalLightComponent::GetOrCreate(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UDirectionalLightComponent UDirectionalLightComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UDirectionalLightComponent::StaticClass()
```
