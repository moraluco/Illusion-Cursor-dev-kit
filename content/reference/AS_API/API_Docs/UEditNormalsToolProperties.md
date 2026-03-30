# UEditNormalsToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UEditNormalsToolProperties

## Description

Standard properties

## NORMALSCALCULATION

### NormalCalculationMethod

```
ENormalCalculationMethod NormalCalculationMethod
```

Choose the method for computing vertex normals

### bFixInconsistentNormals

```
bool bFixInconsistentNormals
```

For meshes with inconsistent triangle orientations/normals, flip as needed to make the normals consistent

### bInvertNormals

```
bool bInvertNormals
```

Invert (flip) all mesh normals and associated triangle orientations

### bRecomputeNormals

```
bool bRecomputeNormals
```

Recompute all mesh normals

---

## NORMALSTOPOLOGY

### SharpEdgeAngleThreshold

```
float32 SharpEdgeAngleThreshold
```

Threshold on angle of change in face normals across an edge, above which we create a sharp edge if bSplitNormals is true

### bAllowSharpVertices

```
bool bAllowSharpVertices
```

Assign separate normals at 'sharp' vertices, for example, at the tip of a cone

### SplitNormalMethod

```
ESplitNormalMethod SplitNormalMethod
```

Control whether and how the topology of the normals is recomputed, e.g. to create sharp edges where face normals change by a large amount or where face group IDs change.  Normals will always be recomputed unless SplitNormal Method is UseExistingTopology.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditNormalsToolProperties::StaticClass()
```
