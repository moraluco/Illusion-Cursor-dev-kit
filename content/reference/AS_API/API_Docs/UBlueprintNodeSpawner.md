# UBlueprintNodeSpawner

**Visibility:** public

## Inheritance

UObject → UBlueprintNodeSpawner → UBlueprintBoundNodeSpawner → UBlueprintComponentNodeSpawner → UBlueprintEventNodeSpawner → UBlueprintFieldNodeSpawner

## Description

and 10 other children

Intended to be wrapped and used by FBlueprintActionMenuItem. Rather than sub-classing the menu item, we choose to subclass this instead (for different node types). That way, we get the type inference that comes with UObjects (and we don't have to continuously compare identification strings).

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBlueprintNodeSpawner::StaticClass()
```
