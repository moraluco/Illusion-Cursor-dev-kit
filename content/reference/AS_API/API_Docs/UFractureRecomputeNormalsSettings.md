# UFractureRecomputeNormalsSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureRecomputeNormalsSettings

## Description

Settings for visualizing and recomputing normals and tangents

## DISPLAYSETTINGS

### bShowTangents

```
bool bShowTangents
```

Whether to display tangent and bitangent vectors

### Length

```
float32 Length
```

Length of display normal and tangent vectors

### bShowNormals

```
bool bShowNormals
```

Whether to display normal vectors

---

## RECOMPUTESETTINGS

### bRecomputeSharpEdges

```
bool bRecomputeSharpEdges
```

If true, update where edges are 'sharp' by comparing adjacent triangle face normals vs the Sharp Edge Angle Threshold.

### SharpEdgeAngleThreshold

```
float32 SharpEdgeAngleThreshold
```

Threshold on angle of change in face normals across an edge, above which we create a sharp edge if bRecomputeSharpEdges is true

### bOnlyInternalSurfaces

```
bool bOnlyInternalSurfaces
```

Whether to only change internal surface normals / tangents

### bOnlyTangents

```
bool bOnlyTangents
```

Whether to only recompute tangents, and leave normals as they were

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureRecomputeNormalsSettings::StaticClass()
```
