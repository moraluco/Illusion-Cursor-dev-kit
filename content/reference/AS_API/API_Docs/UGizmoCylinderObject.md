# UGizmoCylinderObject

**Visibility:** public

## Inheritance

UGizmoBaseObject → UGizmoCylinderObject

## Description

Simple object intended to be used as part of 3D Gizmos.  Draws a solid 3D cylinder based on parameters.

## OPTIONS

### Length

```
float Length
```

Length

### Offset

```
float Offset
```

Base of cylinder is located at (Direction * Offset)

### Radius

```
float Radius
```

Radius

### NumSides

```
int NumSides
```

Number of sides for tessellating cylinder

### Direction

```
FVector Direction
```

Orientation of cylinder's axis, must be a unit-vector This direction will also be used for view-dependent culling.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGizmoCylinderObject::StaticClass()
```
