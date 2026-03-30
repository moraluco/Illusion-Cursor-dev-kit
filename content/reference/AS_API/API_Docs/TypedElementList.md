# TypedElementList

## Inheritance

TypedElementList

## TYPEDELEMENTFRAMEWORK \| LIST

### GetElementHandles

```
static TArray<FScriptTypedElementHandle> TypedElementList::GetElementHandles(
```

const 	FScriptTypedElementListProxy 	ElementList,

### BaseInterfaceType

```
const 	TSubclassOf<UInterface> BaseInterfaceType
```

)

### Get the handle of every element in this list, optionally filtering to elements that implement the given interface.

```
Get the handle of every element in this list, optionally filtering to elements that implement the given interface.
```

Append

### static void TypedElementList::Append

```
static void TypedElementList::Append(FScriptTypedElementListProxy ElementList, TArray<FScriptTypedElementHandle> ElementHandles)
```

Append the given element handles to this element list.

### AppendList

```
static void TypedElementList::AppendList(FScriptTypedElementListProxy ElementList, const FScriptTypedElementListProxy OtherElementList)
```

Append the another element list to this element list.

### Clone

```
static FScriptTypedElementListProxy TypedElementList::Clone(
```

### ElementList

```
const 	FScriptTypedElementListProxy ElementList
```

)

### Clone this list instance.  Note: Only copies elements; does not copy any bindings!

```
Clone this list instance.  Note: Only copies elements; does not copy any bindings!
```

Contains

### static bool TypedElementList::Contains

```
static bool TypedElementList::Contains(const FScriptTypedElementListProxy ElementList, FScriptTypedElementHandle ElementHandle)
```

Does this element list contain an entry for the given element handle?

### CountElements

```
static int TypedElementList::CountElements(
```

const 	FScriptTypedElementListProxy 	ElementList,

const 	TSubclassOf<UInterface> 	BaseInterfaceType	 = 	nullptr

)

### Count the number of elements in this list, optionally filtering to elements that implement the given interface.

```
Count the number of elements in this list, optionally filtering to elements that implement the given interface.
```

CountElementsOfType

### static int TypedElementList::CountElementsOfType

```
static int TypedElementList::CountElementsOfType(
```

const 	FScriptTypedElementListProxy 	ElementList,

### ElementTypeName

```
const 	FName ElementTypeName
```

)

### Count the number of elements in this list of the given type.

```
Count the number of elements in this list of the given type.
```

HasElementsOfType

### static bool TypedElementList::HasElementsOfType

```
static bool TypedElementList::HasElementsOfType(const FScriptTypedElementListProxy ElementList, const FName ElementTypeName)
```

Test whether there are elements in this list of the given type.

### Empty

```
static void TypedElementList::Empty(FScriptTypedElementListProxy ElementList, int Slack = 0)
```

Remove all entries from this element list, potentially leaving space allocated for the given number of entries.

### GetElementHandleAt

```
static FScriptTypedElementHandle TypedElementList::GetElementHandleAt(
```

const 	FScriptTypedElementListProxy 	ElementList,

### Index

```
int Index
```

)

### Get the element handle at the given index.  Note: Use IsValidIndex to test for validity.

```
Get the element handle at the given index.  Note: Use IsValidIndex to test for validity.
```

Add

### static bool TypedElementList::Add

```
static bool TypedElementList::Add(FScriptTypedElementListProxy ElementList, FScriptTypedElementHandle ElementHandle)
```

Add the given element handle to this element list, if it isn't already in the list.

**Returns**

True if the element handle was added, false if it is already in the list.

GetElementInterface
static UObject TypedElementList::GetElementInterface(

const 	FScriptTypedElementListProxy 	ElementList,
	FScriptTypedElementHandle 	ElementHandle,
const 	TSubclassOf<UInterface> 	BaseInterfaceType

)

Get the element interface from the given handle.

HasElements
static bool TypedElementList::HasElements(

const 	FScriptTypedElementListProxy 	ElementList,
const 	TSubclassOf<UInterface> 	BaseInterfaceType	 = 	nullptr

)

Test whether there are elements in this list, optionally filtering to elements that implement the given interface.

IsValidIndex
static bool TypedElementList::IsValidIndex(
const 	FScriptTypedElementListProxy 	ElementList,
	int 	Index
	)

Is the given index a valid entry within this element list?

Num
static int TypedElementList::Num(
const 	FScriptTypedElementListProxy 	ElementList
	)

Get the number of entries within this element list.

Remove
static bool TypedElementList::Remove(
FScriptTypedElementListProxy 	ElementList,
FScriptTypedElementHandle 	ElementHandle
	)

Remove the given element handle from this element list, if it is in the list.

**Returns**

True if the element handle was removed, false if it isn't in the list.

Reserve
static void TypedElementList::Reserve(
FScriptTypedElementListProxy 	ElementList,
int 	Size
	)

Pre-allocate enough memory in this element list to store the given number of entries.

Reset
static void TypedElementList::Reset(
FScriptTypedElementListProxy 	ElementList
	)

Remove all entries from this element list, preserving existing allocations.

Shrink
static void TypedElementList::Shrink(
FScriptTypedElementListProxy 	ElementList
	)

Shrink this element list storage to avoid slack.

---

## TYPEDELEMENTFRAMEWORK \| REGISTRY

### CreateElementList

```
static FScriptTypedElementListProxy TypedElementList::CreateElementList(
```

### Registry

```
UTypedElementRegistry Registry
```

)

Create an empty list of elements associated with the given registry.
