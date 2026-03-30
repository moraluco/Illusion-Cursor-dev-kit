# UGizmoConeObject

**Visibility:** public

## Inheritance

UGizmoBaseObject → UGizmoConeObject

## Description

Simple object intended to be used as part of 3D Gizmos.  Draws a solid 3D cone based on parameters.

## OPTIONS

### Height

```
float Height
```

Height of cone

### Offset

```
float Offset
```

Cone's point is located at (Direction * Offset) or the origin if Offset is 0

### Angle

```
float Angle
```

Angle in radians between cone's axis and slant edge

### NumSides

```
int NumSides
```

Number of sides for tessellating cone

### Direction

```
FVector Direction
```

Direction of cone's axis, must be a unit vector This direction will also be used for view-dependent culling.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGizmoConeObject::StaticClass()
```
