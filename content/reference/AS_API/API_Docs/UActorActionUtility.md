# UActorActionUtility

**Visibility:** public

## Inheritance

UEditorUtilityObject → UActorActionUtility

## Description

Base class for all actor action-related utilities Any functions/events that are exposed on derived classes that have the correct signature will be included as menu options when right-clicking on a group of actors in the level editor.

## ASSETS

### SupportedClass

```
const UClass SupportedClass
```

Return the class that this actor action supports. Leave this blank to support all actor classes.

---

## ASSETS

### GetSupportedClass

```
UClass GetSupportedClass()const
```

Return the class that this actor action supports. Leave this blank to support all actor classes.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UActorActionUtility::StaticClass()
```
