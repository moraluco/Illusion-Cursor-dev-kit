# UPlaneFalloff

**Visibility:** public

## Inheritance

UFieldNodeFloat → UPlaneFalloff

## Description

Plane scalar field that will be defined only within a distance from a plane

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

The field value will be set to Default if the sample distance from the plane is higher than the distance

### Distance

```
float32 Distance
```

Distance limit for the plane falloff field

### Position

```
FVector Position
```

Plane position of the plane falloff field

### Normal

```
FVector Normal
```

Plane normal of the plane falloff field

### Falloff

```
EFieldFalloffType Falloff
```

Type of falloff function used to model the evolution of the field from the plane surface to the distance isosurface

### Magnitude

```
float32 Magnitude
```

Magnitude of the plane falloff field

---

## FIELD

SetPlaneFalloff

### UPlaneFalloff SetPlaneFalloff

```
UPlaneFalloff SetPlaneFalloff(float32 Magnitude, float32 MinRange, float32 MaxRange, float32 Default, float32 Distance, FVector Position, FVector Normal, EFieldFalloffType Falloff)
```

Plane scalar field that will be defined only within a distance from a plane

**Parameters**

Magnitude
float32

Magnitude of the plane falloff field

MinRange
float32

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude

MaxRange
float32

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude

Default
float32

The field value will be set to default if the sample projected distance ((Sample Position - Center Position).dot(Plane Normal)) is higher than the Plane Distance

Distance
float32

Distance limit for the plane falloff field starting from the center position and extending in the direction of the plane normal

Position
FVector

Plane center position of the plane falloff field

Normal
FVector

Plane normal of the plane falloff field

Falloff
EFieldFalloffType

Type of falloff function used to model the evolution of the field from the plane surface to the distance isosurface

STATIC FUNCTIONS
Get
static UPlaneFalloff UPlaneFalloff::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UPlaneFalloff UPlaneFalloff::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UPlaneFalloff UPlaneFalloff::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UPlaneFalloff::StaticClass()
