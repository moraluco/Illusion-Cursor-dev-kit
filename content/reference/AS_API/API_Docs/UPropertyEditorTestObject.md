# UPropertyEditorTestObject

**Visibility:** public

## Inheritance

UObject → UPropertyEditorTestObject → ADVANCEDPROPERTIES → ObjectThatCannotBeChanged

## Description

UPrimitiveComponent ObjectThatCannotBeChanged EnumBitflags int EnumBitflags SimplePropertyWithEditCondition int SimplePropertyWithEditCondition TextPasswordProperty FText TextPasswordProperty StringPasswordProperty FString StringPasswordProperty IntPropertyWithClampedRange int IntPropertyWithClampedRange FloatPropertyWithClampedRange float32 FloatPropertyWithClampedRange

This is a custom tooltip that should be shown

PerPlatformInt FPerPlatformInt PerPlatformInt PerPlatformFloat FPerPlatformFloat PerPlatformFloat Guid FGuid Guid

## ARRAYSOFPROPERTIES

### StringPropertyArray

```
TArray<FString> StringPropertyArray
```
### Vector4PropertyArray

```
TArray<FVector4> Vector4PropertyArray
```
### RotatorPropertyArray

```
TArray<FRotator> RotatorPropertyArray
```
### InstancedUObjectArray

```
TArray<TObjectPtr<UPropertyEditorTestInstancedObject>> InstancedUObjectArray
```
### EnumPropertyArray

```
TArray<EPropertyEditorTestEnum> EnumPropertyArray
```
### TextPropertyArray

```
TArray<FText> TextPropertyArray
```
### ColorPropertyArray

```
TArray<FColor> ColorPropertyArray
```
### StructPropertyArrayWithTitle

```
TArray<FPropertyEditorTestBasicStruct> StructPropertyArrayWithTitle
```
### ActorPropertyArray

```
TArray<TObjectPtr<AActor>> ActorPropertyArray
```
### StructPropertyArrayWithFormattedTitleError

```
TArray<FPropertyEditorTestBasicStruct> StructPropertyArrayWithFormattedTitleError
```
### NamePropertyArray

```
TArray<FName> NamePropertyArray
```
### StructPropertyArrayWithFormattedTitle

```
TArray<FPropertyEditorTestBasicStruct> StructPropertyArrayWithFormattedTitle
```
### FloatPropertyArray

```
TArray<float32> FloatPropertyArray
```
### Vector3PropertyArray

```
TArray<FVector> Vector3PropertyArray
```
### ObjectPropertyArray

```
TArray<TObjectPtr<UObject>> ObjectPropertyArray
```
### LinearColorPropertyArray

```
TArray<FLinearColor> LinearColorPropertyArray
```
### StructPropertyArray

```
TArray<FPropertyEditorTestBasicStruct> StructPropertyArray
```
### InstancedStructArray

```
TArray<FPropertyEditorTestInstancedStruct> InstancedStructArray
```
### FixedArrayOfInts

```
TArray<int> FixedArrayOfInts
```
### StructPropertyArrayWithTitleError

```
TArray<FPropertyEditorTestBasicStruct> StructPropertyArrayWithTitleError
```
### StaticArrayOfInts

```
int StaticArrayOfInts
```
### StaticArrayOfIntsWithEnumLabels

```
int StaticArrayOfIntsWithEnumLabels
```
### BoolPropertyArray

```
TArray<bool> BoolPropertyArray
```
### IntProperty32Array

```
TArray<int> IntProperty32Array
```

Integer

### BytePropertyArray

```
TArray<uint8> BytePropertyArray
```

Byte

### Vector2PropertyArray

```
TArray<FVector2D> Vector2PropertyArray
```

---

## ASSETPROPERTYTESTS

### OnlyActorsAllowed

```
AActor OnlyActorsAllowed
```
### MaterialNoThumbnail

```
UMaterialInterface MaterialNoThumbnail
```
### AnyMaterialInterface

```
UMaterialInterface AnyMaterialInterface
```
### StaticMeshProp

```
UStaticMesh StaticMeshProp
```
### TextureProp

```
UTexture TextureProp
```

