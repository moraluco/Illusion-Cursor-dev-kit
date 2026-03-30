# ULocalLightComponent

**Visibility:** public

## Inheritance

ULightComponent → ULocalLightComponent → UPointLightComponent → URectLightComponent

## Description

A light component which emits light from a single point equally in all directions.

## LIGHT

### IntensityUnits

```
ELightUnits IntensityUnits
```

Units used for the intensity.  The peak luminous intensity is measured in candelas, while the luminous power is measured in lumens.

### AttenuationRadius

```
float32 AttenuationRadius
```

Bounds the light's visible influence.  This clamping of the light's influence is not physically correct but very important for performance, larger lights cost more.

### LightmassSettings

```
FLightmassPointLightSettings LightmassSettings
```

The Lightmass settings for this object.

---

## RENDERING \| COMPONENTS \| LIGHT

### SetIntensityUnits

```
void SetIntensityUnits(ELightUnits NewIntensityUnits)
```

Set the units used for the intensity of the light

---

## RENDERING \| LIGHTING

### GetUnitsConversionFactor

```
static float32 ULocalLightComponent::GetUnitsConversionFactor(ELightUnits SrcUnits, ELightUnits TargetUnits, float32 CosHalfConeAngle = - 1.000000)
```

SetAttenuationRadius

### void SetAttenuationRadius

```
void SetAttenuationRadius(float32 NewRadius)
```

---

## FUNCTIONS

### GetAttenuationRadius

```
const float32& GetAttenuationRadius()const
```

GetIntensityUnits

### const ELightUnits& GetIntensityUnits

```
const ELightUnits& GetIntensityUnits()const STATIC FUNCTIONS
```

Get

### static ULocalLightComponent ULocalLightComponent::Get

```
static ULocalLightComponent ULocalLightComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static ULocalLightComponent ULocalLightComponent::GetOrCreate

```
static ULocalLightComponent ULocalLightComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static ULocalLightComponent ULocalLightComponent::Create

```
static ULocalLightComponent ULocalLightComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass ULocalLightComponent::StaticClass

```
static UClass ULocalLightComponent::StaticClass()
```
