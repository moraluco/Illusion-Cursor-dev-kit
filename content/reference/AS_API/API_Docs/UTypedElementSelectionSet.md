# UTypedElementSelectionSet

**Visibility:** public

## Inheritance

UObject → UTypedElementSelectionSet

## Description

A wrapper around an element list that ensures mutation goes via the selection interfaces, as well as providing some utilities for batching operations.

## TYPEDELEMENTFRAMEWORK \| SELECTION

### OnSelectionChange

```
FOnChangeDynamic__TypedElementSelectionSet OnSelectionChange
```

Delegate that is invoked whenever the underlying element list has been changed.

### CurrentSelectionState

```
const FTypedElementSelectionSetState CurrentSelectionState
```

Serializes the current selection set.  The calling code is responsible for storing any state information. The selection set can be returned to a prior state using RestoreSelectionState.

NumSelectedElements

### NumSelectedElements

```
const int NumSelectedElements
```

Get the number of selected elements.

### OnPreSelectionChange

```
FOnPreChangeDynamic__TypedElementSelectionSet OnPreSelectionChange
```

Delegate that is invoked whenever the underlying element list is potentially about to change.

---

## TYPEDELEMENTFRAMEWORK \| SELECTION

### GetSelectedObjects

```
TArray<UObject> GetSelectedObjects(const UClass InRequiredClass = nullptr)const
```

Get the array of selected objects from the currently selected elements.

### CanDeselectElement

```
bool CanDeselectElement(FScriptTypedElementHandle InElementHandle, const FTypedElementSelectionOptions InSelectionOptions)const
```

Test to see whether the given element can be deselected.

### CanSelectElement

```
bool CanSelectElement(FScriptTypedElementHandle InElementHandle, const FTypedElementSelectionOptions InSelectionOptions)const
```

Test to see whether the given element can be selected.

### ClearSelection

```
bool ClearSelection(const FTypedElementSelectionOptions InSelectionOptions)
```

Clear the current selection.

**Returns**

True if the selection was changed, false otherwise.

CountSelectedElements
int CountSelectedElements(
const 	TSubclassOf<UInterface> 	InBaseInterfaceType	 = 	nullptr
	) const

Count the number of selected elements, optionally filtering to elements that implement the given interface.

CountSelectedObjects
int CountSelectedObjects(
const 	UClass 	InRequiredClass	 = 	nullptr
	) const

Count the number of selected objects.

DeselectElement
bool DeselectElement(
	FScriptTypedElementHandle 	InElementHandle,
const 	FTypedElementSelectionOptions 	InSelectionOptions
	)

Attempt to deselect the given element.

**Returns**

True if the selection was changed, false otherwise.

DeselectElements
bool DeselectElements(
	TArray<FScriptTypedElementHandle> 	InElementHandles,
const 	FTypedElementSelectionOptions 	InSelectionOptions
	)

Attempt to deselect the given elements.

**Returns**

True if the selection was changed, false otherwise.

GetBottomSelectedObject
UObject GetBottomSelectedObject(
const 	UClass 	InRequiredClass	 = 	nullptr
	) const

Get the last selected object of the given type.

GetCurrentSelectionState
FTypedElementSelectionSetState GetCurrentSelectionState() const

Serializes the current selection set.  The calling code is responsible for storing any state information. The selection set can be returned to a prior state using RestoreSelectionState.

**Returns**

the current state of the selection set.

GetNumSelectedElements
int GetNumSelectedElements() const

Get the number of selected elements.

AllowSelectionModifiers
bool AllowSelectionModifiers(
FScriptTypedElementHandle 	InElementHandle
	) const

Test to see whether selection modifiers (Ctrl or Shift) are allowed while selecting this element.

GetSelectionElement
FScriptTypedElementHandle GetSelectionElement(
FScriptTypedElementHandle 	InElementHandle,
ETypedElementSelectionMethod 	InSelectionMethod
	) const

Given an element, return the element that should actually perform a selection operation.

GetTopSelectedObject
UObject GetTopSelectedObject(
const 	UClass 	InRequiredClass	 = 	nullptr
	) const

Get the first selected object of the given type.

HasSelectedElements
bool HasSelectedElements(
const 	TSubclassOf<UInterface> 	InBaseInterfaceType	 = 	nullptr
	) const

Test whether there selected elements, optionally filtering to elements that implement the given interface.

HasSelectedObjects
bool HasSelectedObjects(
const 	UClass 	InRequiredClass	 = 	nullptr
	) const

Test whether there are any selected objects.

IsElementSelected
bool IsElementSelected(
	FScriptTypedElementHandle 	InElementHandle,
const 	FTypedElementIsSelectedOptions 	InSelectionOptions
	) const

Test to see whether the given element is currently considered selected.

GetSelectedElementHandles
TArray<FScriptTypedElementHandle> GetSelectedElementHandles(

const 	TSubclassOf<UInterface> 	InBaseInterfaceType	 = 	nullptr

) const

Get the handle of every selected element, optionally filtering to elements that implement the given interface.

RestoreSelectionState
void RestoreSelectionState(
FTypedElementSelectionSetState 	InSelectionState
	)

Restores the selection set from the given state.  The calling code is responsible for managing any undo state.

SelectElement
bool SelectElement(
	FScriptTypedElementHandle 	InElementHandle,
const 	FTypedElementSelectionOptions 	InSelectionOptions
	)

Attempt to select the given element.

**Returns**

True if the selection was changed, false otherwise.

SelectElements
bool SelectElements(
	TArray<FScriptTypedElementHandle> 	InElementHandles,
const 	FTypedElementSelectionOptions 	InSelectionOptions
	)

Attempt to select the given elements.

**Returns**

True if the selection was changed, false otherwise.

SetSelection
bool SetSelection(
	TArray<FScriptTypedElementHandle> 	InElementHandles,
const 	FTypedElementSelectionOptions 	InSelectionOptions
	)

Attempt to make the selection the given elements.  Note: Equivalent to calling ClearSelection then SelectElements, but happens in a single batch.

**Returns**

True if the selection was changed, false otherwise.

STATIC FUNCTIONS
StaticClass
static UClass UTypedElementSelectionSet::StaticClass()
