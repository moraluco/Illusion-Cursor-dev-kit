# UTransformMeshesToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UTransformMeshesToolProperties

## Description

Standard properties of the Transform Meshes operation

## OPTIONS

### bApplyToInstances

```
bool bApplyToInstances
```

When true, transformations are applied to the Instances of any Instanced Components (eg InstancedStaticMeshComponent) instead of to the Components

### TransformMode

```
ETransformMeshesTransformMode TransformMode
```

Transformation Mode controls the overall behavior of the Gizmos in the Tool

---

## PIVOT

### bSetPivotMode

```
bool bSetPivotMode
```

When true, the Gizmo can be moved independently without affecting objects. This allows the Gizmo to be repositioned before transforming.

---

## SNAPDRAGGING

### SnapDragSource

```
ETransformMeshesSnapDragSource SnapDragSource
```

Which point on the object being Snap-Dragged to use as the "Source" point

### RotationMode

```
ETransformMeshesSnapDragRotationMode RotationMode
```

How the object being Snap-Dragged should be rotated relative to the Source point location and Hit Surface normal

### bEnableSnapDragging

```
bool bEnableSnapDragging
```

When Snap-Dragging is enabled, you can Click-drag starting on the target objects to reposition them relative to the rest of the scene

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTransformMeshesToolProperties::StaticClass()
```
