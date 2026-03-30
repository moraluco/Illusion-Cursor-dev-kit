# UToIntegerField

**Visibility:** public

## Inheritance

UFieldNodeInt → UToIntegerField

## Description

Convert a scalar field to a integer one

## FIELD

### FloatField

```
UFieldNodeFloat FloatField
```

Scalar field to be converted to an an integer one

---

## FIELD

### SetToIntegerField

```
UToIntegerField SetToIntegerField(const UFieldNodeFloat FloatField)
```

Convert a float field to a integer one

**Parameters**

FloatField
const UFieldNodeFloat

Float field to be converted to an an integer one

STATIC FUNCTIONS
Get
static UToIntegerField UToIntegerField::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UToIntegerField UToIntegerField::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UToIntegerField UToIntegerField::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UToIntegerField::StaticClass()
