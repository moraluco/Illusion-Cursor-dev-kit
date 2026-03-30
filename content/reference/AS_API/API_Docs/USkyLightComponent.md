# USkyLightComponent

**Visibility:** public

## Inheritance

ULightComponentBase → USkyLightComponent → ATMOSPHEREANDCLOUD → CloudAmbientOcclusionExtent

## Description

float32 CloudAmbientOcclusionExtent

The world space radius of the cloud ambient occlusion map around the camera in kilometers.

CloudAmbientOcclusionStrength float32 CloudAmbientOcclusionStrength

The strength of the ambient occlusion, higher value will block more light.

bCloudAmbientOcclusion bool bCloudAmbientOcclusion

Whether the cloud should occlude sky contribution within the atmosphere (progressively fading multiple scattering out) or not.

CloudAmbientOcclusionApertureScale float32 CloudAmbientOcclusionApertureScale

Controls the cone aperture angle over which the sky occlusion due to volumetric clouds is evaluated. A value of 1 means `take into account the entire hemisphere` resulting in blurry occlusion, while a value of 0 means `take into account a single up occlusion direction up` resulting in sharp occlusion.

CloudAmbientOcclusionMapResolutionScale float32 CloudAmbientOcclusionMapResolutionScale

Scale the cloud ambient occlusion map resolution, base resolution is 512. The resolution is still clamped to 'r.VolumetricCloud.SkyAO.MaxResolution'.

## DISTANCEFIELDAMBIENTOCCLUSION

### OcclusionCombineMode

```
EOcclusionCombineMode OcclusionCombineMode
```

Controls how occlusion from Distance Field Ambient Occlusion is combined with Screen Space Ambient Occlusion.

### OcclusionMaxDistance

```
float32 OcclusionMaxDistance
```

Max distance that the occlusion of one point will affect another.  Higher values increase the cost of Distance Field AO exponentially.

### OcclusionExponent

```
float32 OcclusionExponent
```

Exponent applied to the computed AO.  Values lower than 1 brighten occlusion overall without losing contact shadows.

### OcclusionTint

```
FColor OcclusionTint
```

Tint color on occluded areas, artistic control.

### MinOcclusion

```
float32 MinOcclusion
```

Controls the darkest that a fully occluded area can get.  This tends to destroy contact shadows, use Contrast or OcclusionExponent instead.

### Contrast

```
float32 Contrast
```

Contrast S-curve applied to the computed AO.  A value of 0 means no contrast increase, 1 is a significant contrast increase.

---

## LIGHT

### SourceCubemapAngle

```
float32 SourceCubemapAngle
```

Angle to rotate the source cubemap when SourceType is set to SLS_SpecifiedCubemap.

### bLowerHemisphereIsBlack

```
bool bLowerHemisphereIsBlack
```

Whether all distant lighting from the lower hemisphere should be set to LowerHemisphereColor.  Enabling this is accurate when lighting a scene on a planet where the ground blocks the sky, However disabling it can be useful to approximate skylight bounce lighting (eg Movable light).

### SkyDistanceThreshold

```
float32 SkyDistanceThreshold
```

Distance from the sky light at which any geometry should be treated as part of the sky.  This is also used by reflection captures, so update reflection captures to see the impact.

### Cubemap

```
UTextureCube Cubemap
```

Cubemap to use for sky lighting if SourceType is set to SLS_SpecifiedCubemap.

### LowerHemisphereColor

```
FLinearColor LowerHemisphereColor
```
### bCaptureEmissiveOnly

```
bool bCaptureEmissiveOnly
```

Only capture emissive materials. Skips all lighting making the capture cheaper. Recomended when using CaptureEveryFrame

### CubemapResolution

```
int CubemapResolution
```

Maximum resolution for the very top processed cubemap mip. Must be a power of 2.

### SourceType

```
ESkyLightSourceType SourceType
```

Indicates where to get the light contribution from.

### bRealTimeCapture

```
bool bRealTimeCapture
```

When enabled, the sky will be captured and convolved to achieve dynamic diffuse and specular environment lighting.  SkyAtmosphere, VolumetricCloud Components as well as sky domes with Sky materials are taken into account.

---

## RENDERING \| COMPONENTS \| LIGHT

### SetVolumetricScatteringIntensity

```
void SetVolumetricScatteringIntensity(float32 NewIntensity)
```

SetIndirectLightingIntensity

### void SetIndirectLightingIntensity

```
void SetIndirectLightingIntensity(float32 NewIntensity)
```

---

## RENDERING \| COMPONENTS \| SKYLIGHT

### SetLowerHemisphereColor

```
void SetLowerHemisphereColor(FLinearColor InLowerHemisphereColor)
```

SetMinOcclusion

### void SetMinOcclusion

```
void SetMinOcclusion(float32 InMinOcclusion)
```

SetIntensity

### void SetIntensity

```
void SetIntensity(float32 NewIntensity)
```

SetLightColor

### void SetLightColor

```
void SetLightColor(FLinearColor NewLightColor)
```

Set color of the light

### SetOcclusionTint

```
void SetOcclusionTint(FColor InTint)
```

SetOcclusionContrast

### void SetOcclusionContrast

```
void SetOcclusionContrast(float32 InOcclusionContrast)
```

SetOcclusionExponent

### void SetOcclusionExponent

```
void SetOcclusionExponent(float32 InOcclusionExponent)
```

RecaptureSky

### void RecaptureSky

```
void RecaptureSky()
```

Recaptures the scene for the skylight.  This is useful for making sure the sky light is up to date after changing something in the world that it would capture.  Warning: this is very costly and will definitely cause a hitch.

---

## SKYLIGHT

### SetCubemapBlend

```
void SetCubemapBlend(UTextureCube SourceCubemap, UTextureCube DestinationCubemap, float32 InBlendFraction)
```

Creates sky lighting from a blend between two cubemaps, which is only valid when SourceType is set to SpecifiedCubemap.  This can be used to seamlessly transition sky lighting between different times of day.  The caller should continue to update the blend until BlendFraction is 0 or 1 to reduce rendering cost.  The caller is responsible for avoiding pops due to changing the source or destination.

### SetCubemap

```
void SetCubemap(UTextureCube NewCubemap)
```

Sets the cubemap used when SourceType is set to SpecifiedCubemap, and causes a skylight update on the next tick.

---

## FUNCTIONS

### GetCubemap

```
UTextureCube GetCubemap()const
```

GetLowerHemisphereColor

### const FLinearColor& GetLowerHemisphereColor

```
const FLinearColor& GetLowerHemisphereColor()const GetOcclusionExponent
```

const float32& GetOcclusionExponent() const

### GetMinOcclusion

```
const float32& GetMinOcclusion()const
```

GetOcclusionTint

### const FColor& GetOcclusionTint

```
const FColor& GetOcclusionTint()const GetbCloudAmbientOcclusion
```

bool GetbCloudAmbientOcclusion() const

### SetbCloudAmbientOcclusion

```
void SetbCloudAmbientOcclusion(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static USkyLightComponent USkyLightComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USkyLightComponent USkyLightComponent::GetOrCreate

```
static USkyLightComponent USkyLightComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USkyLightComponent USkyLightComponent::Create

```
static USkyLightComponent USkyLightComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USkyLightComponent::StaticClass

```
static UClass USkyLightComponent::StaticClass()
```
