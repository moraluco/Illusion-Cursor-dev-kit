# UEditorUtilityLibrary

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UEditorUtilityLibrary

## Description

Expose editor utility functions to Blutilities

## DEVELOPMENT \| EDITOR

### GetActorReference

```
AActor GetActorReference(FString PathToActor)
```

Attempts to find the actor specified by PathToActor in the current editor world

**Parameters**

PathToActor
FString

The path to the actor (e.g. PersistentLevel.PlayerStart)

**Returns**

A reference to the actor, or none if it wasn't found

STATIC FUNCTIONS
StaticClass
static UClass UEditorUtilityLibrary::StaticClass()
