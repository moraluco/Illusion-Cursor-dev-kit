# UGizmoBoxObject

**Visibility:** public

## Inheritance

UGizmoBaseObject → UGizmoBoxObject

## Description

Simple object intended to be used as part of 3D Gizmos.  Draws a solid axis-aligned 3D box based on parameters.

## OPTIONS

### UpDirection

```
FVector UpDirection
```

Direction corresponding to the box's Z-dimension, must be a unit vector This direction is used for view-dependent visibility.

### SideDirection

```
FVector SideDirection
```

Direction corresponding to the box's Y-dimension, must be a unit vector

### Offset

```
float32 Offset
```

Cube center is located at (UpDirection * Offset)

### Dimensions

```
FVector Dimensions
```

Dimensions of box

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGizmoBoxObject::StaticClass()
```
