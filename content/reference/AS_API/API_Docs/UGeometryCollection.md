# UGeometryCollection

**Visibility:** public

## Inheritance

UObject → UGeometryCollection

## Description

UGeometryCollectionObject (UObject)

UObject wrapper for the FGeometryCollection

## CLUSTERING

### ClusterGroupIndex

```
int ClusterGroupIndex
```

Maximum level for cluster breaks.

### MaxClusterLevel

```
int MaxClusterLevel
```

Maximum level for cluster breaks.

### DamageThreshold

```
TArray<float32> DamageThreshold
```

Damage threshold for clusters at different levels.

### ClusterConnectionType

```
EClusterConnectionTypeEnum ClusterConnectionType
```
### EnableClustering

```
bool EnableClustering
```

---

## COLLISIONS

### bMassAsDensity

```
bool bMassAsDensity
```

Mass As Density, units are in kg/m^3

### Mass

```
float32 Mass
```

Total Mass of Collection. If density, units are in kg/m^3

### SizeSpecificData

```
TArray<FGeometryCollectionSizeSpecificData> SizeSpecificData
```

Size Specfic Data reflects the default geometry to bind to rigid bodies smaller than the max size volume. This can also be empty to reflect no collision geometry for the collection.

### MinimumMassClamp

```
float32 MinimumMassClamp
```

Smallest allowable mass (def:0.1)

---

## EMBEDDEDGEOMETRY

### EmbeddedGeometryExemplar

```
TArray<FGeometryCollectionEmbeddedExemplar> EmbeddedGeometryExemplar
```

References for embedded geometry generation

---

## FRACTURE

### EnableRemovePiecesOnFracture

```
bool EnableRemovePiecesOnFracture
```

Enable remove pieces on fracture

### RemoveOnFractureMaterials

```
TArray<TObjectPtr<UMaterialInterface>> RemoveOnFractureMaterials
```

Materials relating to remove on fracture

---

## GEOMETRYCOLLECTION

### ThumbnailInfo

```
UThumbnailInfo ThumbnailInfo
```

Information for thumbnail rendering

---

## GEOMETRYSOURCE

### GeometrySource

```
TArray<FGeometryCollectionSource> GeometrySource
```

---

## MATERIALS

### Materials

```
TArray<TObjectPtr<UMaterialInterface>> Materials
```

---

## NANITE

### bStripOnCook

```
bool bStripOnCook
```

Strip unnecessary data from the Geometry Collection to keep the memory footprint as small as possible.

### EnableNanite

```
bool EnableNanite
```

Enable support for Nanite.

---

## REMOVAL

### MaximumSleepTime

```
FVector2D MaximumSleepTime
```

How long may the particle sleep before initiating removal (in seconds).

### bRemoveOnMaxSleep

```
bool bRemoveOnMaxSleep
```

Remove particle from simulation and dissolve rendered geometry once sleep threshold has been exceeded.

### RemovalDuration

```
FVector2D RemovalDuration
```

How long does the removal process take (in seconds).

---

## RENDERING

### bUseFullPrecisionUVs

```
bool bUseFullPrecisionUVs
```

Whether to use full precision UVs when rendering this geometry. (Does not apply to Nanite rendering)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGeometryCollection::StaticClass()
```
