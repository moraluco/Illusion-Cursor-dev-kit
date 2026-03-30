# UNavigationQueryFilter

**Visibility:** public

## Inheritance

UObject → UNavigationQueryFilter → UNavFilter_AIControllerDefault → URecastFilter_UseDefaultArea

## Description

Class containing definition of a navigation query filter

## FILTER

### IncludeFlags

```
FNavigationFilterFlags IncludeFlags
```

required flags of navigation nodes

### ExcludeFlags

```
FNavigationFilterFlags ExcludeFlags
```

forbidden flags of navigation nodes

### Areas

```
TArray<FNavigationFilterArea> Areas
```

list of overrides for navigation areas

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNavigationQueryFilter::StaticClass()
```
