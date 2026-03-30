# UFractureTransformGizmoSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureTransformGizmoSettings

## Description

This helps create a 3D transform gizmo that can be used to adjust fracture placement Note it is tailored to UFractureToolCutterBase, and expects Setup(), Shutdown() and ResetGizmo() to be called on tool setup, shutdown, and selection change respectively

## PLACEMENTCONTROLS

### bCenterOnSelection

```
bool bCenterOnSelection
```

Recenter the gizmo to the center of the selection when selection changes

### bUseGizmo

```
bool bUseGizmo
```

Use a 3D rigid transform gizmo to place the fracture pattern.  Only supports grouped fracture.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureTransformGizmoSettings::StaticClass()
```
