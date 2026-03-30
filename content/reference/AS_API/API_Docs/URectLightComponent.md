# URectLightComponent

**Visibility:** public

## Inheritance

ULocalLightComponent → URectLightComponent

## Description

A light component which emits light from a rectangle.

## LIGHT

### SourceHeight

```
float32 SourceHeight
```

Height of light source rect.  Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.

### BarnDoorAngle

```
float32 BarnDoorAngle
```

Angle of barn door attached to the light source rect.

### BarnDoorLength

```
float32 BarnDoorLength
```

Length of barn door attached to the light source rect.

### SourceTexture

```
UTexture SourceTexture
```

Texture mapped to the light source rectangle

### SourceWidth

```
float32 SourceWidth
```

Width of light source rect.  Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.

---

## RENDERING \| LIGHTING

### SetBarnDoorLength

```
void SetBarnDoorLength(float32 NewValue)
```

SetSourceHeight

### void SetSourceHeight

```
void SetSourceHeight(float32 NewValue)
```

SetSourceTexture

### void SetSourceTexture

```
void SetSourceTexture(UTexture bNewValue)
```

SetSourceWidth

### void SetSourceWidth

```
void SetSourceWidth(float32 bNewValue)
```

SetBarnDoorAngle

### void SetBarnDoorAngle

```
void SetBarnDoorAngle(float32 NewValue)
```

---

## FUNCTIONS

### GetSourceHeight

```
const float32& GetSourceHeight()const
```

GetSourceWidth

### const float32& GetSourceWidth

```
const float32& GetSourceWidth()const GetBarnDoorAngle
```

const float32& GetBarnDoorAngle() const

### GetBarnDoorLength

```
const float32& GetBarnDoorLength()const
```

GetSourceTexture

### UTexture GetSourceTexture

```
UTexture GetSourceTexture()const STATIC FUNCTIONS
```

Get

### static URectLightComponent URectLightComponent::Get

```
static URectLightComponent URectLightComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static URectLightComponent URectLightComponent::GetOrCreate

```
static URectLightComponent URectLightComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static URectLightComponent URectLightComponent::Create

```
static URectLightComponent URectLightComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass URectLightComponent::StaticClass

```
static UClass URectLightComponent::StaticClass()
```
