# UEditorValidatorBase

**Visibility:** public

## Inheritance

UObject → UEditorValidatorBase → UDirtyFilesChangelistValidator → UEditorValidator_Localization → UUncontrolledChangelistValidator → UWorldPartitionChangelistValidator

## Description

The EditorValidatorBase is a class which verifies that an asset meets a specific ruleset.  It should be used when checking engine-level classes, as UObject::IsDataValid requires overriding the base class. You can create project-specific version of the validator base, with custom logging and enabled logic.

C++ and Blueprint validators will be gathered on editor start, while python validators need to register themselves

## Members

### VALIDATION

```
ASSET VALIDATION
```
### ValidationResult

```
const EDataValidationResult ValidationResult bIsEnabled bool bIsEnabled ASSET VALIDATION AssetPasses void AssetPasses(UObject InAsset)
```

AssetWarning

### void AssetWarning

```
void AssetWarning(UObject InAsset, FText InMessage)
```

CanValidate

### bool CanValidate

```
bool CanValidate(EDataValidationUsecase InUsecase)const
```

Override this to determine whether or not you can use this validator given this usecase

### CanValidateAsset

```
bool CanValidateAsset(UObject InAsset)const
```

Override this to determine whether or not you can validate a given asset with this validator

### GetValidationResult

```
EDataValidationResult GetValidationResult()const
```

ValidateLoadedAsset

### EDataValidationResult ValidateLoadedAsset

```
EDataValidationResult ValidateLoadedAsset(UObject InAsset, TArray<FText>& ValidationErrors)
```

AssetFails

### void AssetFails

```
void AssetFails(UObject InAsset, FText InMessage, TArray<FText>& ValidationErrors)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorValidatorBase::StaticClass()
```
