# URandomVector

**Visibility:** public

## Inheritance

UFieldNodeVector → URandomVector

## Description

Set a random vector value independently of the sample position. The output is equal to magnitude * random direction

## FIELD

### Magnitude

```
float32 Magnitude
```

Magnitude of the random vector field

---

## FIELD

### SetRandomVector

```
URandomVector SetRandomVector(float32 Magnitude)
```

Set a random vector value independently of the sample position. The output is equal to magnitude * random direction

**Parameters**

Magnitude
float32

Magnitude of the random vector field

STATIC FUNCTIONS
Get
static URandomVector URandomVector::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static URandomVector URandomVector::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static URandomVector URandomVector::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass URandomVector::StaticClass()
