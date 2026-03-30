# UConvertToPolygonsToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UConvertToPolygonsToolProperties → DISPLAY

## Description

bShowGroupColors bool bShowGroupColors

Display each group with a different auto-generated color

## FILTERING

### MinGroupSize

```
int MinGroupSize
```
### filtering

```
group filtering
```

---

## OUTPUT

### bCalculateNormals

```
bool bCalculateNormals
```

If true, normals are recomputed per-group, with hard edges at group boundaries

---

## POLYGROUPS

### ConversionMode

```
EConvertToPolygonsMode ConversionMode
```

Strategy to use to group triangles

### NormalWeighting

```
float32 NormalWeighting
```

This parameter modulates the effect of normal weighting during region-growing

### bSplitExisting

```
bool bSplitExisting
```

If enabled, then furthest-point sampling happens with respect to existing Polygroups, ie the existing groups are further subdivided

### NumPoints

```
int NumPoints
```

Furthest-Point Sample count, approximately this number of polygroups will be generated

### AngleTolerance

```
float32 AngleTolerance
```

Tolerance for planarity

### bNormalWeighted

```
bool bNormalWeighted
```

If true, region-growing in Sampling modes will be controlled by face normals, resulting in regions with borders that are more-aligned with curvature ridges

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UConvertToPolygonsToolProperties::StaticClass()
```
