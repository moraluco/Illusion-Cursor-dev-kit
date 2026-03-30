# UAssetActionUtility

**Visibility:** public

## Inheritance

UEditorUtilityObject → UAssetActionUtility

## Description

Base class for all asset action-related utilities Any functions/events that are exposed on derived classes that have the correct signature will be included as menu options when right-clicking on a group of assets in the content browser.

## ASSETS

### SupportedClass

```
const UClass SupportedClass
```

Return the class that this asset action supports (if not implemented, it will show up for all asset types)

---

## ASSETS

### IsActionForBlueprints

```
bool IsActionForBlueprints()const
```

Returns whether or not this action is designed to work specifically on Blueprints (true) or on all assets (false).  If true, GetSupportedClass() is treated as a filter against the Parent Class of selected Blueprint assets

### GetSupportedClass

```
UClass GetSupportedClass()const
```

Return the class that this asset action supports (if not implemented, it will show up for all asset types)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAssetActionUtility::StaticClass()
```
