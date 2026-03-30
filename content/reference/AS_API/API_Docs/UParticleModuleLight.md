# UParticleModuleLight

**Visibility:** public

## Inheritance

UParticleModuleLightBase → UParticleModuleLight → UParticleModuleLight_Seeded → LIGHT → RadiusScale

## Description

FRawDistributionFloat RadiusScale

Scales the particle's radius, to calculate the light's radius.

bAffectsTranslucency bool bAffectsTranslucency

Whether lights from this module should affect translucency.  Use with caution.  Modules enabling this should only make a few particle lights at most, and the smaller they are, the less they will cost.

bPreviewLightRadius bool bPreviewLightRadius

Will draw wireframe spheres to preview the light radius if enabled.  Note: this is intended for previewing and the value will not be saved, it will always revert to disabled.

SpawnFraction float32 SpawnFraction

Fraction of particles in this emitter to create lights on.

ColorScaleOverLife FRawDistributionVector ColorScaleOverLife

Scale that is applied to the particle's color to calculate the light's color, and can be setup as a curve over the particle's lifetime.

BrightnessOverLife FRawDistributionFloat BrightnessOverLife

Brightness scale for the light, which can be setup as a curve over the particle's lifetime.

bUseInverseSquaredFalloff bool bUseInverseSquaredFalloff

Whether to use physically based inverse squared falloff from the light.  If unchecked, the LightExponent distribution will be used instead.

LightExponent FRawDistributionFloat LightExponent

Provides the light's exponent when inverse squared falloff is disabled.

LightingChannels FLightingChannels LightingChannels

Channels that this light should affect.  Only affect high quality lights These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.

VolumetricScatteringIntensity float32 VolumetricScatteringIntensity

Intensity of the volumetric scattering from this light.  This scales Intensity and LightColor.

bHighQualityLights bool bHighQualityLights

Converts the particle lights into high quality lights as if they came from a PointLightComponent.  High quality lights cost significantly more on both CPU and GPU.

bShadowCastingLights bool bShadowCastingLights

Whether to cast shadows from the particle lights.  Requires High Quality Lights to be enabled.  Warning: This can be incredibly expensive on the GPU - use with caution.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleLight::StaticClass()
```
