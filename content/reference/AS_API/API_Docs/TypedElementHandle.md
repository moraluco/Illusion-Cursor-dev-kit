# TypedElementHandle

## Inheritance

TypedElementHandle

## TYPEDELEMENTFRAMEWORK \| HANDLE

### IsSet

```
static bool TypedElementHandle::IsSet(FScriptTypedElementHandle ElementHandle)
```

Has this handle been initialized to a valid element?

### NotEqual

```
static bool TypedElementHandle::NotEqual(FScriptTypedElementHandle LHS, FScriptTypedElementHandle RHS)
```

Are these two handles not equal?

### Release

```
static void TypedElementHandle::Release(FScriptTypedElementHandle& ElementHandle)
```

Release this handle and set it back to an empty state.

### Equal

```
static bool TypedElementHandle::Equal(FScriptTypedElementHandle LHS, FScriptTypedElementHandle RHS)
```

Are these two handles equal?
