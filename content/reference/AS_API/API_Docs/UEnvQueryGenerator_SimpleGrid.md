# UEnvQueryGenerator_SimpleGrid

**Visibility:** public

## Inheritance

UEnvQueryGenerator_ProjectedPoints → UEnvQueryGenerator_SimpleGrid → UEnvQueryGenerator_PathingGrid

## Description

Simple grid, generates points in 2D square around context

## GENERATOR

### SpaceBetween

```
FAIDataProviderFloatValue SpaceBetween
```
### density

```
generation density
```
### GenerateAround

```
TSubclassOf<UEnvQueryContext> GenerateAround
```

context

### GridSize

```
FAIDataProviderFloatValue GridSize
```

half of square's extent, like a radius

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEnvQueryGenerator_SimpleGrid::StaticClass()
```
