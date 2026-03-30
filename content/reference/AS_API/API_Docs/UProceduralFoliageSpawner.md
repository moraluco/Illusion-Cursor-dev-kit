# UProceduralFoliageSpawner

**Visibility:** public

## Inheritance

UObject → UProceduralFoliageSpawner → PROCEDURALFOLIAGESIMULATION → TileSize

## Description

float32 TileSize

Length of the tile (in cm) along one axis. The total area of the tile will be TileSize*TileSize.

NumUniqueTiles int NumUniqueTiles

The number of unique tiles to generate. The final simulation is a procedurally determined combination of the various unique tiles.

MinimumQuadTreeSize float32 MinimumQuadTreeSize

Minimum size of the quad tree used during the simulation. Reduce if too many instances are in splittable leaf quads (as warned in the log).

FoliageTypes TArray<FFoliageTypeObject> FoliageTypes

The types of foliage to procedurally spawn.

RandomSeed int RandomSeed

The seed used for generating the randomness of the simulation.

## PROCEDURALFOLIAGESIMULATION

### Simulate

```
void Simulate(int NumSteps = - 1)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UProceduralFoliageSpawner::StaticClass()
```
