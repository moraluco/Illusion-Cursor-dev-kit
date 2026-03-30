# UVolumetricCloudComponent

**Visibility:** public

## Inheritance

USceneComponent → UVolumetricCloudComponent

## Description

A component that represents a participating media material around a planet, e.g. clouds.

## Members

### MATERIAL

```
CLOUD MATERIAL
```
### Material

```
UMaterialInterface Material
```

The material describing the cloud volume. It must be a Volume domain material.

### TRACING

```
CLOUD TRACING
```
### bUsePerSampleAtmosphericLightTransmittance

```
bool bUsePerSampleAtmosphericLightTransmittance
```

Whether to apply atmosphere transmittance per sample, instead of using the light global transmittance.

### SkyLightCloudBottomOcclusion

```
float32 SkyLightCloudBottomOcclusion
```

Occlude the sky light contribution at the bottom of the cloud layer. This is a fast approximation to sky lighting being occluded by cloud without having to trace rays or sample AO texture. Ignored if the cloud material explicitely sets the ambient occlusion value.

### ViewSampleCountScale

```
float32 ViewSampleCountScale
```

Scale the tracing sample count in primary views. Quality level scalability CVARs affect the maximum range.  The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.ViewRaySampleCountMax'.

### StopTracingTransmittanceThreshold

```
float32 StopTracingTransmittanceThreshold
```

When the mean transmittance is below this threshold, we stop tracing. This is a good way to reduce the ray marched sample count, and thus to increase performance.

### ShadowViewSampleCountScale

```
float32 ShadowViewSampleCountScale
```

Scale the shadow tracing sample count in primary views, only used with Advanced Output ray marched shadows. Quality level scalability CVARs affect the maximum range.  The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.Shadow.ViewRaySampleMaxCount'.

### ReflectionViewSampleCountScale

```
float32 ReflectionViewSampleCountScale
```

Scale the tracing sample count in reflection views. Quality level scalability CVARs affect the maximum range.  The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.ReflectionRaySampleMaxCount'.

### ShadowTracingDistance

```
float32 ShadowTracingDistance
```

The shadow tracing distance in kilometers, only used with Advanced Output ray marched shadows.

### ShadowReflectionViewSampleCountScale

```
float32 ShadowReflectionViewSampleCountScale
```

Scale the shadow tracing sample count in reflection views, only used with Advanced Output ray marched shadows. Quality level scalability CVARs affect the maximum range.  The sample count resolution is still clamped according to scalability setting to 'r.VolumetricCloud.Shadow.ReflectionRaySampleMaxCount'.

---

## LAYER

### TracingStartMaxDistance

```
float32 TracingStartMaxDistance
```

The maximum distance of the volumetric surface before which we will accept to start tracing. (kilometers)

### LayerBottomAltitude

```
float32 LayerBottomAltitude
```

The altitude at which the cloud layer starts. (kilometers above the ground)

### LayerHeight

```
float32 LayerHeight
```

The height of the the cloud layer. (kilometers above the layer bottom altitude)

### TracingMaxDistance

```
float32 TracingMaxDistance
```

The maximum distance that will be traced inside the cloud layer. (kilometers)

---

## PLANET

### GroundAlbedo

```
FColor GroundAlbedo
```

The ground albedo used to light the cloud from below with respect to the sun light and sky atmosphere.  This is only used by the cloud material when the 'Volumetric Advanced' node have GroundContribution enabled.

### PlanetRadius

```
float32 PlanetRadius
```

The planet radius used when there is not SkyAtmosphere component present in the scene.

---

## RENDERING

### SetShadowTracingDistance

```
void SetShadowTracingDistance(float32 NewValue)
```

SetGroundAlbedo

### void SetGroundAlbedo

```
void SetGroundAlbedo(FColor NewValue)
```

SetLayerBottomAltitude

### void SetLayerBottomAltitude

```
void SetLayerBottomAltitude(float32 NewValue)
```

