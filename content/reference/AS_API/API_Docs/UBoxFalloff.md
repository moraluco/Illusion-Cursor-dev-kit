# UBoxFalloff

**Visibility:** public

## Inheritance

UFieldNodeFloat → UBoxFalloff

## Description

Box scalar field that will be defined only within a box

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

The field value will be set to Default if the sample distance from the box is higher than the scale of the transform

### Transform

```
FTransform Transform
```

Translation, Rotation and Scale of the unit box

### Falloff

```
EFieldFalloffType Falloff
```

Type of falloff function used to model the evolution of the field from the box surface to the sample position

### Magnitude

```
float32 Magnitude
```

Magnitude of the box falloff field

---

## FIELD

### SetBoxFalloff

```
UBoxFalloff SetBoxFalloff(float32 Magnitude, float32 MinRange, float32 MaxRange, float32 Default, FTransform Transform, EFieldFalloffType Falloff)
```

Box scalar field that will be defined only within a box

**Parameters**

Magnitude
float32

Magnitude of the box falloff field

MinRange
float32

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude

MaxRange
float32

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude

Default
float32

The field value will be set to Default if the sample distance from the box is higher than the scale of the transform

Transform
FTransform

Translation, Rotation and Scale of the unit box

Falloff
EFieldFalloffType

Type of falloff function used to model the evolution of the field from the box surface to the sample position

STATIC FUNCTIONS
Get
static UBoxFalloff UBoxFalloff::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UBoxFalloff UBoxFalloff::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UBoxFalloff UBoxFalloff::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UBoxFalloff::StaticClass()
