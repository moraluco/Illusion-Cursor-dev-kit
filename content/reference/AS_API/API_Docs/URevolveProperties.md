# URevolveProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → URevolveProperties → URevolveBoundaryToolProperties → URevolveToolProperties

## Description

Common properties for revolving a PolyPath to create a mesh.

## REVOLVE

### bReverseRevolutionDirection

```
bool bReverseRevolutionDirection
```

By default, revolution is done counterclockwise if looking down the revolution axis. This reverses the revolution direction to clockwise.

### RevolveDegrees

```
float RevolveDegrees
```

Revolution extent in degrees. Clamped to a maximum of 360 if Height Offset Per Degree is set to 0.

### RevolveDegreesOffset

```
float RevolveDegreesOffset
```

The angle by which to rotate the path around the axis before beginning the revolve.

### StepsMaxDegrees

```
float StepsMaxDegrees
```

Implicitly defines the number of steps in the revolution such that each step moves the revolution no more than the given number of degrees. This is only available if Explicit Steps is disabled.

### bExplicitSteps

```
bool bExplicitSteps
```

If true, the number of steps can be specified explicitly via Steps. If false, the number of steps is adjusted automatically based on Steps Max Degrees.

### NumExplicitSteps

```
int NumExplicitSteps
```

Number of steps in the revolution. This is only available if Explicit Steps is enabled.

### HeightOffsetPerDegree

```
float HeightOffsetPerDegree
```

How far to move each step along the revolution axis per degree. Non-zero values are useful for creating spirals.

### RevolveDegreesClamped

```
float RevolveDegreesClamped
```

Revolution extent in degrees. Clamped to a maximum of 360 if Height Offset Per Degree is set to 0.

### bFlipMesh

```
bool bFlipMesh
```

Flips the mesh inside out.

### bSharpNormals

```
bool bSharpNormals
```

If true, normals are not averaged or shared between triangles beyond the Sharp Normals Degree Threshold.

### SharpNormalsDegreeThreshold

```
float SharpNormalsDegreeThreshold
```

The threshold in degrees beyond which normals are not averaged or shared between triangles anymore. This is only available if Sharp Normals is enabled.

### bPathAtMidpointOfStep

```
bool bPathAtMidpointOfStep
```

If true, the path is placed at the midpoint of each step instead of at the start and/or end of a step. For example, this is useful for creating square columns.

### PolygroupMode

```
ERevolvePropertiesPolygroupMode PolygroupMode
```

How PolyGroups are assigned to shape primitives. If caps are generated, they will always be in separate groups.

### QuadSplitMode

```
ERevolvePropertiesQuadSplit QuadSplitMode
```

How generated quads are split into triangles.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URevolveProperties::StaticClass()
```
