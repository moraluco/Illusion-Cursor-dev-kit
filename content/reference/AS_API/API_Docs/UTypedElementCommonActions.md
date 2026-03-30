# UTypedElementCommonActions

**Visibility:** public

## Inheritance

UObject → UTypedElementCommonActions

## Description

A utility to handle higher-level common actions, but default via UTypedElementWorldInterface, but asset editors can customize this behavior via FTypedElementCommonActionsCustomization.

## TYPEDELEMENTFRAMEWORK \| COMMON

### DeleteSelectedElements

```
bool DeleteSelectedElements(UTypedElementSelectionSet SelectionSet, UWorld World, FTypedElementDeletionOptions DeletionOptions)
```

Delete any elements from the given selection set that can be deleted.  Note: Internally this just calls DeleteNormalizedElements on the result of UTypedElementSelectionSet::GetNormalizedSelection.

### DuplicateNormalizedElements

```
TArray<FScriptTypedElementHandle> DuplicateNormalizedElements(
```

const 	FScriptTypedElementListProxy 	ElementList,

### UWorld 	World,

```
FVector 	LocationOffset
```

)

Duplicate any elements from the given list that can be duplicated.  Note: This list should have been pre-normalized via UTypedElementSelectionSet::GetNormalizedSelection or UTypedElementSelectionSet::GetNormalizedElementList.

### DuplicateSelectedElements

```
TArray<FScriptTypedElementHandle> DuplicateSelectedElements(
```

const 	UTypedElementSelectionSet 	SelectionSet,

### UWorld 	World,

```
FVector 	LocationOffset
```

)

### Duplicate any elements from the given selection set that can be duplicated.  Note: Internally this just calls DuplicateNormalizedElements on the result of UTypedElementSelectionSet::GetNormalizedSelection.

```
Duplicate any elements from the given selection set that can be duplicated.  Note: Internally this just calls DuplicateNormalizedElements on the result of UTypedElementSelectionSet::GetNormalizedSelection.
```

DeleteNormalizedElements

### bool DeleteNormalizedElements

```
bool DeleteNormalizedElements(const FScriptTypedElementListProxy ElementList, UWorld World, UTypedElementSelectionSet InSelectionSet, FTypedElementDeletionOptions DeletionOptions)
```

Delete any elements from the given list that can be deleted.  Note: This list should have been pre-normalized via UTypedElementSelectionSet::GetNormalizedSelection or UTypedElementSelectionSet::GetNormalizedElementList.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTypedElementCommonActions::StaticClass()
```
