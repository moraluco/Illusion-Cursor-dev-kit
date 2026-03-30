# URevolveToolProperties

**Visibility:** public

## Inheritance

URevolveProperties → URevolveToolProperties → DRAWPLANE → DrawPlaneOrigin

## Description

FVector DrawPlaneOrigin

Sets the draw plane origin. The revolution axis is the X axis in the plane.

DrawPlaneOrientation FRotator DrawPlaneOrientation

Sets the draw plane orientation. The revolution axis is the X axis in the plane.

## REVOLVE

### bClosePathToAxis

```
bool bClosePathToAxis
```

Connect the ends of an open path to the axis to add caps to the top and bottom of the revolved result.  This is not relevant for paths that are already closed.

### CapFillMode

```
ERevolvePropertiesCapFillMode CapFillMode
```

Determines how end caps are created. This is not relevant if the end caps are not visible or if the path is not closed.

---

## SNAPPING

### bEnableSnapping

```
bool bEnableSnapping
```

Enables snapping while editing the path.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URevolveToolProperties::StaticClass()
```
