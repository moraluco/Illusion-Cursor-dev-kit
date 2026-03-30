# UEditorValidatorSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → UEditorValidatorSubsystem

## Description

UEditorValidatorSubsystem manages all the asset validation in the engine.  The first validation handled is UObject::IsDataValid and its overridden functions.  Those validations require custom classes and are most suited to project-specific classes. The next validation set is of all registered UEditorValidationBases.  These validators have a function to determine if they can validate a given asset, and if they are currently enabled. They are good candidates for validating engine classes or very specific project logic.

### ASSET VALIDATION

```
ASSET VALIDATION IsAssetValid EDataValidationResult IsAssetValid(FAssetData AssetData, TArray<FText>& ValidationErrors, TArray<FText>& ValidationWarnings, EDataValidationUsecase InValidationUsecase)const
```

**Returns**

Returns Valid if the object pointed to by AssetData contains valid data; returns Invalid if the object contains invalid data or does not exist; returns NotValidated if no validations was performed on the object

IsObjectValid
EDataValidationResult IsObjectValid(
UObject 	InObject,
TArray<FText>& 	ValidationErrors,
TArray<FText>& 	ValidationWarnings,
EDataValidationUsecase 	InValidationUsecase
	) const

**Returns**

Returns Valid if the object contains valid data; returns Invalid if the object contains invalid data; returns NotValidated if no validations was performed on the object

ValidateAssetsWithSettings
int ValidateAssetsWithSettings(
TArray<FAssetData> 	AssetDataList,
FValidateAssetsSettings 	InSettings,
FValidateAssetsResults& 	OutResults
	) const

Called to validate assets from either the UI or a commandlet

**Parameters**

InSettings
FValidateAssetsSettings

Structure passing context and settings for ValidateAssetsWithSettings

OutResults
FValidateAssetsResults&

More detailed information about the results of the validate assets command

**Returns**

Number of assets with validation failures or warnings

## VALIDATION

### AddValidator

```
void AddValidator(UEditorValidatorBase InValidator)
```

Adds a validator to the list, making sure it is a unique instance

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UEditorValidatorSubsystem UEditorValidatorSubsystem::Get()
```

StaticClass

### static UClass UEditorValidatorSubsystem::StaticClass

```
static UClass UEditorValidatorSubsystem::StaticClass()
```
