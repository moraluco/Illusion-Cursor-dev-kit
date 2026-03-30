# UToFloatField

**Visibility:** public

## Inheritance

UFieldNodeFloat → UToFloatField

## Description

Convert an integer field to a scalar one

## FIELD

### IntField

```
UFieldNodeInt IntField
```

Integer field to be converted to an a scalar one

---

## FIELD

### SetToFloatField

```
UToFloatField SetToFloatField(const UFieldNodeInt IntegerField)
```

Convert an integer field to a float one

**Parameters**

IntegerField
const UFieldNodeInt

Integer field to be converted to an a float one

STATIC FUNCTIONS
Get
static UToFloatField UToFloatField::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UToFloatField UToFloatField::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UToFloatField UToFloatField::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UToFloatField::StaticClass()
