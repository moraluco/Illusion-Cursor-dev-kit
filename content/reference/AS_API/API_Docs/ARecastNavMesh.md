# ARecastNavMesh

**Visibility:** public

## Inheritance

ANavigationData → ARecastNavMesh

## Description

LWC_TODO_AI: Many of the virtual methods and members should be changed from float to FVector::FReal. Not for 5.0!

## DISPLAY

### TileGenerationDebug

```
FRecastNavMeshTileGenerationDebug TileGenerationDebug
```
### DrawOffset

```
float32 DrawOffset
```

vertical offset added to navmesh's debug representation for better readability

---

## GENERATION

### TileSizeUU

```
float32 TileSizeUU
```

size of single tile, expressed in uu

### CellSize

```
float32 CellSize
```

horizontal size of voxelization cell

### TilePoolSize

```
int TilePoolSize
```

maximum number of tiles NavMesh can hold

### CellHeight

```
float32 CellHeight
```

vertical size of voxelization cell

### AgentRadius

```
float32 AgentRadius
```

Radius of smallest agent to traverse this navmesh

### AgentHeight

```
float32 AgentHeight
```

Size of the tallest agent that will path with this navmesh.

### AgentMaxSlope

```
float32 AgentMaxSlope
```

The maximum slope (angle) that the agent can move on.

### AgentMaxStepHeight

```
float32 AgentMaxStepHeight
```

Largest vertical step the agent can perform

### MinRegionArea

```
float32 MinRegionArea
```

The minimum dimension of area. Areas smaller than this will be discarded

### MergeRegionSize

```
float32 MergeRegionSize
```

The size limit of regions to be merged with bigger regions (watershed partitioning only)

### MaxSimplificationError

```
float32 MaxSimplificationError
```

How much navigable shapes can get simplified

### freedom

```
the higher the value the more freedom
```
### MaxSimultaneousTileGenerationJobsCount

```
int MaxSimultaneousTileGenerationJobsCount
```

Sets the limit for number of asynchronous tile generators running at one time, also used for some synchronous tasks

### TileNumberHardLimit

```
int TileNumberHardLimit
```

Absolute hard limit to number of navmesh tiles. Be very, very careful while modifying it while having big maps with navmesh. A single, empty tile takes 176 bytes and empty tiles are allocated up front (subject to change, but that's where it's at now) @note TileNumberHardLimit is always rounded up to the closest power of 2

### NavMeshOriginOffset

```
FVector NavMeshOriginOffset
```

Use this if you don't want your tiles to start at (0,0,0)

### RegionPartitioning

```
ERecastPartitioning RegionPartitioning
```

partitioning method for creating navmesh polys

### LayerPartitioning

```
ERecastPartitioning LayerPartitioning
```

partitioning method for creating tile layers

### RegionChunkSplits

```
int RegionChunkSplits
```

number of chunk splits (along single axis) used for region's partitioning: ChunkyMonotone

### LayerChunkSplits

```
int LayerChunkSplits
```

number of chunk splits (along single axis) used for layer's partitioning: ChunkyMonotone

---

## QUERY

### VerticalDeviationFromGroundCompensation

```
float32 VerticalDeviationFromGroundCompensation
```

Value added to each search height to compensate for error between navmesh polys and walkable geometry

### HeuristicScale

```
float32 HeuristicScale
```

Euclidean distance heuristic scale used while pathfinding

---

## NAVMESH

### ReplaceAreaInTileBounds

```
bool ReplaceAreaInTileBounds(FBox Bounds, TSubclassOf<UNavArea> OldArea, TSubclassOf<UNavArea> NewArea, bool ReplaceLinks = true)
```

**Returns**

true if any polygon/link has been touched

---

## FUNCTIONS

### SetbDrawPolyEdges

```
void SetbDrawPolyEdges(bool Value)
```

SetbDrawFilledPolys

### void SetbDrawFilledPolys

```
void SetbDrawFilledPolys(bool Value)
```

SetbDrawNavMeshEdges

### void SetbDrawNavMeshEdges

```
void SetbDrawNavMeshEdges(bool Value)
```

SetbDrawTileBounds

### void SetbDrawTileBounds

```
void SetbDrawTileBounds(bool Value)
```

SetbDrawPathCollidingGeometry

### void SetbDrawPathCollidingGeometry

```
void SetbDrawPathCollidingGeometry(bool Value)
```

SetbDrawTriangleEdges

### void SetbDrawTriangleEdges

```
void SetbDrawTriangleEdges(bool Value)
```

SetbDrawTileLabels

### void SetbDrawTileLabels

```
void SetbDrawTileLabels(bool Value)
```

SetbDrawPolygonLabels

### void SetbDrawPolygonLabels

```
void SetbDrawPolygonLabels(bool Value)
```

SetbDrawDefaultPolygonCost

### void SetbDrawDefaultPolygonCost

```
void SetbDrawDefaultPolygonCost(bool Value)
```

SetbDrawPolygonFlags

### void SetbDrawPolygonFlags

```
void SetbDrawPolygonFlags(bool Value)
```

SetbDrawLabelsOnPathNodes

### void SetbDrawLabelsOnPathNodes

```
void SetbDrawLabelsOnPathNodes(bool Value)
```

SetbDrawNavLinks

### void SetbDrawNavLinks

```
void SetbDrawNavLinks(bool Value)
```

SetbDrawFailedNavLinks

### void SetbDrawFailedNavLinks

```
void SetbDrawFailedNavLinks(bool Value)
```

SetbDrawClusters

### void SetbDrawClusters

```
void SetbDrawClusters(bool Value)
```

SetbDrawOctree

### void SetbDrawOctree

```
void SetbDrawOctree(bool Value)
```

SetbDrawOctreeDetails

### void SetbDrawOctreeDetails

```
void SetbDrawOctreeDetails(bool Value)
```

SetbDrawMarkedForbiddenPolys

### void SetbDrawMarkedForbiddenPolys

```
void SetbDrawMarkedForbiddenPolys(bool Value)
```

SetbFixedTilePoolSize

### void SetbFixedTilePoolSize

```
void SetbFixedTilePoolSize(bool Value)
```

SetbSortNavigationAreasByCost

### void SetbSortNavigationAreasByCost

```
void SetbSortNavigationAreasByCost(bool Value)
```

SetbIsWorldPartitioned

### void SetbIsWorldPartitioned

```
void SetbIsWorldPartitioned(bool Value)
```

SetbPerformVoxelFiltering

### void SetbPerformVoxelFiltering

```
void SetbPerformVoxelFiltering(bool Value)
```

SetbMarkLowHeightAreas

### void SetbMarkLowHeightAreas

```
void SetbMarkLowHeightAreas(bool Value)
```

SetbUseExtraTopCellWhenMarkingAreas

### void SetbUseExtraTopCellWhenMarkingAreas

```
void SetbUseExtraTopCellWhenMarkingAreas(bool Value)
```

SetbFilterLowSpanSequences

### void SetbFilterLowSpanSequences

```
void SetbFilterLowSpanSequences(bool Value)
```

SetbFilterLowSpanFromTileCache

### void SetbFilterLowSpanFromTileCache

```
void SetbFilterLowSpanFromTileCache(bool Value)
```

SetbDoFullyAsyncNavDataGathering

### void SetbDoFullyAsyncNavDataGathering

```
void SetbDoFullyAsyncNavDataGathering(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ARecastNavMesh ARecastNavMesh::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ARecastNavMesh::StaticClass

```
static UClass ARecastNavMesh::StaticClass()
```
