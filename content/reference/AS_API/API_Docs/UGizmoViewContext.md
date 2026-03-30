# UGizmoViewContext

**Visibility:** public

## Inheritance

UObject → UGizmoViewContext

## Description

A context object that is meant to hold the scene information for the hovered viewport on a game thread, to be used by a gizmo later for hit testing. The organization mirrors FSceneView so that functions could be written in a templated way to use either FSceneView or UGizmoViewContext, though UGizmoViewContext only keeps the needed data.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGizmoViewContext::StaticClass()
```
