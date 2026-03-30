# UAnimationCurveIdentifierExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UAnimationCurveIdentifierExtensions

## Description

Script-exposed functionality for wrapping native functionality and constructing valid FAnimationCurveIdentifier instances

## CURVE

### GetType

```
static ERawCurveTrackTypes UAnimationCurveIdentifierExtensions::GetType(
```

FAnimationCurveIdentifier& 	Identifier

)

**Returns**

The animation curve type for the curve represented by the Curve Identifier

GetName
static FName UAnimationCurveIdentifierExtensions::GetName(

FAnimationCurveIdentifier& 	Identifier

)

**Returns**

The name used for displaying the Curve Identifier

IsValid
static bool UAnimationCurveIdentifierExtensions::IsValid(
FAnimationCurveIdentifier& 	Identifier
	)

**Returns**

Whether or not the Curve Identifier is valid

---

## CURVES

### GetTransformChildCurveIdentifier

```
static bool UAnimationCurveIdentifierExtensions::GetTransformChildCurveIdentifier(
```

FAnimationCurveIdentifier& 	InOutIdentifier,

### ETransformCurveChannel 	Channel,

```
EVectorCurveChannel 	Axis
```

)

Converts a valid FAnimationCurveIdentifier instance with RCT_Transform curve type to target a child curve.

**Parameters**

InOutIdentifier
FAnimationCurveIdentifier&

[out] Identifier to be converted

Channel
ETransformCurveChannel

Channel to target

Axis
EVectorCurveChannel

Axis within channel to target

**Returns**

Valid FAnimationCurveIdentifier if the operation was successful

GetCurveIdentifiers
static TArray<FAnimationCurveIdentifier> UAnimationCurveIdentifierExtensions::GetCurveIdentifiers(

USkeleton 	InSkeleton,
ERawCurveTrackTypes 	CurveType

)

Retrieves all curve identifiers for a specific curve types from the provided Skeleton

**Parameters**

InSkeleton
USkeleton

Skeleton from which to retrieve the curve identifiers

CurveType
ERawCurveTrackTypes

Type of the curve identifers to retrieve

**Returns**

Array of FAnimationCurveIdentifier instances each representing a unique curve if the operation was successful, empyty array otherwise

GetCurveIdentifier
static FAnimationCurveIdentifier UAnimationCurveIdentifierExtensions::GetCurveIdentifier(

USkeleton 	InSkeleton,
FName 	Name,
ERawCurveTrackTypes 	CurveType

)

Constructs a valid FAnimationCurveIdentifier instance. Ensuring that the underlying SmartName exists on the provided Skeleton for the provided curve type.  If it is not found initially it will add it to the Skeleton thus modifying it.

**Parameters**

InSkeleton
USkeleton

Skeleton on which to look for or add the curve name

Name
FName

Name of the curve to find or add

CurveType
ERawCurveTrackTypes

Type of the curve to find or add

**Returns**

Valid FAnimationCurveIdentifier if the operation was successful

FindCurveIdentifier
static FAnimationCurveIdentifier UAnimationCurveIdentifierExtensions::FindCurveIdentifier(

const 	USkeleton 	InSkeleton,
	FName 	Name,
	ERawCurveTrackTypes 	CurveType

)

Tries to construct a valid FAnimationCurveIdentifier instance. It tries to find the underlying SmartName on the provided Skeleton for the provided curve type.

**Parameters**

InSkeleton
const USkeleton

Skeleton on which to look for the curve name

Name
FName

Name of the curve to find

CurveType
ERawCurveTrackTypes

Type of the curve to find

**Returns**

Valid FAnimationCurveIdentifier if the name exists on the skeleton and the operation was successful, invalid otherwise

STATIC FUNCTIONS
StaticClass
static UClass UAnimationCurveIdentifierExtensions::StaticClass()
