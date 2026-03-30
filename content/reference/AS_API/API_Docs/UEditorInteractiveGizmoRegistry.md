# UEditorInteractiveGizmoRegistry

**Visibility:** public

## Inheritance

UObject → UEditorInteractiveGizmoRegistry

## Description

Gizmo types should be registered in either UEditorInteractiveGizmoSubsystem or UEditorInteractiveGizmoManager. This registry class is used internally by the subsystem and manager which each maintain its own registry at different scopes: the subystem is global to the Editor, the manager is local to the Interactive Tools Context.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorInteractiveGizmoRegistry::StaticClass()
```
