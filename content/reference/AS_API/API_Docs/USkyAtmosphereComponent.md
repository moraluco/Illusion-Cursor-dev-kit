# USkyAtmosphereComponent

**Visibility:** public

## Inheritance

USceneComponent → USkyAtmosphereComponent → UAtmosphericFogComponent

## Description

A component that represents a planet atmosphere material and simulates sky and light scattering within it.  @see https://​docs​.unrealengine​.com​/en-US​/Engine​/Actors​/FogEffects​/SkyAtmosphere​/index​.html

## Members

### DIRECTION

```
ART DIRECTION
```
### TransmittanceMinLightElevationAngle

```
float32 TransmittanceMinLightElevationAngle
```

The minimum elevation angle in degree that should be used to evaluate the sun transmittance to the ground. Useful to maintain a visible sun light and shadow on meshes even when the sun has started going below the horizon. This does not affect the aerial perspective.

### HeightFogContribution

```
float32 HeightFogContribution
```

Scale the sky and atmosphere lights contribution to the height fog when SupportSkyAtmosphereAffectsHeightFog project setting is true.

### AerialPespectiveViewDistanceScale

```
float32 AerialPespectiveViewDistanceScale
```

Makes the aerial perspective look thicker by scaling distances from view to surfaces (opaque and translucent).

### SkyLuminanceFactor

```
FLinearColor SkyLuminanceFactor
```

Scales the luminance of pixels representing the sky, i.e. not belonging to any surface.

### AerialPerspectiveStartDepth

```
float32 AerialPerspectiveStartDepth
```

The distance (kilometers) at which we start evaluating the aerial perspective. Having the aerial perspective starts away from the camera can help with performance: pixels not affected by the aerial perspective will have their computation skipped using early depth test.

---

## ATMOSPHERE

### MultiScatteringFactor

```
float32 MultiScatteringFactor
```

Render multi scattering as if sun light would bounce around in the atmosphere. This is achieved using a dual scattering approach.

### AtmosphereHeight

```
float32 AtmosphereHeight
```

The height of the atmosphere layer above the ground in kilometers.

### TraceSampleCountScale

```
float32 TraceSampleCountScale
```

Scale the atmosphere tracing sample count. Quality level scalability The sample count is still clamped according to scalability setting to 'r.SkyAtmosphere.SampleCountMax' when 'r.SkyAtmosphere.FastSkyLUT' is 0.  The sample count is still clamped according to scalability setting to 'r.SkyAtmosphere.FastSkyLUT.SampleCountMax' when 'r.SkyAtmosphere.FastSkyLUT' is 1.  The sample count is still clamped for aerial perspective according to  'r.SkyAtmosphere.AerialPerspectiveLUT.SampleCountMaxPerSlice'.

ATMOSPHERE - ABSORPTION

### OtherAbsorptionScale

```
float32 OtherAbsorptionScale
```

Absorption coefficients for another atmosphere layer. Density increase from 0 to 1 between 10 to 25km and decreases from 1 to 0 between 25 to 40km. This approximates ozone molecules distribution in the Earth atmosphere.

### OtherTentDistribution

```
FTentDistribution OtherTentDistribution
```

Represents the altitude based tent distribution of absorption particles in the atmosphere.

### OtherAbsorption

```
FLinearColor OtherAbsorption
```

Absorption coefficients for another atmosphere layer. Density increase from 0 to 1 between 10 to 25km and decreases from 1 to 0 between 25 to 40km. The default values represents ozone molecules absorption in the Earth atmosphere.

ATMOSPHERE - MIE

### MieScatteringScale

```
float32 MieScatteringScale
```

Mie scattering coefficient scale.

### MieScattering

```
FLinearColor MieScattering
```

The Mie scattering coefficients resulting from particles in the air at an altitude of 0 kilometer. As it becomes higher, light will be scattered more.

### MieAbsorptionScale

```
float32 MieAbsorptionScale
```

Mie absorption coefficient scale.

### MieAbsorption

```
FLinearColor MieAbsorption
```

The Mie absorption coefficients resulting from particles in the air at an altitude of 0 kilometer. As it becomes higher, light will be absorbed more.

### MieAnisotropy

```
float32 MieAnisotropy
```

A value of 0 mean light is uniformly scattered. A value closer to 1 means lights will scatter more forward, resulting in halos around light sources.

### MieExponentialDistribution

```
float32 MieExponentialDistribution
```

The altitude in kilometer at which Mie effects are reduced to 40%.

ATMOSPHERE - RAYLEIGH

### RayleighScattering

```
FLinearColor RayleighScattering
```

The Rayleigh scattering coefficients resulting from molecules in the air at an altitude of 0 kilometer.

### RayleighScatteringScale

```
float32 RayleighScatteringScale
```

Rayleigh scattering coefficient scale.

### RayleighExponentialDistribution

```
float32 RayleighExponentialDistribution
```

The altitude in kilometer at which Rayleigh scattering effect is reduced to 40%.

---

## PLANET

### GroundAlbedo

```
FColor GroundAlbedo
```

The ground albedo that will tint the atmosphere when the sun light will bounce on it. Only taken into account when MultiScattering>0.0.

