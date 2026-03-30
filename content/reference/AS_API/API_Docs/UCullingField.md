# UCullingField

**Visibility:** public

## Inheritance

UFieldNodeBase → UCullingField

## Description

Evaluate the input field according to the result of the culling field

## FIELD

### Field

```
UFieldNodeBase Field
```

Input field that will be evaluated according to the culling field result

### Operation

```
EFieldCullingOperationType Operation
```

Evaluate the input field if the result of the culling field is equal to 0 (Inside) or different from 0 (Outside)

### Culling

```
UFieldNodeBase Culling
```

Culling field to be used

---

## FIELD

### SetCullingField

```
UCullingField SetCullingField(const UFieldNodeBase Culling, const UFieldNodeBase Field, EFieldCullingOperationType Operation)
```

Evaluate the input field according to the result of the culling field

**Parameters**

Culling
const UFieldNodeBase

Culling field to be used

Field
const UFieldNodeBase

Input field that will be evaluated according to the culling field result

Operation
EFieldCullingOperationType

Evaluate the input field if the result of the culling field is equal to 0 (Inside) or different from 0 (Outside)

STATIC FUNCTIONS
Get
static UCullingField UCullingField::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UCullingField UCullingField::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UCullingField UCullingField::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UCullingField::StaticClass()
