# ULightComponentBase

**Visibility:** public

## Inheritance

USceneComponent → ULightComponentBase → ULightComponent → USkyLightComponent → LIGHT → CastStaticShadows

## Description

bool CastStaticShadows

Whether the light should cast shadows from static objects.  Also requires Cast Shadows to be set to True.

CastRaytracedShadow ECastRayTracedShadow CastRaytracedShadow DeepShadowLayerDistribution float32 DeepShadowLayerDistribution

Change the deep shadow layers distribution 0:linear distribution (uniform layer distribution), 1:exponential (more details on near small details).

IndirectLightingIntensity float32 IndirectLightingIntensity

Scales the indirect lighting contribution from this light.  A value of 0 disables any GI from this light. Default is 1.

VolumetricScatteringIntensity float32 VolumetricScatteringIntensity

Intensity of the volumetric scattering from this light.  This scales Intensity and LightColor.

LightColor FLinearColor LightColor

Filter color of the light.  Note that this can change the light's effective intensity.

bAffectsWorld bool bAffectsWorld

Whether the light can affect the world, or whether it is disabled.  A disabled light will not contribute to the scene in any way.  This setting cannot be changed at runtime and unbuilds lighting when changed.  Setting this to false has the same effect as deleting the light, so it is useful for non-destructive experiments.

CastShadows bool CastShadows

Whether the light should cast any shadows.

Intensity float32 Intensity

Total energy that the light emits.

CastDynamicShadows bool CastDynamicShadows

Whether the light should cast shadows from dynamic objects.  Also requires Cast Shadows to be set to True.

bAffectTranslucentLighting bool bAffectTranslucentLighting

Whether the light affects translucency or not.  Disabling this can save GPU time when there are many small lights.

bTransmission bool bTransmission

Whether light from this light transmits through surfaces with subsurface scattering profiles. Requires light to be movable.

bCastVolumetricShadow bool bCastVolumetricShadow

Whether the light shadows volumetric fog.  Disabling this can save GPU time.

bCastDeepShadow bool bCastDeepShadow

Whether the light should cast high quality hair-strands self-shadowing. When this option is enabled, an extra GPU cost for this light.

bAffectReflection bool bAffectReflection

Whether the light affects objects in reflections, when ray-traced reflection is enabled.

bAffectGlobalIllumination bool bAffectGlobalIllumination

Whether the light affects global illumination, when ray-traced global illumination is enabled.

## RAYTRACING

### SamplesPerPixel

```
int SamplesPerPixel
```

Samples per pixel for ray tracing

---

## RENDERING \| COMPONENTS \| LIGHT

### SetAffectGlobalIllumination

```
void SetAffectGlobalIllumination(bool bNewValue)
```

SetAffectReflection

### void SetAffectReflection

```
void SetAffectReflection(bool bNewValue)
```

SetCastDeepShadow

### void SetCastDeepShadow

```
void SetCastDeepShadow(bool bNewValue)
```

SetCastRaytracedShadows

### void SetCastRaytracedShadows

```
void SetCastRaytracedShadows(ECastRayTracedShadow bNewValue)
```

SetCastShadows

### void SetCastShadows

```
void SetCastShadows(bool bNewValue)
```

Sets whether this light casts shadows

### SetCastVolumetricShadow

```
void SetCastVolumetricShadow(bool bNewValue)
```

SetSamplesPerPixel

### void SetSamplesPerPixel

```
void SetSamplesPerPixel(int NewValue)
```

GetLightColor

### FLinearColor GetLightColor

```
FLinearColor GetLightColor()const
```

Gets the light color as a linear color

---

## FUNCTIONS

### SetLightColor

```
void SetLightColor(FColor Value)
```

GetbAffectsWorld

### bool GetbAffectsWorld

```
bool GetbAffectsWorld()const SetbAffectsWorld
```

void SetbAffectsWorld(

### bool 	Value

```
bool 	Value 	)
```

GetCastShadows

### bool GetCastShadows

```
bool GetCastShadows()const GetCastStaticShadows
```

bool GetCastStaticShadows() const

### SetCastStaticShadows

```
void SetCastStaticShadows(bool Value)
```

GetCastDynamicShadows

### bool GetCastDynamicShadows

```
bool GetCastDynamicShadows()const SetCastDynamicShadows
```

void SetCastDynamicShadows(

### bool 	Value

```
bool 	Value 	)
```

GetbAffectTranslucentLighting

### bool GetbAffectTranslucentLighting

```
bool GetbAffectTranslucentLighting()const SetbAffectTranslucentLighting
```

void SetbAffectTranslucentLighting(

### bool 	Value

```
bool 	Value 	)
```

GetbTransmission

### bool GetbTransmission

```
bool GetbTransmission()const SetbTransmission
```

void SetbTransmission(

### bool 	Value

```
bool 	Value 	)
```

GetbCastVolumetricShadow

### bool GetbCastVolumetricShadow

```
bool GetbCastVolumetricShadow()const SetbCastVolumetricShadow
```

void SetbCastVolumetricShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastDeepShadow

### bool GetbCastDeepShadow

```
bool GetbCastDeepShadow()const SetbCastDeepShadow
```

void SetbCastDeepShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbAffectReflection

### bool GetbAffectReflection

```
bool GetbAffectReflection()const SetbAffectReflection
```

void SetbAffectReflection(

### bool 	Value

```
bool 	Value 	)
```

GetbAffectGlobalIllumination

### bool GetbAffectGlobalIllumination

```
bool GetbAffectGlobalIllumination()const SetbAffectGlobalIllumination
```

void SetbAffectGlobalIllumination(

### bool 	Value

```
bool 	Value 	)
```

GetSamplesPerPixel

### const int& GetSamplesPerPixel

```
const int& GetSamplesPerPixel()const STATIC FUNCTIONS
```

Get

### static ULightComponentBase ULightComponentBase::Get

```
static ULightComponentBase ULightComponentBase::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static ULightComponentBase ULightComponentBase::GetOrCreate

```
static ULightComponentBase ULightComponentBase::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static ULightComponentBase ULightComponentBase::Create

```
static ULightComponentBase ULightComponentBase::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass ULightComponentBase::StaticClass

```
static UClass ULightComponentBase::StaticClass()
```
