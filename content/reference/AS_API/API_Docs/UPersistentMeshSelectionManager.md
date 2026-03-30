# UPersistentMeshSelectionManager

**Visibility:** public

## Inheritance

UObject → UPersistentMeshSelectionManager

## Description

UPersistentMeshSelectionManager manages an active Mesh Selection.  The assumption is that this class will be registered with the ContextStore of an InteractiveToolsContext, and the various Tool implementations will get/set the selection.

StoredMeshSelectionUtil.h contains various utility functions to simplify usage of this class, those functions are preferable to directly using the Manager.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPersistentMeshSelectionManager::StaticClass()
```
