# UAnimationAttributeIdentifierExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UAnimationAttributeIdentifierExtensions

## Description

Script-exposed functionality for wrapping native functionality and constructing valid FAnimationAttributeIdentifier instances

## ATTRIBUTE

### IsValid

```
static bool UAnimationAttributeIdentifierExtensions::IsValid(
```

FAnimationAttributeIdentifier& 	Identifier

)

**Returns**

Whether or not the Attribute Identifier is valid

---

## ATTRIBUTES

CreateAttributeIdentifier

### static FAnimationAttributeIdentifier UAnimationAttributeIdentifierExtensions::CreateAttributeIdentifier

```
static FAnimationAttributeIdentifier UAnimationAttributeIdentifierExtensions::CreateAttributeIdentifier(
```

	UAnimationAsset 	AnimationAsset,

const 	FName 	AttributeName,

const 	FName 	BoneName,

	UScriptStruct 	AttributeType,

	bool 	bValidateExistsOnAsset	 = 	false

)

Constructs a valid FAnimationAttributeIdentifier instance. Ensuring that the underlying BoneName exists on the Skeleton for the provided AnimationAsset.

**Parameters**

AnimationAsset
UAnimationAsset

Animation asset to retrieve Skeleton from

AttributeName
const FName

Name of the attribute

BoneName
const FName

Name of the bone this attribute should be attributed to

AttributeType
UScriptStruct

Type of the underlying data (to-be) stored by this attribute

bValidateExistsOnAsset
bool

Whether or not the attribute should exist on the AnimationAsset. False by default.

**Returns**

Valid FAnimationCurveIdentifier if the operation was successful

STATIC FUNCTIONS
StaticClass
static UClass UAnimationAttributeIdentifierExtensions::StaticClass()