SetLayerHeight

### void SetLayerHeight

```
void SetLayerHeight(float32 NewValue)
```

SetMaterial

### void SetMaterial

```
void SetMaterial(UMaterialInterface NewValue)
```

SetPlanetRadius

### void SetPlanetRadius

```
void SetPlanetRadius(float32 NewValue)
```

SetReflectionViewSampleCountScale

### void SetReflectionViewSampleCountScale

```
void SetReflectionViewSampleCountScale(float32 NewValue)
```

SetShadowReflectionViewSampleCountScale

### void SetShadowReflectionViewSampleCountScale

```
void SetShadowReflectionViewSampleCountScale(float32 NewValue)
```

SetbUsePerSampleAtmosphericLightTransmittance

### void SetbUsePerSampleAtmosphericLightTransmittance

```
void SetbUsePerSampleAtmosphericLightTransmittance(bool NewValue)
```

SetShadowViewSampleCountScale

### void SetShadowViewSampleCountScale

```
void SetShadowViewSampleCountScale(float32 NewValue)
```

SetSkyLightCloudBottomOcclusion

### void SetSkyLightCloudBottomOcclusion

```
void SetSkyLightCloudBottomOcclusion(float32 NewValue)
```

SetStopTracingTransmittanceThreshold

### void SetStopTracingTransmittanceThreshold

```
void SetStopTracingTransmittanceThreshold(float32 NewValue)
```

SetTracingMaxDistance

### void SetTracingMaxDistance

```
void SetTracingMaxDistance(float32 NewValue)
```

SetTracingStartMaxDistance

### void SetTracingStartMaxDistance

```
void SetTracingStartMaxDistance(float32 NewValue)
```

SetViewSampleCountScale

### void SetViewSampleCountScale

```
void SetViewSampleCountScale(float32 NewValue)
```

---

## FUNCTIONS

### GetLayerHeight

```
const float32& GetLayerHeight()const
```

GetLayerBottomAltitude

### const float32& GetLayerBottomAltitude

```
const float32& GetLayerBottomAltitude()const GetTracingStartMaxDistance
```

const float32& GetTracingStartMaxDistance() const

### GetTracingMaxDistance

```
const float32& GetTracingMaxDistance()const
```

GetPlanetRadius

### const float32& GetPlanetRadius

```
const float32& GetPlanetRadius()const GetGroundAlbedo
```

const FColor& GetGroundAlbedo() const

### GetMaterial

```
UMaterialInterface GetMaterial()const
```

GetbUsePerSampleAtmosphericLightTransmittance

### bool GetbUsePerSampleAtmosphericLightTransmittance

```
bool GetbUsePerSampleAtmosphericLightTransmittance()const GetSkyLightCloudBottomOcclusion
```

const float32& GetSkyLightCloudBottomOcclusion() const

### GetViewSampleCountScale

```
const float32& GetViewSampleCountScale()const
```

GetReflectionViewSampleCountScale

### const float32& GetReflectionViewSampleCountScale

```
const float32& GetReflectionViewSampleCountScale()const GetShadowViewSampleCountScale
```

const float32& GetShadowViewSampleCountScale() const

### GetShadowReflectionViewSampleCountScale

```
const float32& GetShadowReflectionViewSampleCountScale()const
```

GetShadowTracingDistance

### const float32& GetShadowTracingDistance

```
const float32& GetShadowTracingDistance()const GetStopTracingTransmittanceThreshold
```

const float32& GetStopTracingTransmittanceThreshold() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UVolumetricCloudComponent UVolumetricCloudComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UVolumetricCloudComponent UVolumetricCloudComponent::GetOrCreate

```
static UVolumetricCloudComponent UVolumetricCloudComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UVolumetricCloudComponent UVolumetricCloudComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UVolumetricCloudComponent::StaticClass

```
static UClass UVolumetricCloudComponent::StaticClass()
```
