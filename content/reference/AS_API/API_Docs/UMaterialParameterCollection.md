# UMaterialParameterCollection

**Visibility:** public

## Inheritance

UObject → UMaterialParameterCollection

## Description

Asset class that contains a list of parameter names and their default values.  Any number of materials can reference these parameters and get new values when the parameter values are changed.

## MATERIAL

### VectorParameters

```
TArray<FCollectionVectorParameter> VectorParameters
```
### ScalarParameters

```
TArray<FCollectionScalarParameter> ScalarParameters
```

---

## RENDERING \| MATERIAL

### VectorParameterNames

```
const TArray<FName> VectorParameterNames
```

Returns an array of the names of all the vector parameters in this Material Parameter Collection

### ScalarParameterNames

```
const TArray<FName> ScalarParameterNames
```

Returns an array of the names of all the scalar parameters in this Material Parameter Collection

---

## RENDERING \| MATERIAL

### GetScalarParameterNames

```
TArray<FName> GetScalarParameterNames()
```

Returns an array of the names of all the scalar parameters in this Material Parameter Collection

### GetVectorParameterDefaultValue

```
FLinearColor GetVectorParameterDefaultValue(FName ParameterName, bool& bParameterFound)
```

Gets the default value of a scalar parameter from a material collection.

**Parameters**

ParameterName
FName

The name of the value to get the value of

bParameterFound
bool&

if a parameter with the input name was found

**Returns**

the value of the parameter

GetVectorParameterNames
TArray<FName> GetVectorParameterNames()

Returns an array of the names of all the vector parameters in this Material Parameter Collection

GetScalarParameterDefaultValue
float32 GetScalarParameterDefaultValue(
FName 	ParameterName,
bool& 	bParameterFound
	)

Gets the default value of a scalar parameter from a material collection.

**Parameters**

ParameterName
FName

The name of the value to get the value of

bParameterFound
bool&

if a parameter with the input name was found

**Returns**

the value of the parameter

STATIC FUNCTIONS
StaticClass
static UClass UMaterialParameterCollection::StaticClass()
