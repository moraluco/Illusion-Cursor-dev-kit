# UNavLocalGridManager

**Visibility:** public

## Inheritance

UObject → UNavLocalGridManager

## Description

Manager for local navigation grids

Builds non overlapping grid from multiple sources, that can be used later for pathfinding.  Check also: UGridPathFollowingComponent, FNavLocalGridData

## AI \| NAVIGATION

AddLocalNavigationGridForCapsule

### static int UNavLocalGridManager::AddLocalNavigationGridForCapsule

```
static int UNavLocalGridManager::AddLocalNavigationGridForCapsule(
```

FVector 	Location,

float32 	CapsuleRadius,

float32 	CapsuleHalfHeight,

int 	Radius2D	 = 	5,

float32 	Height	 = 	100.000000,

bool 	bRebuildGrids	 = 	true

)

### AddLocalNavigationGridForPoint

```
static int UNavLocalGridManager::AddLocalNavigationGridForPoint(
```

FVector 	Location,

int 	Radius2D	 = 	5,

float32 	Height	 = 	100.000000,

bool 	bRebuildGrids	 = 	true

)

### point

```
creates new grid data for single point
```

AddLocalNavigationGridForPoints static int UNavLocalGridManager::AddLocalNavigationGridForPoints(

TArray<FVector> 	Locations,

int 	Radius2D	 = 	5,

float32 	Height	 = 	100.000000,

bool 	bRebuildGrids	 = 	true

)

### creates single grid data for set of points

```
creates single grid data for set of points
```

FindLocalNavigationGridPath

### static bool UNavLocalGridManager::FindLocalNavigationGridPath

```
static bool UNavLocalGridManager::FindLocalNavigationGridPath(FVector Start, FVector End, TArray<FVector>& PathPoints)
```

RemoveLocalNavigationGrid

### static void UNavLocalGridManager::RemoveLocalNavigationGrid

```
static void UNavLocalGridManager::RemoveLocalNavigationGrid(int GridId, bool bRebuildGrids = true)
```

SetLocalNavigationGridDensity

### static bool UNavLocalGridManager::SetLocalNavigationGridDensity

```
static bool UNavLocalGridManager::SetLocalNavigationGridDensity(float32 CellSize)
```

AddLocalNavigationGridForBox

### static int UNavLocalGridManager::AddLocalNavigationGridForBox

```
static int UNavLocalGridManager::AddLocalNavigationGridForBox(
```

FVector 	Location,

### FVector 	Extent	 = 	FVector

```
FVector Extent = FVector(1.000000, 1.000000, 1.000000), FRotator Rotation = FRotator(),
```

int 	Radius2D	 = 	5,

### float32 	Height	 = 	100.000000,

```
float32 	Height	 = 	100.000000, bool 	bRebuildGrids	 = 	true
```

)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNavLocalGridManager::StaticClass()
```
