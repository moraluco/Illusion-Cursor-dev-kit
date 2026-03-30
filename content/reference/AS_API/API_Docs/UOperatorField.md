# UOperatorField

**Visibility:** public

## Inheritance

UFieldNodeBase → UOperatorField

## Description

Compute an operation between 2 incoming fields

## FIELD

### RightField

```
UFieldNodeBase RightField
```

Right field to be processed

### LeftField

```
UFieldNodeBase LeftField
```

Left field to be processed

### Operation

```
EFieldOperationType Operation
```

Type of operation you want to perform between the 2 fields

### Magnitude

```
float32 Magnitude
```

Magnitude of the operator field

---

## FIELD

### SetOperatorField

```
UOperatorField SetOperatorField(float32 Magnitude, const UFieldNodeBase LeftField, const UFieldNodeBase RightField, EFieldOperationType Operation)
```

Compute an operation between 2 incoming fields

**Parameters**

Magnitude
float32

Magnitude of the operator field

LeftField
const UFieldNodeBase

Input field A to be processed

RightField
const UFieldNodeBase

Input field B to be processed

Operation
EFieldOperationType

Type of math operation you want to perform between the 2 fields

STATIC FUNCTIONS
Get
static UOperatorField UOperatorField::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UOperatorField UOperatorField::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UOperatorField UOperatorField::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UOperatorField::StaticClass()
