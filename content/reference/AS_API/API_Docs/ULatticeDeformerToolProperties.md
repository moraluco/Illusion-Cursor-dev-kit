# ULatticeDeformerToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → ULatticeDeformerToolProperties → DEFORMATION

## Description

bSoftDeformation bool bSoftDeformation

Whether to use soft deformation of the lattice

## GIZMO

### bSetPivotMode

```
bool bSetPivotMode
```

If Set Pivot Mode is active, the gizmo can be repositioned without moving the selected lattice points

### GizmoCoordinateSystem

```
EToolContextCoordinateSystem GizmoCoordinateSystem
```

Whether the gizmo's axes remain aligned with world axes or rotate as the gizmo is transformed

---

## INTERPOLATION

### InterpolationType

```
ELatticeInterpolationType InterpolationType
```

Whether to use linear or cubic interpolation to get new mesh vertex positions from the lattice

### bDeformNormals

```
bool bDeformNormals
```

Whether to use approximate new vertex normals using the deformer

---

## RESOLUTION

### Padding

```
float32 Padding
```

Relative distance the lattice extends from the mesh

### ZAxisResolution

```
int ZAxisResolution
```

Number of lattice vertices along the Z axis

### YAxisResolution

```
int YAxisResolution
```

Number of lattice vertices along the Y axis

### XAxisResolution

```
int XAxisResolution
```

Number of lattice vertices along the X axis

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULatticeDeformerToolProperties::StaticClass()
```
