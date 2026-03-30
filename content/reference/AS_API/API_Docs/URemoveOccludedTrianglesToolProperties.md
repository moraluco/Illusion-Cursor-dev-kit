# URemoveOccludedTrianglesToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → URemoveOccludedTrianglesToolProperties

## Description

Standard properties

## ACTION

### Action

```
EOccludedAction Action
```

What action to perform on occluded triangles

---

## OCCLUSIONCALCULATION

### WindingIsoValue

```
float WindingIsoValue
```

The winding isovalue for GeneralizedWindingNumber mode

### AddRandomRays

```
int AddRandomRays
```

For raycast-based occlusion tests, optionally add random ray direction to increase the accuracy of the visibility sampling

### AddTriangleSamples

```
int AddTriangleSamples
```

Optionally add random samples to each triangle (in addition to those from TriangleSampling) to increase the accuracy of the visibility sampling

### OcclusionTestMethod

```
EOcclusionCalculationUIMode OcclusionTestMethod
```

The method for deciding whether a triangle is occluded

### ShrinkRemoval

```
int ShrinkRemoval
```

Shrink (erode) the boundary of the set of triangles to remove.

### TriangleSampling

```
EOcclusionTriangleSamplingUIMode TriangleSampling
```

Where to sample triangles to test occlusion

### bOnlySelfOcclude

```
bool bOnlySelfOcclude
```

If false, when multiple meshes are selected the meshes can occlude each other.  When true, we process each selected mesh independently and only consider self-occlusions.

---

## REMOVEISLANDS

### MinAreaIsland

```
float MinAreaIsland MinTriCountIsland int MinTriCountIsland STATIC FUNCTIONS StaticClass static UClass URemoveOccludedTrianglesToolProperties::StaticClass()
```
