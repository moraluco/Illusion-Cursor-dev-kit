# UDecalComponent

**Visibility:** public

## Inheritance

USceneComponent → UDecalComponent

## Description

A material that is rendered onto the surface of a mesh. A kind of 'bumper sticker' for a model.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Engine​/Actors​/DecalActor @see UDecalActor

## DECAL

### FadeInStartDelay

```
float32 FadeInStartDelay
```
### DecalMaterial

```
UMaterialInterface DecalMaterial
```

Decal material.

### FadeDuration

```
float32 FadeDuration
```

Time in seconds for the decal to fade out. Set fade duration and start delay to 0 to make persistent. Only fades in active simulation or game.

### FadeInDuration

```
float32 FadeInDuration DecalSize FVector DecalSize
```

Decal size in local space (does not include the component scale), technically redundant but there for convenience

### FadeStartDelay

```
float32 FadeStartDelay
```

Time in seconds to wait before beginning to fade out the decal. Set fade duration and start delay to 0 to make persistent.

### SortOrder

```
int SortOrder
```

Controls the order in which decal elements are rendered.  Higher values draw later (on top).  Setting many different sort orders on many different decals prevents sorting by state and can reduce performance.

### FadeScreenSize

```
float32 FadeScreenSize
```
### bDestroyOwnerAfterFade

```
bool bDestroyOwnerAfterFade
```

Automatically destroys the owning actor after fully fading out.

---

## RENDERING \| COMPONENTS \| DECAL

### GetFadeStartDelay

```
float32 GetFadeStartDelay()const
```

GetDecalMaterial

### UMaterialInterface GetDecalMaterial

```
UMaterialInterface GetDecalMaterial()const
```

Accessor for decal material

### GetFadeDuration

```
float32 GetFadeDuration()const
```

GetFadeInDuration

### float32 GetFadeInDuration

```
float32 GetFadeInDuration()const GetFadeInStartDelay
```

float32 GetFadeInStartDelay() const

### CreateDynamicMaterialInstance

```
UMaterialInstanceDynamic CreateDynamicMaterialInstance()
```

Utility to allocate a new Dynamic Material Instance, set its parent to the currently applied material, and assign it

### SetDecalMaterial

```
void SetDecalMaterial(UMaterialInterface NewDecalMaterial)
```

setting decal material on decal component. This will force the decal to reattach

### SetFadeIn

```
void SetFadeIn(float32 StartDelay, float32 Duaration)
```

SetFadeOut

### void SetFadeOut

```
void SetFadeOut(float32 StartDelay, float32 Duration, bool DestroyOwnerAfterFade = true)
```

Sets the decal's fade start time, duration and if the owning actor should be destroyed after the decal is fully faded out.  The default value of 0 for FadeStartDelay and FadeDuration makes the decal persistent. See DecalLifetimeOpacity material node to control the look of "fading out."

**Parameters**

StartDelay
float32

Time in seconds to wait before beginning to fade out the decal.

Duration
float32

Time in second for the decal to fade out.

DestroyOwnerAfterFade
bool

Should the owning actor automatically be destroyed after it is completely faded out.

SetFadeScreenSize
void SetFadeScreenSize(
float32 	NewFadeScreenSize
	)

Set the FadeScreenSize for this decal component

SetSortOrder
void SetSortOrder(
int 	Value
	)

Sets the sort order for the decal component. Higher values draw later (on top). This will force the decal to reattach

---

## FUNCTIONS

### GetSortOrder

```
const int& GetSortOrder()const
```

GetFadeScreenSize

### const float32& GetFadeScreenSize

```
const float32& GetFadeScreenSize()const SetFadeStartDelay
```

void SetFadeStartDelay(

### const 	float32& 	Value

```
const 	float32& 	Value 	)
```

SetFadeDuration

### void SetFadeDuration

```
void SetFadeDuration(const float32& Value)
```

SetFadeInDuration

### void SetFadeInDuration

```
void SetFadeInDuration(const float32& Value)
```

SetFadeInStartDelay

### void SetFadeInStartDelay

```
void SetFadeInStartDelay(const float32& Value)
```

GetbDestroyOwnerAfterFade

### bool GetbDestroyOwnerAfterFade

```
bool GetbDestroyOwnerAfterFade()const SetbDestroyOwnerAfterFade
```

void SetbDestroyOwnerAfterFade(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UDecalComponent UDecalComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UDecalComponent UDecalComponent::GetOrCreate

```
static UDecalComponent UDecalComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UDecalComponent UDecalComponent::Create

```
static UDecalComponent UDecalComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UDecalComponent::StaticClass

```
static UClass UDecalComponent::StaticClass()
```
