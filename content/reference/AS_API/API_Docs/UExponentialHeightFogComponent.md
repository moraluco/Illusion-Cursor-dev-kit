# UExponentialHeightFogComponent

**Visibility:** public

## Inheritance

USceneComponent → UExponentialHeightFogComponent

## Description

Used to create fogging effects such as clouds but with a density that is related to the height of the fog.

## DIRECTIONALINSCATTERING

### DirectionalInscatteringStartDistance

```
float32 DirectionalInscatteringStartDistance
```

Controls the start distance from the viewer of the directional inscattering, which is used to approximate inscattering from a directional light.  Note: there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.

### DirectionalInscatteringLuminance

```
FLinearColor DirectionalInscatteringLuminance
```

Controls the color of the directional inscattering, which is used to approximate inscattering from a directional light.  Note: there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.

### DirectionalInscatteringExponent

```
float32 DirectionalInscatteringExponent
```

Controls the size of the directional inscattering cone, which is used to approximate inscattering from a directional light.  Note: there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.

---

## EXPONENTIALHEIGHTFOGCOMPONENT

### StartDistance

```
float32 StartDistance
```

Distance from the camera that the fog will start, in world units.

### FogMaxOpacity

```
float32 FogMaxOpacity
```

Maximum opacity of the fog.  A value of 1 means the fog can become fully opaque at a distance and replace scene color completely, A value of 0 means the fog color will not be factored in at all.

### FogDensity

```
float32 FogDensity
```

Global density factor.

### FogCutoffDistance

```
float32 FogCutoffDistance
```

Scene elements past this distance will not have fog applied.  This is useful for excluding skyboxes which already have fog baked in.

### FogInscatteringLuminance

```
FLinearColor FogInscatteringLuminance
```
### FogHeightFalloff

```
float32 FogHeightFalloff
```

Height density factor, controls how the density increases as height decreases.  Smaller values make the visible transition larger.

### SecondFogData

```
FExponentialHeightFogData SecondFogData
```

Settings for the second fog. Setting the density of this to 0 means it doesn't have any influence.

---

## INSCATTERINGTEXTURE

### InscatteringTextureTint

```
FLinearColor InscatteringTextureTint
```

Tint color used when InscatteringColorCubemap is specified, for quick edits without having to reimport InscatteringColorCubemap.

### NonDirectionalInscatteringColorDistance

```
float32 NonDirectionalInscatteringColorDistance
```

Distance at which only the average color of InscatteringColorCubemap should be used as Inscattering Color.

### InscatteringColorCubemap

```
UTextureCube InscatteringColorCubemap
```

Cubemap that can be specified for fog color, which is useful to make distant, heavily fogged scene elements match the sky.  When the cubemap is specified, FogInscatteringColor is ignored and Directional inscattering is disabled.

### InscatteringColorCubemapAngle

```
float32 InscatteringColorCubemapAngle
```

Angle to rotate the InscatteringColorCubemap around the Z axis.

### FullyDirectionalInscatteringColorDistance

```
float32 FullyDirectionalInscatteringColorDistance
```

Distance at which InscatteringColorCubemap should be used directly for the Inscattering Color.

---

## VOLUMETRICFOG

### VolumetricFogStaticLightingScatteringIntensity

```
float32 VolumetricFogStaticLightingScatteringIntensity
```
### bEnableVolumetricFog

```
bool bEnableVolumetricFog
```

Whether to enable Volumetric fog.  Scalability settings control the resolution of the fog simulation.  Note that Volumetric fog currently does not support StartDistance, FogMaxOpacity and FogCutoffDistance.  Volumetric fog also can't match exponential height fog in general as exponential height fog has non-physical behavior.

### VolumetricFogScatteringDistribution

```
float32 VolumetricFogScatteringDistribution
```

Controls the scattering phase function

how much incoming light scatters in various directions.  A distribution value of 0 scatters equally in all directions, while .9 scatters predominantly in the light direction.  In order to have visible volumetric fog light shafts from the side, the distribution will need to be closer to 0.

### VolumetricFogAlbedo

```
FColor VolumetricFogAlbedo
```

The height fog particle reflectiveness used by volumetric fog.  Water particles in air have an albedo near white, while dust has slightly darker value.

### VolumetricFogEmissive

```
FLinearColor VolumetricFogEmissive
```

Light emitted by height fog.  This is a density so more light is emitted the further you are looking through the fog.  In most cases skylight is a better choice, however right now volumetric fog does not support precomputed lighting, So stationary skylights are unshadowed and static skylights don't affect volumetric fog at all.

### VolumetricFogExtinctionScale

```
float32 VolumetricFogExtinctionScale
```

Scales the height fog particle extinction amount used by volumetric fog.  Values larger than 1 cause fog particles everywhere absorb more light.

### VolumetricFogDistance

```
float32 VolumetricFogDistance
```

Distance over which volumetric fog should be computed.  Larger values extend the effect into the distance but expose under-sampling artifacts in details.

### bOverrideLightColorsWithFogInscatteringColors

```
bool bOverrideLightColorsWithFogInscatteringColors
```

Whether to use FogInscatteringColor for the Sky Light volumetric scattering color and DirectionalInscatteringColor for the Directional Light scattering color.  Make sure your directional light has 'Atmosphere Sun Light' enabled!  Enabling this allows Volumetric fog to better match Height fog in the distance, but produces non-physical volumetric lighting that may not match surface lighting.

