# UTypedElementHierarchyInterface

**Visibility:** public

## Inheritance

UInterface → UTypedElementHierarchyInterface

## TYPEDELEMENTINTERFACES \| HIERARCHY

### GetParentElement

```
FScriptTypedElementHandle GetParentElement(FScriptTypedElementHandle InElementHandle, bool bAllowCreate = true)
```

Get the logical parent of this element, if any.  eg) A component might return its actor, or a static mesh instance might return its ISM component.

### GetChildElements

```
void GetChildElements(FScriptTypedElementHandle InElementHandle, TArray<FScriptTypedElementHandle>& OutElementHandles, bool bAllowCreate = true)
```

Get the logical children of this element, if any.  eg) An actor might return its component, or an ISM component might return its static mesh instances.

### Note: Appends to OutElementHandles.

```
Note: Appends to OutElementHandles.
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTypedElementHierarchyInterface::StaticClass()
```