### BottomRadius

```
float32 BottomRadius
```

The radius in kilometers from the center of the planet to the ground level.

### TransformMode

```
ESkyAtmosphereTransformMode TransformMode
```

The ground albedo that will tint the atmosphere when the sun light will bounce on it. Only taken into account when MultiScattering>0.0.

---

## RENDERING

### SetMieScattering

```
void SetMieScattering(FLinearColor NewValue)
```

OverrideAtmosphereLightDirection

### void OverrideAtmosphereLightDirection

```
void OverrideAtmosphereLightDirection(int AtmosphereLightIndex, FVector LightDirection)
```

SetAerialPespectiveViewDistanceScale

### void SetAerialPespectiveViewDistanceScale

```
void SetAerialPespectiveViewDistanceScale(float32 NewValue)
```

SetAtmosphereHeight

### void SetAtmosphereHeight

```
void SetAtmosphereHeight(float32 NewValue)
```

SetHeightFogContribution

### void SetHeightFogContribution

```
void SetHeightFogContribution(float32 NewValue)
```

SetMieAbsorption

### void SetMieAbsorption

```
void SetMieAbsorption(FLinearColor NewValue)
```

SetMieAbsorptionScale

### void SetMieAbsorptionScale

```
void SetMieAbsorptionScale(float32 NewValue)
```

SetMieAnisotropy

### void SetMieAnisotropy

```
void SetMieAnisotropy(float32 NewValue)
```

SetMieExponentialDistribution

### void SetMieExponentialDistribution

```
void SetMieExponentialDistribution(float32 NewValue)
```

SetRayleighExponentialDistribution

### void SetRayleighExponentialDistribution

```
void SetRayleighExponentialDistribution(float32 NewValue)
```

SetMieScatteringScale

### void SetMieScatteringScale

```
void SetMieScatteringScale(float32 NewValue)
```

SetMultiScatteringFactor

### void SetMultiScatteringFactor

```
void SetMultiScatteringFactor(float32 NewValue)
```

SetOtherAbsorption

### void SetOtherAbsorption

```
void SetOtherAbsorption(FLinearColor NewValue)
```

SetOtherAbsorptionScale

### void SetOtherAbsorptionScale

```
void SetOtherAbsorptionScale(float32 NewValue)
```

SetRayleighScattering

### void SetRayleighScattering

```
void SetRayleighScattering(FLinearColor NewValue)
```

SetRayleighScatteringScale

### void SetRayleighScatteringScale

```
void SetRayleighScatteringScale(float32 NewValue)
```

SetSkyLuminanceFactor

### void SetSkyLuminanceFactor

```
void SetSkyLuminanceFactor(FLinearColor NewValue)
```

---

## UTILITIES

### GetAtmosphereTransmitanceOnGroundAtPlanetTop

```
FLinearColor GetAtmosphereTransmitanceOnGroundAtPlanetTop(
```

### UDirectionalLightComponent 	DirectionalLight

```
UDirectionalLightComponent 	DirectionalLight
```

)

---

## FUNCTIONS

### GetAtmosphereHeight

```
const float32& GetAtmosphereHeight()const
```

GetMultiScatteringFactor

### const float32& GetMultiScatteringFactor

```
const float32& GetMultiScatteringFactor()const GetRayleighScatteringScale
```

const float32& GetRayleighScatteringScale() const

### GetRayleighScattering

```
const FLinearColor& GetRayleighScattering()const
```

GetRayleighExponentialDistribution

### const float32& GetRayleighExponentialDistribution

```
const float32& GetRayleighExponentialDistribution()const GetMieScatteringScale
```

const float32& GetMieScatteringScale() const

### GetMieScattering

```
const FLinearColor& GetMieScattering()const
```

GetMieAbsorptionScale

### const float32& GetMieAbsorptionScale

```
const float32& GetMieAbsorptionScale()const GetMieAbsorption
```

const FLinearColor& GetMieAbsorption() const

### GetMieAnisotropy

```
const float32& GetMieAnisotropy()const
```

GetMieExponentialDistribution

### const float32& GetMieExponentialDistribution

```
const float32& GetMieExponentialDistribution()const GetOtherAbsorptionScale
```

const float32& GetOtherAbsorptionScale() const

### GetOtherAbsorption

```
const FLinearColor& GetOtherAbsorption()const
```

GetSkyLuminanceFactor

### const FLinearColor& GetSkyLuminanceFactor

```
const FLinearColor& GetSkyLuminanceFactor()const GetAerialPespectiveViewDistanceScale
```

const float32& GetAerialPespectiveViewDistanceScale() const

### GetHeightFogContribution

```
const float32& GetHeightFogContribution()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static USkyAtmosphereComponent USkyAtmosphereComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USkyAtmosphereComponent USkyAtmosphereComponent::GetOrCreate

```
static USkyAtmosphereComponent USkyAtmosphereComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static USkyAtmosphereComponent USkyAtmosphereComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USkyAtmosphereComponent::StaticClass

```
static UClass USkyAtmosphereComponent::StaticClass()
```
