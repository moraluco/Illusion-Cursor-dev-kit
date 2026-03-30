# URadialVector

**Visibility:** public

## Inheritance

UFieldNodeVector → URadialVector

## Description

Set a radial vector value, the direction being the vector from the sample position to the field one. The output is equal to magnitude * direction

## FIELD

### Position

```
FVector Position
```

Center position of the radial vector field

### Magnitude

```
float32 Magnitude
```

Magnitude of the radial vector field

---

## FIELD

### SetRadialVector

```
URadialVector SetRadialVector(float32 Magnitude, FVector Position)
```

Set a radial vector value. The direction is the normalized vector from the field position to the sample one. The output is equal to this direction * magnitude.

**Parameters**

Magnitude
float32

Magnitude of the radial vector field

Position
FVector

Center position of the radial vector field

STATIC FUNCTIONS
Get
static URadialVector URadialVector::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static URadialVector URadialVector::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static URadialVector URadialVector::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass URadialVector::StaticClass()
