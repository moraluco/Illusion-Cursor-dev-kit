# UUniformScalar

**Visibility:** public

## Inheritance

UFieldNodeFloat → UUniformScalar

## Description

Set a uniform scalar value independently of the sample position. The output is equal to magnitude

## FIELD

### Magnitude

```
float32 Magnitude
```

The field output will be equal the magnitude

---

## FIELD

### SetUniformScalar

```
UUniformScalar SetUniformScalar(float32 Magnitude)
```

Set a uniform scalar value independently of the sample position. The output is equal to magnitude

**Parameters**

Magnitude
float32

The field output will be equal the magnitude

STATIC FUNCTIONS
Get
static UUniformScalar UUniformScalar::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UUniformScalar UUniformScalar::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UUniformScalar UUniformScalar::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UUniformScalar::StaticClass()
