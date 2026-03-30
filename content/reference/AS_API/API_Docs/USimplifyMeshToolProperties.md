# USimplifyMeshToolProperties

**Visibility:** public

## Inheritance

UMeshConstraintProperties → USimplifyMeshToolProperties

## Description

Standard properties of the Simplify operation

## DISPLAY

### bShowGroupColors

```
bool bShowGroupColors
```

Display colors corresponding to the mesh's polygon groups

---

## OPTIONS

### TargetPercentage

```
int TargetPercentage
```

Target percentage of original triangle count

### TargetEdgeLength

```
float32 TargetEdgeLength
```

Target edge length

### TargetTriangleCount

```
int TargetTriangleCount
```

Target triangle count

### TargetMode

```
ESimplifyTargetType TargetMode
```
### Type

```
Simplification Target Type
```
### TargetVertexCount

```
int TargetVertexCount
```

Target vertex count

### SimplifierType

```
ESimplifyType SimplifierType
```
### Scheme

```
Simplification Scheme
```
### bDiscardAttributes

```
bool bDiscardAttributes
```

If true, UVs and Normals are discarded

### bGeometricConstraint

```
bool bGeometricConstraint
```

If true, then simplification will consider geometric deviation with the input mesh

### GeometricTolerance

```
float32 GeometricTolerance
```

Geometric deviation tolerance used when bGeometricConstraint is enabled, to limit the geometric deviation between the simplified and original meshes

### PolyEdgeAngleTolerance

```
float32 PolyEdgeAngleTolerance
```

Threshold angle change (in degrees) along a polygroup edge, above which a vertex must be added

### bReproject

```
bool bReproject
```

Enable projection back to input mesh

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USimplifyMeshToolProperties::StaticClass()
```
