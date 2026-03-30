# UControlRigEditModeSettings

**Visibility:** public

## Inheritance

UObject → UControlRigEditModeSettings

## Description

Settings object used to show useful information in the details panel

## Members

### SETTINGS

```
ANIMATION SETTINGS
```
### AxisScale

```
float32 AxisScale
```

The scale for axes to draw on the selection

### bDisplayNulls

```
bool bDisplayNulls
```

Whether to show all nulls in the hierarchy

### bHideControlShapes

```
bool bHideControlShapes
```

Should we always hide control shapes in viewport

### bDisplayAxesOnSelection

```
bool bDisplayAxesOnSelection
```

Should we show axes for the selected elements

### bDisplayHierarchy

```
bool bDisplayHierarchy
```

Whether to show all bones in the hierarchy

### bCoordSystemPerWidgetMode

```
bool bCoordSystemPerWidgetMode
```

If true we restore the coordinate space when changing Widget Modes in the Viewport

### bOnlySelectRigControls

```
bool bOnlySelectRigControls
```

If true we can only select Rig Controls in the scene not other Actors.

### bLocalTransformsInEachLocalSpace

```
bool bLocalTransformsInEachLocalSpace
```

If true when we transform multiple selected objects in the viewport they each transforms along their own local transform space

### GizmoScale

```
float32 GizmoScale
```

The scale for Gizmos

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UControlRigEditModeSettings::StaticClass()
```
