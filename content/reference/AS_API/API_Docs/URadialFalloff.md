# URadialFalloff

**Visibility:** public

## Inheritance

UFieldNodeFloat → URadialFalloff

## Description

Sphere scalar field that will be defined only within a sphere

## FIELD

### MinRange

```
float32 MinRange
```

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude

### MaxRange

```
float32 MaxRange
```

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude

### Default

```
float32 Default
```

The field value will be set to Default if the sample distance from the center is higher than the radius

### Radius

```
float32 Radius
```

Radius of the sphere falloff field

### Position

```
FVector Position
```

Center position of the sphere falloff field

### Falloff

```
EFieldFalloffType Falloff
```

Type of falloff function used to model the evolution of the field from the sphere center to the sample position

### Magnitude

```
float32 Magnitude
```

Magnitude of the sphere falloff field

---

## FIELD

SetRadialFalloff

### URadialFalloff SetRadialFalloff

```
URadialFalloff SetRadialFalloff(float32 Magnitude, float32 MinRange, float32 MaxRange, float32 Default, float32 Radius, FVector Position, EFieldFalloffType Falloff)
```

Sphere scalar field that will be defined only within a sphere

**Parameters**

Magnitude
float32

Magnitude of the sphere falloff field

MinRange
float32

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude

MaxRange
float32

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude

Default
float32

The field value will be set to Default if the sample distance from the center is higher than the radius

Radius
float32

Radius of the sphere falloff field

Position
FVector

Center position of the sphere falloff field

Falloff
EFieldFalloffType

Type of falloff function used if the falloff function is picked

STATIC FUNCTIONS
Get
static URadialFalloff URadialFalloff::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static URadialFalloff URadialFalloff::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static URadialFalloff URadialFalloff::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass URadialFalloff::StaticClass()
