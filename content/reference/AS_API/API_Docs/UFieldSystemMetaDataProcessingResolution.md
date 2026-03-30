# UFieldSystemMetaDataProcessingResolution

**Visibility:** public

## Inheritance

UFieldSystemMetaData → UFieldSystemMetaDataProcessingResolution

## Description

Control the set of particles on which the field will be applied

## FIELD

### ResolutionType

```
EFieldResolutionType ResolutionType
```

Precessing resolution type used to select the particles on which the field will be applied

---

## FIELD

### SetMetaDataaProcessingResolutionType

```
UFieldSystemMetaDataProcessingResolution SetMetaDataaProcessingResolutionType(
```

### ResolutionType

```
EFieldResolutionType ResolutionType
```

)

### type

```
Set the processing resolution type
```
**Parameters**

ResolutionType
EFieldResolutionType

Type of processing resolution used to select the particles on which the field will be applied

STATIC FUNCTIONS
Get
static UFieldSystemMetaDataProcessingResolution UFieldSystemMetaDataProcessingResolution::Get(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
GetOrCreate
static UFieldSystemMetaDataProcessingResolution UFieldSystemMetaDataProcessingResolution::GetOrCreate(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
Create
static UFieldSystemMetaDataProcessingResolution UFieldSystemMetaDataProcessingResolution::Create(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
StaticClass
static UClass UFieldSystemMetaDataProcessingResolution::StaticClass()
