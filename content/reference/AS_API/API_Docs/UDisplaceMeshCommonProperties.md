# UDisplaceMeshCommonProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UDisplaceMeshCommonProperties

## Description

The basic set of properties shared by (more or less) all DisplacementTypes.

## OPTIONS

### Subdivisions

```
int Subdivisions
```

Number of times to subdivide the mesh before displacing it.

### DisplaceIntensity

```
float32 DisplaceIntensity
```
### intensity

```
Displacement intensity
```
### RandomSeed

```
int RandomSeed
```

Seed for randomization

### SubdivisionType

```
EDisplaceMeshToolSubdivisionType SubdivisionType
```

Type of the  mesh subdivision.

### DisplacementType

```
EDisplaceMeshToolDisplaceType DisplacementType
```
### type

```
Displacement type
```
### WeightMap

```
FName WeightMap
```

Select vertex weight map. If configured, the weight map value will be sampled to modulate displacement intensity.

### bInvertWeightMap

```
bool bInvertWeightMap bShowWireframe bool bShowWireframe bDisableSizeWarning bool bDisableSizeWarning STATIC FUNCTIONS StaticClass static UClass UDisplaceMeshCommonProperties::StaticClass()
```
