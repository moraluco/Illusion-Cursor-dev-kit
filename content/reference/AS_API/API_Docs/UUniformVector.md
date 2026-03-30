# UUniformVector

**Visibility:** public

## Inheritance

UFieldNodeVector → UUniformVector

## Description

Set a uniform vector value independently of the sample position.The output is equal to magnitude * direction

## FIELD

### Direction

```
FVector Direction
```

Normalized direction of the uniform vector field

### Magnitude

```
float32 Magnitude
```

Magnitude of the uniform vector field

---

## FIELD

### SetUniformVector

```
UUniformVector SetUniformVector(float32 Magnitude, FVector Direction)
```

Set a uniform vector value independently of the sample position.The output is equal to magnitude * direction

**Parameters**

Magnitude
float32

Magnitude of the uniform vector field

Direction
FVector

Normalized direction of the uniform vector field

STATIC FUNCTIONS
Get
static UUniformVector UUniformVector::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UUniformVector UUniformVector::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UUniformVector UUniformVector::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UUniformVector::StaticClass()