---

## ASSETS

### LightOrStaticMeshActorReference

```
FSoftObjectPath LightOrStaticMeshActorReference
```
### DisabledByCanEditChange

```
FSoftObjectPath DisabledByCanEditChange
```
### ActorWithMetaClass

```
FSoftObjectPath ActorWithMetaClass
```
### MaterialOrTextureAssetReference

```
FSoftObjectPath MaterialOrTextureAssetReference
```
### NotLightActorReference

```
FSoftObjectPath NotLightActorReference
```
### AssetReferenceCustomStruct

```
FSoftObjectPath AssetReferenceCustomStruct
```
### ExactlyPointLightActorReference

```
FSoftObjectPath ExactlyPointLightActorReference
```
### ExactPointOrSpotLightActorReference

```
FSoftObjectPath ExactPointOrSpotLightActorReference
```
### LightActorReference

```
FSoftObjectPath LightActorReference
```
### AssetReferenceCustomStructWithThumbnail

```
FSoftObjectPath AssetReferenceCustomStructWithThumbnail
```

---

## BASICPROPERTIES

### TextProperty

```
FText TextProperty
```
### DoubleProperty

```
float DoubleProperty
```
### FloatProperty

```
float32 FloatProperty
```
### LinearColorProperty

```
FLinearColor LinearColorProperty
```
### ColorProperty

```
FColor ColorProperty
```
### Vector2Property

```
FVector2D Vector2Property
```
### EnumByteProperty

```
EPropertyEditorTestEnum EnumByteProperty
```
### EnumProperty

```
EPropertyEditorTestEditColor EnumProperty
```
### Vector4Property

```
FVector4 Vector4Property
```
### IntPointProperty

```
FIntPoint IntPointProperty
```
### UnsignedInt64Property

```
uint64 UnsignedInt64Property
```
### UnsignedInt32Property

```
uint UnsignedInt32Property
```
### Int32Property

```
int Int32Property
```
### EnumUnderscores

```
EPropertyEditorTestUnderscores EnumUnderscores
```
### UnsignedInt16Property

```
uint16 UnsignedInt16Property
```
### ByteProperty

```
uint8 ByteProperty
```
### Int64Property

```
int64 Int64Property
```
### MatrixProperty

```
FMatrix MatrixProperty
```
### RotatorProperty

```
FRotator RotatorProperty
```
### TransformProperty

```
FTransform TransformProperty
```
### BoolProperty

```
bool BoolProperty
```
### NameProperty

```
FName NameProperty
```
### ObjectProperty

```
UObject ObjectProperty
```
### Vector3Property

```
FVector Vector3Property
```
### StringProperty

```
FString StringProperty
```
### Int16Property

```
int16 Int16Property
```
### Int8Property

```
int8 Int8Property
```

---

## CLASSES

### ClassPropertyWithDisallowed

```
UClass ClassPropertyWithDisallowed
```
### ClassProperty

```
UClass ClassProperty
```
### SubclassOfWithDisallowed

```
TSubclassOf<UTexture> SubclassOfWithDisallowed
```
### SubclassOfWithAllowed

```
TSubclassOf<UTexture> SubclassOfWithAllowed
```
### ClassPropertyWithAllowed

```
UClass ClassPropertyWithAllowed
```
### SubclassOfTexture

```
TSubclassOf<UTexture> SubclassOfTexture
```
### AssetPointerWithAllowedAndWhitespace

```
TSoftObjectPtr<UObject> AssetPointerWithAllowedAndWhitespace
```

---

## DATETIME

### DateTime

```
FDateTime DateTime
```
### Timespan

```
FTimespan Timespan
```

---

## EDITCONDITION

### bEnabledWhenEnumIs4

```
bool bEnabledWhenEnumIs4
```
### EnumAsByteEditCondition

```
EPropertyEditorTestEnum EnumAsByteEditCondition
```
### bEnablesNext

```
bool bEnablesNext
```
### EnumEditCondition

```
EPropertyEditorTestEditColor EnumEditCondition
```
### bEnabledWhenIntGreaterOrEqual5

