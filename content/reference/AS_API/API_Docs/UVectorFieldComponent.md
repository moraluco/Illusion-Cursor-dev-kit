# UVectorFieldComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UVectorFieldComponent

## Description

A Component referencing a vector field.

## VECTORFIELDCOMPONENT

### Tightness

```
float32 Tightness
```

How tightly particles follow the vector field.

### Intensity

```
float32 Intensity
```

The intensity at which the vector field is applied.

### VectorField

```
UVectorField VectorField
```

The vector field asset.

---

## EFFECTS \| COMPONENTS \| VECTORFIELD

### SetIntensity

```
void SetIntensity(float32 NewIntensity)
```

Set the intensity of the vector field.

**Parameters**

NewIntensity
float32

The new intensity of the vector field.

---

## FUNCTIONS

### GetIntensity

```
const float32& GetIntensity()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UVectorFieldComponent UVectorFieldComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UVectorFieldComponent UVectorFieldComponent::GetOrCreate

```
static UVectorFieldComponent UVectorFieldComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UVectorFieldComponent UVectorFieldComponent::Create

```
static UVectorFieldComponent UVectorFieldComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UVectorFieldComponent::StaticClass

```
static UClass UVectorFieldComponent::StaticClass()
```
