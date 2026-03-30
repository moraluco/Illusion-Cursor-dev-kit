# USpotLightComponent

**Visibility:** public

## Inheritance

UPointLightComponent → USpotLightComponent

## Description

A spot light component emits a directional cone shaped light (Eg a Torch).

## LIGHT

### OuterConeAngle

```
float32 OuterConeAngle
```

Degrees.

### InnerConeAngle

```
float32 InnerConeAngle
```

Degrees.

---

## RENDERING \| LIGHTING

### SetOuterConeAngle

```
void SetOuterConeAngle(float32 NewOuterConeAngle)
```

SetInnerConeAngle

### void SetInnerConeAngle

```
void SetInnerConeAngle(float32 NewInnerConeAngle)
```

---

## FUNCTIONS

### GetOuterConeAngle

```
const float32& GetOuterConeAngle()const
```

GetInnerConeAngle

### const float32& GetInnerConeAngle

```
const float32& GetInnerConeAngle()const STATIC FUNCTIONS
```

Get

### static USpotLightComponent USpotLightComponent::Get

```
static USpotLightComponent USpotLightComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USpotLightComponent USpotLightComponent::GetOrCreate

```
static USpotLightComponent USpotLightComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USpotLightComponent USpotLightComponent::Create

```
static USpotLightComponent USpotLightComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USpotLightComponent::StaticClass

```
static UClass USpotLightComponent::StaticClass()
```
