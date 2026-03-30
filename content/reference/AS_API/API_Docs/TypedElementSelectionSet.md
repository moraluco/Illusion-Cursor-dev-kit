# TypedElementSelectionSet

## Inheritance

TypedElementSelectionSet

## TYPEDELEMENTFRAMEWORK \| SELECTION

### GetNormalizedElementList

```
static FScriptTypedElementListProxy TypedElementSelectionSet::GetNormalizedElementList(
```

	UTypedElementSelectionSet 	SelectionSet,

### const 	FScriptTypedElementListProxy 	ElementList,

```
const 	FTypedElementSelectionNormalizationOptions 	NormalizationOptions
```

)

### Get a normalized version of the given element list that can be used to perform operations like gizmo manipulation, deletion, copying, etc.  This will do things like expand out groups, and resolve any parent<->child elements so that duplication operations aren't performed on both the parent and the child.

```
Get a normalized version of the given element list that can be used to perform operations like gizmo manipulation, deletion, copying, etc.  This will do things like expand out groups, and resolve any parent<->child elements so that duplication operations aren't performed on both the parent and the child.
```

GetNormalizedSelection

### static FScriptTypedElementListProxy TypedElementSelectionSet::GetNormalizedSelection

```
static FScriptTypedElementListProxy TypedElementSelectionSet::GetNormalizedSelection(
```

	UTypedElementSelectionSet 	SelectionSet,

### NormalizationOptions

```
const 	FTypedElementSelectionNormalizationOptions NormalizationOptions
```

)

Get a normalized version of this selection set that can be used to perform operations like gizmo manipulation, deletion, copying, etc.  This will do things like expand out groups, and resolve any parent<->child elements so that duplication operations aren't performed on both the parent and the child.

### SelectElementsFromList

```
static bool TypedElementSelectionSet::SelectElementsFromList(
```

	UTypedElementSelectionSet 	SelectionSet,

### const 	FScriptTypedElementListProxy 	ElementList,

```
const 	FTypedElementSelectionOptions 	SelectionOptions
```

)

Attempt to select the given elements.

**Returns**

True if the selection was changed, false otherwise.

SetSelectionFromList
static bool TypedElementSelectionSet::SetSelectionFromList(

	UTypedElementSelectionSet 	SelectionSet,
const 	FScriptTypedElementListProxy 	ElementList,
const 	FTypedElementSelectionOptions 	SelectionOptions

)

Attempt to make the selection the given elements.  Note: Equivalent to calling ClearSelection then SelectElements, but happens in a single batch.

**Returns**

True if the selection was changed, false otherwise.

DeselectElementsFromList
static bool TypedElementSelectionSet::DeselectElementsFromList(

	UTypedElementSelectionSet 	SelectionSet,
const 	FScriptTypedElementListProxy 	ElementList,
const 	FTypedElementSelectionOptions 	SelectionOptions

)

Attempt to deselect the given elements.

**Returns**

True if the selection was changed, false otherwise.
