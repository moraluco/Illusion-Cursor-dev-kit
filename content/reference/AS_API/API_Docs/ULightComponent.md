# ULightComponent

**Visibility:** public

## Inheritance

ULightComponentBase → ULightComponent → UDirectionalLightComponent → ULocalLightComponent → DISTANCEFIELDSHADOWS → RayStartOffsetDepthScale

## Description

float32 RayStartOffsetDepthScale

Controls how large of an offset ray traced shadows have from the receiving surface as the camera gets further away.  This can be useful to hide self-shadowing artifacts from low resolution distance fields on huge static meshes.

bUseRayTracedDistanceFieldShadows bool bUseRayTracedDistanceFieldShadows

Whether to use ray traced distance field area shadows.  The project setting bGenerateMeshDistanceFields must be enabled for this to have effect.  Distance field shadows support area lights so they create soft shadows with sharp contacts.  They have less aliasing artifacts than standard shadowmaps, but inherit all the limitations of distance field representations (only uniform scale, no deformation).  These shadows have a low per-object cost (and don't depend on triangle count) so they are effective for distant shadows from a dynamic sun.

## LIGHT

### ShadowSharpen

```
float32 ShadowSharpen
```

Amount to sharpen shadow filtering

### ContactShadowLength

```
float32 ContactShadowLength
```

Length of screen space ray trace for sharp contact shadows. Zero is disabled.

### ShadowResolutionScale

```
float32 ShadowResolutionScale
```

Scales the resolution of shadowmaps used to shadow this light.  By default shadowmap resolution is chosen based on screen size of the caster.  Note: shadowmap resolution is still clamped by 'r.Shadow.MaxResolution'

### bCastShadowsFromCinematicObjectsOnly

```
bool bCastShadowsFromCinematicObjectsOnly
```

Whether the light should only cast shadows from components marked as bCastCinematicShadows.  This is useful for setting up cinematic Movable spotlights aimed at characters and avoiding the shadow depth rendering costs of the background.  Note: this only works with dynamic shadow maps, not with static shadowing or Ray Traced Distance Field shadows.

### LightingChannels

```
const FLightingChannels LightingChannels
```

Channels that this light should affect.  These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.

### ShadowBias

```
float32 ShadowBias
```

Controls how accurate self shadowing of whole scene shadows from this light are.  At 0, shadows will start at the their caster surface, but there will be many self shadowing artifacts.  larger values, shadows will start further from their caster, and there won't be self shadowing artifacts but object might appear to fly.  around 0.5 seems to be a good tradeoff. This also affects the soft transition of shadows

### Temperature

```
float32 Temperature
```

Color temperature in Kelvin of the blackbody illuminant.  White (D65) is 6500K.

### bUseTemperature

```
bool bUseTemperature
```

false: use white (D65) as illuminant.

### SpecularScale

```
float32 SpecularScale
```

Multiplier on specular highlights. Use only with great care! Any value besides 1 is not physical!  Can be used to artistically remove highlights mimicking polarizing filters or photo touch up.

### bAffectDynamicIndirectLighting

```
bool bAffectDynamicIndirectLighting
```

Whether the light should be injected into the Light Propagation Volume

### ShadowSlopeBias

```
float32 ShadowSlopeBias
```

Controls how accurate self shadowing of whole scene shadows from this light are. This works in addition to shadow bias, by increasing the amount of bias depending on the slope of a surface.  At 0, shadows will start at the their caster surface, but there will be many self shadowing artifacts.  larger values, shadows will start further from their caster, and there won't be self shadowing artifacts but object might appear to fly.  around 0.5 seems to be a good tradeoff. This also affects the soft transition of shadows

### ContactShadowLengthInWS

```
bool ContactShadowLengthInWS
```

Where Length of screen space ray trace for sharp contact shadows is in world space units or in screen space units.

### CastTranslucentShadows

```
bool CastTranslucentShadows
```

Whether the light is allowed to cast dynamic shadows from translucency.

### bForceCachedShadowsForMovablePrimitives

```
bool bForceCachedShadowsForMovablePrimitives
```

Enables cached shadows for movable primitives for this light even if r.shadow.cachedshadowscastfrommovableprimitives is 0

---

## LIGHTFUNCTION

### DisabledBrightness

```
float32 DisabledBrightness
```

Brightness factor applied to the light when the light function is specified but disabled, for example in scene captures that use SceneCapView_LitNoShadows.  This should be set to the average brightness of the light function material's emissive input, which should be between 0 and 1.

### LightFunctionFadeDistance

```
float32 LightFunctionFadeDistance
```

Distance at which the light function should be completely faded to DisabledBrightness.  This is useful for hiding aliasing from light functions applied in the distance.

### LightFunctionMaterial

```
UMaterialInterface LightFunctionMaterial
```

The light function material to be applied to this light.  Note that only non-lightmapped lights (UseDirectLightMap=False) can have a light function.  Light functions are supported within VolumetricFog, but only for Directional, Point and Spot lights. Rect lights are not supported.

### LightFunctionScale

```
FVector LightFunctionScale
```

Scales the light function projection.  X and Y scale in the directions perpendicular to the light's direction, Z scales along the light direction.

---

## LIGHTPROFILES

### IESBrightnessScale

```
float32 IESBrightnessScale
```

Global scale for IES brightness contribution. Only available when "Use IES Brightness" is selected, and a valid IES profile texture is set

### IESTexture

```
UTextureLightProfile IESTexture
```

IES texture (light profiles from real world measured data)

### bUseIESBrightness

```
bool bUseIESBrightness
```

true: take light brightness from IES profile, false: use the light brightness

the maximum light in one direction is used to define no masking. Use with InverseSquareFalloff. Will be disabled if a valid IES profile texture is not supplied.

---

## LIGHTSHAFTS

### BloomMaxBrightness

```
float32 BloomMaxBrightness
```

After exposure is applied, scene color brightness larger than BloomMaxBrightness will be rescaled down to BloomMaxBrightness.

### bEnableLightShaftBloom

```
bool bEnableLightShaftBloom
```

Whether to render light shaft bloom from this light.  For directional lights, the color around the light direction will be blurred radially and added back to the scene.  for point lights, the color on pixels closer than the light's SourceRadius will be blurred radially and added back to the scene.

### BloomScale

```
float32 BloomScale
```

Scales the additive color.

### BloomThreshold

```
float32 BloomThreshold
```

Scene color must be larger than this to create bloom in the light shafts.

### BloomTint

```
FColor BloomTint
```

Multiplies against scene color to create the bloom color.

---

## PERFORMANCE

### MaxDistanceFadeRange

```
float32 MaxDistanceFadeRange MaxDrawDistance float32 MaxDrawDistance RENDERING|COMPONENTS|LIGHT SetLightFunctionMaterial void SetLightFunctionMaterial(UMaterialInterface NewLightFunctionMaterial)
```

SetAffectTranslucentLighting

### void SetAffectTranslucentLighting

```
void SetAffectTranslucentLighting(bool bNewValue)
```

SetBloomMaxBrightness

### void SetBloomMaxBrightness

```
void SetBloomMaxBrightness(float32 NewValue)
```

SetBloomScale

### void SetBloomScale

```
void SetBloomScale(float32 NewValue)
```

SetBloomThreshold

### void SetBloomThreshold

```
void SetBloomThreshold(float32 NewValue)
```

SetBloomTint

### void SetBloomTint

```
void SetBloomTint(FColor NewValue)
```

SetEnableLightShaftBloom

### void SetEnableLightShaftBloom

```
void SetEnableLightShaftBloom(bool bNewValue)
```

SetForceCachedShadowsForMovablePrimitives

### void SetForceCachedShadowsForMovablePrimitives

```
void SetForceCachedShadowsForMovablePrimitives(bool bNewValue)
```

SetIESBrightnessScale

### void SetIESBrightnessScale

```
void SetIESBrightnessScale(float32 NewValue)
```

SetIESTexture

### void SetIESTexture

```
void SetIESTexture(UTextureLightProfile NewValue)
```

SetIndirectLightingIntensity

### void SetIndirectLightingIntensity

```
void SetIndirectLightingIntensity(float32 NewIntensity)
```

SetIntensity

### void SetIntensity

```
void SetIntensity(float32 NewIntensity)
```

Set intensity of the light

### SetLightColor

```
void SetLightColor(FLinearColor NewLightColor, bool bSRGB = true)
```

Set color of the light

### SetLightFunctionDisabledBrightness

```
void SetLightFunctionDisabledBrightness(float32 NewValue)
```

SetLightFunctionFadeDistance

### void SetLightFunctionFadeDistance

```
void SetLightFunctionFadeDistance(float32 NewLightFunctionFadeDistance)
```

SetAffectDynamicIndirectLighting

### void SetAffectDynamicIndirectLighting

```
void SetAffectDynamicIndirectLighting(bool bNewValue)
```

SetLightFunctionScale

### void SetLightFunctionScale

```
void SetLightFunctionScale(FVector NewLightFunctionScale)
```

SetLightingChannels

### void SetLightingChannels

```
void SetLightingChannels(bool bChannel0, bool bChannel1, bool bChannel2)
```

SetShadowBias

### void SetShadowBias

```
void SetShadowBias(float32 NewValue)
```

SetShadowSlopeBias

### void SetShadowSlopeBias

```
void SetShadowSlopeBias(float32 NewValue)
```

SetSpecularScale

### void SetSpecularScale

```
void SetSpecularScale(float32 NewValue)
```

SetTemperature

### void SetTemperature

```
void SetTemperature(float32 NewTemperature)
```

SetTransmission

### void SetTransmission

```
void SetTransmission(bool bNewValue)
```

SetUseIESBrightness

### void SetUseIESBrightness

```
void SetUseIESBrightness(bool bNewValue)
```

SetUseTemperature

### void SetUseTemperature

```
void SetUseTemperature(bool bNewValue)
```

SetVolumetricScatteringIntensity

### void SetVolumetricScatteringIntensity

```
void SetVolumetricScatteringIntensity(float32 NewIntensity)
```

---

## FUNCTIONS

### GetbUseTemperature

```
bool GetbUseTemperature()const
```

SetbUseTemperature

### void SetbUseTemperature

```
void SetbUseTemperature(bool Value)
```

GetSpecularScale

### const float32& GetSpecularScale

```
const float32& GetSpecularScale()const GetTemperature
```

const float32& GetTemperature() const

### GetShadowBias

```
const float32& GetShadowBias()const
```

GetShadowSlopeBias

### const float32& GetShadowSlopeBias

```
const float32& GetShadowSlopeBias()const GetContactShadowLengthInWS
```

bool GetContactShadowLengthInWS() const

### SetContactShadowLengthInWS

```
void SetContactShadowLengthInWS(bool Value)
```

GetCastTranslucentShadows

### bool GetCastTranslucentShadows

```
bool GetCastTranslucentShadows()const SetCastTranslucentShadows
```

void SetCastTranslucentShadows(

### bool 	Value

```
bool 	Value 	)
```

GetbCastShadowsFromCinematicObjectsOnly

### bool GetbCastShadowsFromCinematicObjectsOnly

```
bool GetbCastShadowsFromCinematicObjectsOnly()const SetbCastShadowsFromCinematicObjectsOnly
```

void SetbCastShadowsFromCinematicObjectsOnly(

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

GetbForceCachedShadowsForMovablePrimitives

### bool GetbForceCachedShadowsForMovablePrimitives

```
bool GetbForceCachedShadowsForMovablePrimitives()const SetbForceCachedShadowsForMovablePrimitives
```

void SetbForceCachedShadowsForMovablePrimitives(

### bool 	Value

```
bool 	Value 	)
```

GetLightingChannels

### const FLightingChannels& GetLightingChannels

```
const FLightingChannels& GetLightingChannels()const GetLightFunctionMaterial
```

UMaterialInterface GetLightFunctionMaterial() const

### GetLightFunctionScale

```
const FVector& GetLightFunctionScale()const
```

GetIESTexture

### UTextureLightProfile GetIESTexture

```
UTextureLightProfile GetIESTexture()const GetbUseIESBrightness
```

bool GetbUseIESBrightness() const

### SetbUseIESBrightness

```
void SetbUseIESBrightness(bool Value)
```

GetIESBrightnessScale

### const float32& GetIESBrightnessScale

```
const float32& GetIESBrightnessScale()const GetLightFunctionFadeDistance
```

const float32& GetLightFunctionFadeDistance() const

### GetbEnableLightShaftBloom

```
bool GetbEnableLightShaftBloom()const
```

SetbEnableLightShaftBloom

### void SetbEnableLightShaftBloom

```
void SetbEnableLightShaftBloom(bool Value)
```

GetBloomScale

### const float32& GetBloomScale

```
const float32& GetBloomScale()const GetBloomThreshold
```

const float32& GetBloomThreshold() const

### GetBloomMaxBrightness

```
const float32& GetBloomMaxBrightness()const
```

GetBloomTint

### const FColor& GetBloomTint

```
const FColor& GetBloomTint()const STATIC FUNCTIONS
```

Get

### static ULightComponent ULightComponent::Get

```
static ULightComponent ULightComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static ULightComponent ULightComponent::GetOrCreate

```
static ULightComponent ULightComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static ULightComponent ULightComponent::Create

```
static ULightComponent ULightComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass ULightComponent::StaticClass

```
static UClass ULightComponent::StaticClass()
```
