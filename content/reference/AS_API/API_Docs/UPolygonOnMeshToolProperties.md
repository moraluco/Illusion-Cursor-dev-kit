# UPolygonOnMeshToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UPolygonOnMeshToolProperties

## Description

Standard properties of the polygon-on-mesh operations

## OPERATION

### bTryToFixCracks

```
bool bTryToFixCracks
```

Automatically attempt to fill any open boundaries left by CSG (e.g. due to numerical errors)

### bCutWithBoolean

```
bool bCutWithBoolean
```

Use a volumetric boolean rather than curve projection; cuts through all layers and across edges

### Operation

```
EEmbeddedPolygonOpMethod Operation
```

What operation to apply using the Polygon

---

## SHAPE

### Shape

```
EPolygonType Shape
```

Polygon Shape to use in this Operation

### PolygonScale

```
float32 PolygonScale
```

Scale of polygon to embed

### Width

```
float32 Width
```

Width of Polygon

### Height

```
float32 Height
```

Height of Polygon

### CornerRatio

```
float32 CornerRatio
```

Corner Ratio of RoundRect Polygon

### Subdivisions

```
int Subdivisions
```

Number of sides in Circle or RoundRect Corner

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPolygonOnMeshToolProperties::StaticClass()
```
