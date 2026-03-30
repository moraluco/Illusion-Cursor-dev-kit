# UMovieSceneParameterSection

**Visibility:** public

## Inheritance

UMovieSceneSection → UMovieSceneParameterSection → UMovieSceneControlRigParameterSection

## Description

A single movie scene section which can contain data for multiple named parameters.

## SEQUENCER \| SECTION

### RemoveBoolParameter

```
bool RemoveBoolParameter(FName InParameterName)
```

Removes a bool parameter from this section.

**Parameters**

InParameterName
FName

The name of the bool parameter to remove.

**Returns**

True if a parameter with that name was found and removed, otherwise false.

AddColorParameterKey
void AddColorParameterKey(
FName 	InParameterName,
FFrameNumber 	InTime,
FLinearColor 	InValue
	)

Adds a a key for a specific color parameter at the specified time with the specified value.

AddScalarParameterKey
void AddScalarParameterKey(
FName 	InParameterName,
FFrameNumber 	InTime,
float32 	InValue
	)

Adds a a key for a specific scalar parameter at the specified time with the specified value.

AddTransformParameterKey
void AddTransformParameterKey(
FName 	InParameterName,
FFrameNumber 	InTime,
FTransform 	InValue
	)

Adds a a key for a specific color parameter at the specified time with the specified value.

AddVector2DParameterKey
void AddVector2DParameterKey(
FName 	InParameterName,
FFrameNumber 	InTime,
FVector2D 	InValue
	)

Adds a a key for a specific vector2D parameter at the specified time with the specified value.

AddVectorParameterKey
void AddVectorParameterKey(
FName 	InParameterName,
FFrameNumber 	InTime,
FVector 	InValue
	)

Adds a a key for a specific vector parameter at the specified time with the specified value.

GetParameterNames
void GetParameterNames(
TSet<FName>& 	ParameterNames
	) const

Gets the set of all parameter names used by this section.

AddBoolParameterKey
void AddBoolParameterKey(
FName 	InParameterName,
FFrameNumber 	InTime,
bool 	InValue
	)

Adds a a key for a specific bool parameter at the specified time with the specified value.

RemoveColorParameter
bool RemoveColorParameter(
FName 	InParameterName
	)

Removes a color parameter from this section.

**Parameters**

InParameterName
FName

The name of the color parameter to remove.

**Returns**

True if a parameter with that name was found and removed, otherwise false.

RemoveScalarParameter
bool RemoveScalarParameter(
FName 	InParameterName
	)

Removes a scalar parameter from this section.

**Parameters**

InParameterName
FName

The name of the scalar parameter to remove.

**Returns**

True if a parameter with that name was found and removed, otherwise false.

RemoveTransformParameter
bool RemoveTransformParameter(
FName 	InParameterName
	)

Removes a transform parameter from this section.

**Parameters**

InParameterName
FName

The name of the transform parameter to remove.

**Returns**

True if a parameter with that name was found and removed, otherwise false.

RemoveVector2DParameter
bool RemoveVector2DParameter(
FName 	InParameterName
	)

Removes a vector2D parameter from this section.

**Parameters**

InParameterName
FName

The name of the vector2D parameter to remove.

**Returns**

True if a parameter with that name was found and removed, otherwise false.

RemoveVectorParameter
bool RemoveVectorParameter(
FName 	InParameterName
	)

Removes a vector parameter from this section.

**Parameters**

InParameterName
FName

The name of the vector parameter to remove.

**Returns**

True if a parameter with that name was found and removed, otherwise false.

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneParameterSection::StaticClass()