```
bool bEnabledWhenIntGreaterOrEqual5
```
### bEnabledWhenPink

```
bool bEnabledWhenPink
```
### bEnabledWhenEnumIs2

```
bool bEnabledWhenEnumIs2
```
### bEnabledWhenBlue

```
bool bEnabledWhenBlue
```
### IntegerEditCondition

```
int IntegerEditCondition
```
### bEnabledWhenFloatGreaterThan5

```
bool bEnabledWhenFloatGreaterThan5
```
### bEnabledWhenFloatLessThan10

```
bool bEnabledWhenFloatLessThan10
```
### ArrayOfStructsWithEditCondition

```
TArray<FPropertyEditorTestBasicStruct> ArrayOfStructsWithEditCondition
```
### bEditConditionForArrays

```
bool bEditConditionForArrays
```
### bEnabledByPrevious

```
bool bEnabledByPrevious
```
### bEnabledWhenIntLessOrEqual10

```
bool bEnabledWhenIntLessOrEqual10
```
### FloatEditCondition

```
float32 FloatEditCondition
```
### bEditConditionForFixedArray

```
bool bEditConditionForFixedArray
```
### FixedArrayWithEditCondition

```
FString FixedArrayWithEditCondition
```
### EditConditionFlags

```
int64 EditConditionFlags
```
### bEnabledWhenFlagsHasTwoOrFour

```
bool bEnabledWhenFlagsHasTwoOrFour
```
### ArrayWithEditCondition

```
TArray<TObjectPtr<UTexture2D>> ArrayWithEditCondition
```
### bDisabledWhenFlagsIsOdd

```
bool bDisabledWhenFlagsIsOdd
```

---

## EDITCONDITIONHIDES

### VisibleWhenStationary

```
int VisibleWhenStationary
```
### PropertyThatHides

```
EComponentMobility PropertyThatHides
```
### bVisibleWhenStatic

```
bool bVisibleWhenStatic
```

---

## EDITINLINEPROPS

### EditInlineNewStaticMeshComponent

```
UStaticMeshComponent EditInlineNewStaticMeshComponent
```
### ArrayOfEditInlineNewSMCs

```
TArray<TObjectPtr<UStaticMeshComponent>> ArrayOfEditInlineNewSMCs
```
### CONDITIONS

```
INLINE EDIT CONDITIONS
```
### ArrayOfStructsWithInlineCondition

```
TArray<FPropertyEditorTestEditCondition> ArrayOfStructsWithInlineCondition
```
### StructWithInlineCondition

```
FPropertyEditorTestEditCondition StructWithInlineCondition
```
### UsesSharedEditCondition2

```
float32 UsesSharedEditCondition2
```
### InlineEditConditionWithoutMeta

```
float32 InlineEditConditionWithoutMeta
```
### InlineEditConditionWithMeta

```
float32 InlineEditConditionWithMeta
```
### bSharedEditCondition

```
bool bSharedEditCondition
```
### UsesSharedEditCondition1

```
float32 UsesSharedEditCondition1
```
### HasNonEditableInlineCondition

```
float32 HasNonEditableInlineCondition
```
### bInlineEditConditionWithMetaToggle

```
bool bInlineEditConditionWithMetaToggle
```

---

## OBJECTPROPERTYALLOWEDCLASSES

### TextureOrBlendableInterface

```
UObject TextureOrBlendableInterface
```

Allows either an object that's derived from UTexture or IBlendableInterface, to ensure that Object Property handles know how to filter for AllowedClasses correctly.

---

## ONLYINLINEPROPERTY

### InlineProperty

```
EComponentMobility InlineProperty
```

---

## SINGLESTRUCT

### ThisIsBrokenIfItsVisibleInADetailsView

```
FPropertyEditorTestBasicStruct ThisIsBrokenIfItsVisibleInADetailsView
```

---

## STRUCTTESTS

### ArrayOfStructs

```
TArray<FPropertyEditorTestBasicStruct> ArrayOfStructs
```
### bEditConditionAssetReferenceCustomStructWithEditCondition

```
bool bEditConditionAssetReferenceCustomStructWithEditCondition
```
### bEditCondition

