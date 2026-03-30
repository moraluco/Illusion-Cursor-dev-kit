# UInteractiveGizmoBuilder

**Visibility:** public

## Inheritance

UObject → UInteractiveGizmoBuilder → UAxisAngleGizmoBuilder → UAxisPositionGizmoBuilder → UBrushStampIndicatorBuilder → UCombinedTransformGizmoBuilder

## Description

and 4 other children

A UInteractiveGizmoBuilder creates a new instance of an InteractiveGizmo (basically this is a Factory).  These are registered with the InteractiveGizmoManager, which calls BuildGizmo().  This is an abstract base class, you must subclass it in order to create your particular Gizmo instance

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInteractiveGizmoBuilder::StaticClass()
```
