# UTypedElementWorldInterface

**Visibility:** public

## Inheritance

UInterface → UTypedElementWorldInterface

## TYPEDELEMENTINTERFACES \| WORLD

### GetRelativeTransform

```
bool GetRelativeTransform(FScriptTypedElementHandle InElementHandle, FTransform& OutTransform)
```

Get the transform of this element relative to its parent, if any.

### CanDuplicateElement

```
bool CanDuplicateElement(FScriptTypedElementHandle InElementHandle)
```

Can the given element be duplicated?

### CanEditElement

```
bool CanEditElement(FScriptTypedElementHandle InElementHandle)
```

Can this element actually be edited in the world?

### CanMoveElement

```
bool CanMoveElement(FScriptTypedElementHandle InElementHandle, ETypedElementWorldType InWorldType)
```

Can the given element be moved within the world?

### DeleteElement

```
bool DeleteElement(FScriptTypedElementHandle InElementHandle, UWorld InWorld, UTypedElementSelectionSet InSelectionSet, FTypedElementDeletionOptions InDeletionOptions)
```

Delete the given element.  Note: Default version calls DeleteElements with a single element.

### DuplicateElement

```
FScriptTypedElementHandle DuplicateElement(FScriptTypedElementHandle InElementHandle, UWorld InWorld, FVector InLocationOffset)
```

Duplicate the given element.  Note: Default version calls DuplicateElements with a single element.

### GetBounds

```
bool GetBounds(FScriptTypedElementHandle InElementHandle, FBoxSphereBounds& OutBounds)
```

Get the bounds of this element, if any.

### GetOwnerLevel

```
ULevel GetOwnerLevel(FScriptTypedElementHandle InElementHandle)
```

Get the owner level associated with this element, if any.

### GetOwnerWorld

```
UWorld GetOwnerWorld(FScriptTypedElementHandle InElementHandle)
```

Get the owner world associated with this element, if any.

### GetPivotOffset

```
bool GetPivotOffset(FScriptTypedElementHandle InElementHandle, FVector& OutPivotOffset)
```

Get the local space offset of this element that should be added to its pivot location, if any.

### CanDeleteElement

```
bool CanDeleteElement(FScriptTypedElementHandle InElementHandle)
```

Can the given element be deleted?

### GetWorldTransform

```
bool GetWorldTransform(FScriptTypedElementHandle InElementHandle, FTransform& OutTransform)
```

Get the transform of this element within its owner world, if any.

### IsTemplateElement

```
bool IsTemplateElement(FScriptTypedElementHandle InElementHandle)
```

Is this element considered a template within its world (eg, a CDO or archetype).

### NotifyMovementEnded

```
void NotifyMovementEnded(FScriptTypedElementHandle InElementHandle)
```

Notify that this element is done being moved.

### NotifyMovementOngoing

```
void NotifyMovementOngoing(FScriptTypedElementHandle InElementHandle)
```

Notify that this element is currently being moved.

### NotifyMovementStarted

```
void NotifyMovementStarted(FScriptTypedElementHandle InElementHandle)
```

Notify that this element is about to be moved.

### SetPivotOffset

```
bool SetPivotOffset(FScriptTypedElementHandle InElementHandle, FVector InPivotOffset)
```

Attempt to set the local space offset of this element that should be added to its pivot location.

### SetRelativeTransform

```
bool SetRelativeTransform(FScriptTypedElementHandle InElementHandle, FTransform InTransform)
```

Attempt to set the transform of this element relative to its parent.

### SetWorldTransform

```
bool SetWorldTransform(FScriptTypedElementHandle InElementHandle, FTransform InTransform)
```

Attempt to set the transform of this element within its owner world.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTypedElementWorldInterface::StaticClass()
```
