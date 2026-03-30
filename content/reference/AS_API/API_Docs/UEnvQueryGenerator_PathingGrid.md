# UEnvQueryGenerator_PathingGrid

**Visibility:** public

## Inheritance

UEnvQueryGenerator_SimpleGrid → UEnvQueryGenerator_PathingGrid

## Description

Navigation grid, generates points on navmesh with paths to/from context no further than given limit

## GENERATOR

### NavigationFilter

```
TSubclassOf<UNavigationQueryFilter> NavigationFilter
```

navigation filter to use in pathfinding

### PathToItem

```
FAIDataProviderBoolValue PathToItem
```
### direction

```
pathfinding direction
```

---

## PATHFINDING

### ScanRangeMultiplier

```
FAIDataProviderFloatValue ScanRangeMultiplier
```

multiplier for max distance between point and context

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEnvQueryGenerator_PathingGrid::StaticClass()
```
