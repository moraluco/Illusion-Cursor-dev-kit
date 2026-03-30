# UInteractiveToolsContext

**Visibility:** public

## Inheritance

UObject → UInteractiveToolsContext → UEditorInteractiveToolsContext

## Description

InteractiveToolsContext owns the core parts of an Interactive Tools Framework implementation

the InputRouter, ToolManager, GizmoManager, TargetManager, and ContextStore. In the simplest use case, UInteractiveToolsContext is just a top-level container that will keep the various UObjects alive, and provide an easy way to access them. However in a more complex situation it may be desirable to subclass and extend the ToolsContext. For example, UEdModeInteractiveToolsContext allows a ToolsContext to live within a UEdMode.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInteractiveToolsContext::StaticClass()
```
