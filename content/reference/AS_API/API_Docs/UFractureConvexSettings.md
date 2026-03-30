# UFractureConvexSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureConvexSettings

## Description

Settings controlling how convex hulls are generated for geometry collections

## AUTOMATIC

### CanExceedFraction

```
float CanExceedFraction
```

Fraction (of geometry volume) by which a cluster's convex hull volume can exceed the actual geometry volume before instead using the hulls of the children.  0 means the convex volume cannot exceed the geometry volume; 1 means the convex volume is allowed to be 100% larger (2x) the geometry volume.

### SimplificationDistanceThreshold

```
float SimplificationDistanceThreshold
```

We simplify the convex shape to keep points spaced at least this far apart (except to keep the hull from collapsing to zero volume)

### FractionAllowRemove

```
float FractionAllowRemove
```

Fraction of the convex hulls for a transform that we can remove before instead using the hulls of the children

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureConvexSettings::StaticClass()
```
