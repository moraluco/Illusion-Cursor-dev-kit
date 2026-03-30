# UPolyEditCommonProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UPolyEditCommonProperties

## Description

These are properties that do not get enabled/disabled based on the action

## GIZMO

### LocalFrameMode

```
ELocalFrameMode LocalFrameMode
```

Determines whether, on selection changes, the gizmo's rotation is taken from the object transform, or from the geometry elements selected. Only relevant with a local coordinate system and when rotation is not locked.

### bLockRotation

```
bool bLockRotation
```

When true, keeps rotation of gizmo constant through selection changes and manipulations (but not middle-click repositions). Only active with a local coordinate system.

---

## OPTIONS

### bShowWireframe

```
bool bShowWireframe STATIC FUNCTIONS StaticClass static UClass UPolyEditCommonProperties::StaticClass()
```
