# UTypedElementRegistry

**Visibility:** public

## Inheritance

UObject → UTypedElementRegistry

## Description

Registry of element types and their associated interfaces, along with the elements that represent their instances.

### STATIC VARIABLES

```
STATIC VARIABLES DefaultTypedElementRegistry static const UTypedElementRegistry UTypedElementRegistry::DefaultTypedElementRegistry TYPEDELEMENTFRAMEWORK|REGISTRY GetDefaultTypedElementRegistry static UTypedElementRegistry UTypedElementRegistry::GetDefaultTypedElementRegistry()
```

Get the singleton instance of the registry used in most cases.

### GetElementInterface

```
UObject GetElementInterface(FScriptTypedElementHandle InElementHandle, const TSubclassOf<UInterface> InBaseInterfaceType)const
```

Get the element interface supported by the given handle, or null if there is no support for this interface or if the handle is invalid.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTypedElementRegistry::StaticClass()
```
