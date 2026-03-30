# UControlRigContextMenuContext

**Visibility:** public

## Inheritance

UObject → UControlRigContextMenuContext → CONTROLRIGEDITOREXTENSIONS → ControlRigBlueprint

## Description

const UControlRigBlueprint ControlRigBlueprint

Get the control rig blueprint that we are editing

GraphNodeContextMenuContext const FControlRigGraphNodeContextMenuContext GraphNodeContextMenuContext

Returns context for graph node context menu

RigHierarchyDragAndDropContext const FControlRigRigHierarchyDragAndDropContext RigHierarchyDragAndDropContext

Returns context for a drag & drop action that contains source and target element keys

RigHierarchyToGraphDragAndDropContext const FControlRigRigHierarchyToGraphDragAndDropContext RigHierarchyToGraphDragAndDropContext

Returns context for the menu that shows up when drag and drop from Rig Hierarchy to the Rig Graph

ControlRig const UControlRig ControlRig

Get the active control rig instance in the viewport

## CONTROLRIGEDITOREXTENSIONS

### GetControlRigBlueprint

```
UControlRigBlueprint GetControlRigBlueprint()const
```

Get the control rig blueprint that we are editing

### GetGraphNodeContextMenuContext

```
FControlRigGraphNodeContextMenuContext GetGraphNodeContextMenuContext()
```

Returns context for graph node context menu

### GetRigHierarchyDragAndDropContext

```
FControlRigRigHierarchyDragAndDropContext GetRigHierarchyDragAndDropContext()
```

Returns context for a drag & drop action that contains source and target element keys

### GetRigHierarchyToGraphDragAndDropContext

```
FControlRigRigHierarchyToGraphDragAndDropContext GetRigHierarchyToGraphDragAndDropContext()
```

Returns context for the menu that shows up when drag and drop from Rig Hierarchy to the Rig Graph

### IsAltDown

```
bool IsAltDown()const
```

Returns true if either alt key is down

### GetControlRig

```
UControlRig GetControlRig()const
```

Get the active control rig instance in the viewport

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UControlRigContextMenuContext::StaticClass()
```
