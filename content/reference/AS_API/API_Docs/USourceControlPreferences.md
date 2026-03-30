# USourceControlPreferences

**Visibility:** public

## Inheritance

UDeveloperSettings → USourceControlPreferences

## Description

Settings for the Source Control Integration

## SOURCECONTROL

### bShouldDeleteNewFilesOnRevert

```
bool bShouldDeleteNewFilesOnRevert
```

Deletes new files when reverted.

### CollectionChangelistTags

```
TArray<FString> CollectionChangelistTags
```

List of lines to add to any collection on checkin

### SpecificCollectionChangelistTags

```
TMap<FName,FString> SpecificCollectionChangelistTags
```

Map of collection names and additional text to apply to changelist descriptions when checking them in

### bEnableValidationTag

```
bool bEnableValidationTag
```

Adds validation tag to changelist description on submit.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USourceControlPreferences::StaticClass()
```
