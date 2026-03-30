# ULevelEditorContextMenuContext

**Visibility:** public

## Inheritance

UObject → ULevelEditorContextMenuContext

## LEVELEDITOR \| MENU

### CurrentSelection

```
UTypedElementSelectionSet CurrentSelection
```
### CursorWorldLocation

```
FVector CursorWorldLocation
```
### SelectedComponents

```
TArray<TObjectPtr<UActorComponent>> SelectedComponents
```
### HitProxyActor

```
AActor HitProxyActor
```

If the ContextType is Viewport this property can be set to the HitProxy actor that triggered the ContextMenu.

### ContextType

```
ELevelEditorMenuContext ContextType VARIABLES HitProxyElement const FScriptTypedElementHandle HitProxyElement LEVELEDITOR | MENU GetHitProxyElement FScriptTypedElementHandle GetHitProxyElement()
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULevelEditorContextMenuContext::StaticClass()
```
