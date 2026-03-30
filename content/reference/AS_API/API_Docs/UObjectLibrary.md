# UObjectLibrary

**Visibility:** public

## Inheritance

UObject → UObjectLibrary

## Description

Class that holds a library of Objects

## OBJECTLIBRARY

### bHasBlueprintClasses

```
bool bHasBlueprintClasses
```

True if this library holds blueprint classes, false if it holds other objects

### Objects

```
TArray<TObjectPtr<UObject>> Objects
```

List of Objects in library

### ObjectBaseClass

```
UClass ObjectBaseClass
```

Class that Objects must be of. If ContainsBlueprints is true, this is the native class that the blueprints are instances of and not UClass

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UObjectLibrary::StaticClass()
```
