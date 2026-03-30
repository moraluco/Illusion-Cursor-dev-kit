# UTypedElementSelectionInterface

**Visibility:** public

## Inheritance

UInterface → UTypedElementSelectionInterface

## TYPEDELEMENTINTERFACES \| SELECTION

### CanDeselectElement

```
bool CanDeselectElement(FScriptTypedElementHandle InElementHandle, FTypedElementSelectionOptions InSelectionOptions)
```

Test to see whether the given element can be deselected.

### CanSelectElement

```
bool CanSelectElement(FScriptTypedElementHandle InElementHandle, FTypedElementSelectionOptions InSelectionOptions)
```

Test to see whether the given element can be selected.

### DeselectElement

```
bool DeselectElement(FScriptTypedElementHandle InElementHandle, FScriptTypedElementListProxy InSelectionSet, FTypedElementSelectionOptions InSelectionOptions)
```

Attempt to deselect the given element.

**Returns**

True if the selection was changed, false otherwise.

GetSelectionElement
FScriptTypedElementHandle GetSelectionElement(

	FScriptTypedElementHandle 	InElementHandle,
const 	FScriptTypedElementListProxy 	InCurrentSelection,
	ETypedElementSelectionMethod 	InSelectionMethod

)

Given an element, return the element that should actually perform a selection operation.

IsElementSelected
bool IsElementSelected(
	FScriptTypedElementHandle 	InElementHandle,
const 	FScriptTypedElementListProxy 	InSelectionSet,
	FTypedElementIsSelectedOptions 	InSelectionOptions
	)

Test to see whether the given element is currently considered selected.

SelectElement
bool SelectElement(
FScriptTypedElementHandle 	InElementHandle,
FScriptTypedElementListProxy 	InSelectionSet,
FTypedElementSelectionOptions 	InSelectionOptions
	)

Attempt to select the given element.

**Returns**

True if the selection was changed, false otherwise.

AllowSelectionModifiers
bool AllowSelectionModifiers(
	FScriptTypedElementHandle 	InElementHandle,
const 	FScriptTypedElementListProxy 	InSelectionSet
	)

Test to see whether selection modifiers (Ctrl or Shift) are allowed while selecting this element.

STATIC FUNCTIONS
StaticClass
static UClass UTypedElementSelectionInterface::StaticClass()