---

## RENDERING \| COMPONENTS \| EXPONENTIALHEIGHTFOG

### SetInscatteringColorCubemapAngle

```
void SetInscatteringColorCubemapAngle(float32 Value)
```

SetDirectionalInscatteringExponent

### void SetDirectionalInscatteringExponent

```
void SetDirectionalInscatteringExponent(float32 Value)
```

SetDirectionalInscatteringStartDistance

### void SetDirectionalInscatteringStartDistance

```
void SetDirectionalInscatteringStartDistance(float32 Value)
```

SetFogCutoffDistance

### void SetFogCutoffDistance

```
void SetFogCutoffDistance(float32 Value)
```

SetFogDensity

### void SetFogDensity

```
void SetFogDensity(float32 Value)
```

SetFogHeightFalloff

### void SetFogHeightFalloff

```
void SetFogHeightFalloff(float32 Value)
```

SetFogInscatteringColor

### void SetFogInscatteringColor

```
void SetFogInscatteringColor(FLinearColor Value)
```

SetFogMaxOpacity

### void SetFogMaxOpacity

```
void SetFogMaxOpacity(float32 Value)
```

SetFullyDirectionalInscatteringColorDistance

### void SetFullyDirectionalInscatteringColorDistance

```
void SetFullyDirectionalInscatteringColorDistance(float32 Value)
```

SetInscatteringColorCubemap

### void SetInscatteringColorCubemap

```
void SetInscatteringColorCubemap(UTextureCube Value)
```

SetDirectionalInscatteringColor

### void SetDirectionalInscatteringColor

```
void SetDirectionalInscatteringColor(FLinearColor Value)
```

SetInscatteringTextureTint

### void SetInscatteringTextureTint

```
void SetInscatteringTextureTint(FLinearColor Value)
```

SetNonDirectionalInscatteringColorDistance

### void SetNonDirectionalInscatteringColorDistance

```
void SetNonDirectionalInscatteringColorDistance(float32 Value)
```

SetStartDistance

### void SetStartDistance

```
void SetStartDistance(float32 Value)
```

---

## RENDERING \| VOLUMETRICFOG

### SetVolumetricFogAlbedo

```
void SetVolumetricFogAlbedo(FColor NewValue)
```

SetVolumetricFogDistance

### void SetVolumetricFogDistance

```
void SetVolumetricFogDistance(float32 NewValue)
```

SetVolumetricFogEmissive

### void SetVolumetricFogEmissive

```
void SetVolumetricFogEmissive(FLinearColor NewValue)
```

SetVolumetricFogExtinctionScale

### void SetVolumetricFogExtinctionScale

```
void SetVolumetricFogExtinctionScale(float32 NewValue)
```

SetVolumetricFogScatteringDistribution

### void SetVolumetricFogScatteringDistribution

```
void SetVolumetricFogScatteringDistribution(float32 NewValue)
```

SetVolumetricFog

### void SetVolumetricFog

```
void SetVolumetricFog(bool bNewValue)
```

---

## FUNCTIONS

### GetFogDensity

```
const float32& GetFogDensity()const
```

GetFogHeightFalloff

### const float32& GetFogHeightFalloff

```
const float32& GetFogHeightFalloff()const GetInscatteringColorCubemap
```

UTextureCube GetInscatteringColorCubemap() const

### GetInscatteringColorCubemapAngle

```
const float32& GetInscatteringColorCubemapAngle()const
```

GetInscatteringTextureTint

### const FLinearColor& GetInscatteringTextureTint

```
const FLinearColor& GetInscatteringTextureTint()const GetFullyDirectionalInscatteringColorDistance
```

const float32& GetFullyDirectionalInscatteringColorDistance() const

### GetNonDirectionalInscatteringColorDistance

```
const float32& GetNonDirectionalInscatteringColorDistance()const
```

GetDirectionalInscatteringExponent

### const float32& GetDirectionalInscatteringExponent

```
const float32& GetDirectionalInscatteringExponent()const GetDirectionalInscatteringStartDistance
```

const float32& GetDirectionalInscatteringStartDistance() const

### GetFogMaxOpacity

```
const float32& GetFogMaxOpacity()const
```

GetStartDistance

### const float32& GetStartDistance

```
const float32& GetStartDistance()const GetFogCutoffDistance
```

const float32& GetFogCutoffDistance() const

### GetVolumetricFogScatteringDistribution

```
const float32& GetVolumetricFogScatteringDistribution()const
```

GetVolumetricFogAlbedo

### const FColor& GetVolumetricFogAlbedo

```
const FColor& GetVolumetricFogAlbedo()const GetVolumetricFogEmissive
```

const FLinearColor& GetVolumetricFogEmissive() const

### GetVolumetricFogExtinctionScale

```
const float32& GetVolumetricFogExtinctionScale()const
```

GetVolumetricFogDistance

### const float32& GetVolumetricFogDistance

```
const float32& GetVolumetricFogDistance()const STATIC FUNCTIONS
```

Get

### static UExponentialHeightFogComponent UExponentialHeightFogComponent::Get

```
static UExponentialHeightFogComponent UExponentialHeightFogComponent::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UExponentialHeightFogComponent UExponentialHeightFogComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UExponentialHeightFogComponent UExponentialHeightFogComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UExponentialHeightFogComponent::StaticClass()
```
