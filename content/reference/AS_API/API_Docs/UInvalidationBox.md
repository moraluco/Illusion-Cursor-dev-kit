# UInvalidationBox

**Visibility:** public

## Inheritance

UContentWidget → UInvalidationBox

## Description

Invalidate * Single Child * Caching / Performance

## CACHING

### bCanCache

```
bool bCanCache
```

Should the invalidation panel cache the widgets?  Making this false makes it so the invalidation panel stops acting like an invalidation panel, just becomes a simple container widget.

### INVALIDATION BOX

```
INVALIDATION BOX CanCache bool CanCache INVALIDATION BOX SetCanCache void SetCanCache(bool CanCache)
```

Tell the InvalidationBox to use the invalidation process.  Note: the other internal flags can disable the option.

### GetCanCache

```
bool GetCanCache()const
```

**Returns**

true when the invalidation box cache the widgets. The widgets will be updated only if they get invalidated.

STATIC FUNCTIONS
StaticClass
static UClass UInvalidationBox::StaticClass()
