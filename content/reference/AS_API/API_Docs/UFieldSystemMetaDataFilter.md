# UFieldSystemMetaDataFilter

**Visibility:** public

## Inheritance

UFieldSystemMetaData → UFieldSystemMetaDataFilter

## Description

Filter the particles on which the field will be applied

## FIELD

### ObjectType

```
EFieldObjectType ObjectType
```

Filter object type used to select the particles on which the field will be applied

### PositionType

```
EFieldPositionType PositionType
```

Specify which position type will be used for the field evaluation

### FilterType

```
EFieldFilterType FilterType
```

Filter state type used to select the particles on which the field will be applied

---

## FIELD

### SetMetaDataFilterType

```
UFieldSystemMetaDataFilter SetMetaDataFilterType(EFieldFilterType FilterType, EFieldObjectType ObjectType, EFieldPositionType PositionType)
```

Set the particles filter type

**Parameters**

FilterType
EFieldFilterType

State type used to select the state particles on which the field will be applied

ObjectType
EFieldObjectType

Object type used to select the type of objects(rigid, cloth...) on which the field will be applied

PositionType
EFieldPositionType

Position type used to compute the samples positions

STATIC FUNCTIONS
Get
static UFieldSystemMetaDataFilter UFieldSystemMetaDataFilter::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UFieldSystemMetaDataFilter UFieldSystemMetaDataFilter::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UFieldSystemMetaDataFilter UFieldSystemMetaDataFilter::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UFieldSystemMetaDataFilter::StaticClass()