```
bool bEditCondition
```
### RichCurve

```
FRichCurve RichCurve
```
### StructWithMultipleInstances2

```
FPropertyEditorTestBasicStruct StructWithMultipleInstances2
```
### bEditConditionStructWithMultipleInstances2

```
bool bEditConditionStructWithMultipleInstances2
```
### Struct

```
FPropertyEditTestTextStruct Struct
```
### StructWithMultipleInstances1

```
FPropertyEditorTestBasicStruct StructWithMultipleInstances1
```
### AssetReferenceCustomStructWithEditCondition

```
FSoftObjectPath AssetReferenceCustomStructWithEditCondition
```

---

## SUBCATEGORY

### bSubcategoryAdvanced

```
bool bSubcategoryAdvanced
```
### bSubcategory

```
bool bSubcategory
```
### bSubcategoryLast

```
bool bSubcategoryLast
```

---

## SUBCATEGORY \| BAR

### bSubcategoryBarSimple

```
bool bSubcategoryBarSimple
```
### bSubcategoryBarAdvanced

```
bool bSubcategoryBarAdvanced
```

---

## SUBCATEGORY \| FOO

### bSubcategoryFooSimple

```
bool bSubcategoryFooSimple
```
### bSubcategoryFooAdvanced

```
bool bSubcategoryFooAdvanced
```
### TESTS

```
TMAP TESTS
```
### NameToNameMap

```
TMap<FName,FName> NameToNameMap
```
### StringToActorMap

```
TMap<FString,TObjectPtr<AActor>> StringToActorMap
```
### NameToObjectMap

```
TMap<FName,TObjectPtr<UObject>> NameToObjectMap
```
### Int32ToStringMap

```
TMap<int,FString> Int32ToStringMap
```
### StringToColorMap

```
TMap<FString,FLinearColor> StringToColorMap
```
### IntToSubStructMap

```
TMap<int,FPropertyEditorTestSubStruct> IntToSubStructMap
```
### IntToCustomMap

```
TMap<int,FPropertyEditorTestBasicStruct> IntToCustomMap
```
### NameToColorMap

```
TMap<FName,FLinearColor> NameToColorMap
```
### NameToCustomMap

```
TMap<FName,FPropertyEditorTestBasicStruct> NameToCustomMap
```
### Int32ToStructMap

```
TMap<int,FPropertyEditorTestBasicStruct> Int32ToStructMap
```
### IntToEnumMap

```
TMap<int,EPropertyEditorTestEnum> IntToEnumMap
```
### ObjectToColorMap

```
TMap<TObjectPtr<UObject>,FLinearColor> ObjectToColorMap
```
### ObjectToInt32Map

```
TMap<TObjectPtr<UObject>,int> ObjectToInt32Map
```
### StringToObjectMap

```
TMap<FString,TObjectPtr<UObject>> StringToObjectMap
```
### StringToFloatMap

```
TMap<FString,float32> StringToFloatMap
```

---

## TMAPSTRUCTKEYTESTS

### LinearColorToStringMap

```
TMap<FLinearColor,FString> LinearColorToStringMap
```
### LinearColorToVectorMap

```
TMap<FLinearColor,FVector> LinearColorToVectorMap
```
### VectorToFloatMap

```
TMap<FVector,float32> VectorToFloatMap
```
### TESTS

```
TSET TESTS
```
### ActorSet

```
TSet<TObjectPtr<AActor>> ActorSet
```
### NameSet

```
TSet<FName> NameSet
```
### EditColorSet

```
TSet<EPropertyEditorTestEditColor> EditColorSet
```
### FloatSet

```
TSet<float32> FloatSet
```
### ObjectSet

```
TSet<TObjectPtr<UObject>> ObjectSet
```
### StringSet

```
TSet<FString> StringSet
```
### Int32Set

```
TSet<int> Int32Set
```

---

## TSETSTRUCTTESTS

### LinearColorSet

```
TSet<FLinearColor> LinearColorSet VectorSet TSet<FVector> VectorSet STATIC FUNCTIONS StaticClass static UClass UPropertyEditorTestObject::StaticClass()
```
