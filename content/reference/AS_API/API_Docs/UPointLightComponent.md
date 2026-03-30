# UPointLightComponent

**Visibility:** public

## Inheritance

ULocalLightComponent → UPointLightComponent → USpotLightComponent

## Description

A light component which emits light from a single point equally in all directions.

## LIGHT

### LightFalloffExponent

```
float32 LightFalloffExponent
```

Controls the radial falloff of the light when UseInverseSquaredFalloff is disabled.  2 is almost linear and very unrealistic and around 8 it looks reasonable.  With large exponents, the light has contribution to only a small area of its influence radius but still costs the same as low exponents.

### SourceRadius

```
float32 SourceRadius
```

Radius of light source shape.  Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.

### SoftSourceRadius

```
float32 SoftSourceRadius
```

Soft radius of light source shape.  Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.

### SourceLength

```
float32 SourceLength
```

Length of light source shape.  Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.

### bUseInverseSquaredFalloff

```
bool bUseInverseSquaredFalloff
```

Whether to use physically based inverse squared distance falloff, where AttenuationRadius is only clamping the light's contribution.  Disabling inverse squared falloff can be useful when placing fill lights (don't want a super bright spot near the light).  When enabled, the light's Intensity is in units of lumens, where 1700 lumens is a 100W lightbulb.  When disabled, the light's Intensity is a brightness scale.

---

## RENDERING \| LIGHTING

### SetSoftSourceRadius

```
void SetSoftSourceRadius(float32 bNewValue)
```

SetSourceLength

### void SetSourceLength

```
void SetSourceLength(float32 NewValue)
```

SetSourceRadius

### void SetSourceRadius

```
void SetSourceRadius(float32 bNewValue)
```

SetLightFalloffExponent

### void SetLightFalloffExponent

```
void SetLightFalloffExponent(float32 NewLightFalloffExponent)
```

---

## FUNCTIONS

### SetbUseInverseSquaredFalloff

```
void SetbUseInverseSquaredFalloff(bool Value)
```

GetLightFalloffExponent

### const float32& GetLightFalloffExponent

```
const float32& GetLightFalloffExponent()const GetbUseInverseSquaredFalloff
```

bool GetbUseInverseSquaredFalloff() const

### GetSourceRadius

```
const float32& GetSourceRadius()const
```

GetSoftSourceRadius

### const float32& GetSoftSourceRadius

```
const float32& GetSoftSourceRadius()const GetSourceLength
```

const float32& GetSourceLength() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPointLightComponent UPointLightComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPointLightComponent UPointLightComponent::GetOrCreate

```
static UPointLightComponent UPointLightComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPointLightComponent UPointLightComponent::Create

```
static UPointLightComponent UPointLightComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPointLightComponent::StaticClass

```
static UClass UPointLightComponent::StaticClass()
```
