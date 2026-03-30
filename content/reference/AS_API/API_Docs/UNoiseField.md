# UNoiseField

**Visibility:** public

## Inheritance

UFieldNodeFloat → UNoiseField

## Description

Defines a perlin noise scalar value if the sample is within a box

## FIELD

### MaxRange

```
float32 MaxRange
```

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange

### Transform

```
FTransform Transform
```

Transform of the box in which the perlin noise will be defined

### MinRange

```
float32 MinRange
```

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange

---

## FIELD

### SetNoiseField

```
UNoiseField SetNoiseField(float32 MinRange, float32 MaxRange, FTransform Transform)
```

Defines a perlin noise scalar value if the sample is within a box

**Parameters**

MinRange
float32

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude

MaxRange
float32

The initial function value between 0 and 1 will be scaled between MinRange and MaxRange before being multiplied by magnitude

Transform
FTransform

Transform of the box in which the perlin noise will be defined

STATIC FUNCTIONS
Get
static UNoiseField UNoiseField::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UNoiseField UNoiseField::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UNoiseField UNoiseField::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UNoiseField::StaticClass()
