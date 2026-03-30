# UNavigationSystemV1

**Visibility:** public

## Inheritance

UNavigationSystemBase → UNavigationSystemV1 → AGENTS → SupportedAgents

## Description

TArray<FNavDataConfig> SupportedAgents

List of agents types supported by this navigation system

SupportedAgentsMask FNavAgentSelector SupportedAgentsMask

NavigationSystem's properties in Project Settings define all possible supported agents, but a specific navigation system can choose to support only a subset of agents. Set via NavigationSystemConfig

## NAVIGATION

### DefaultAgentName

```
FName DefaultAgentName
```

If not None indicates which of navigation datas and supported agents are going to be used as the default ones. If navigation agent of this type does not exist or is not enabled then the first available nav data will be used as the default one

### CrowdManagerClass

```
TSoftClassPtr<UCrowdManagerBase> CrowdManagerClass
```
### ENFORCING

```
NAVIGATION ENFORCING
```
### ActiveTilesUpdateInterval

```
float32 ActiveTilesUpdateInterval
```

Minimal time, in seconds, between active tiles set update

---

## NAVIGATIONSYSTEM

### DirtyAreaWarningSizeThreshold

```
float32 DirtyAreaWarningSizeThreshold
```

-1 by default, if set to a positive value dirty areas with any dimensions in 2d over the threshold created at runtime will be logged

### DataGatheringMode

```
ENavDataGatheringModeConfig DataGatheringMode
```

Sets how navigation data should be gathered when building collision information

### GatheringNavModifiersWarningLimitTime

```
float32 GatheringNavModifiersWarningLimitTime
```

-1.0f by default, if set to a positive value, all calls to GetNavigationData will be timed and compared to it.  Over the limit calls will be logged as warnings.  In seconds. Non-shipping build only.

### DirtyAreasUpdateFreq

```
float32 DirtyAreasUpdateFreq
```

---

## VARIABLES

### OnNavigationGenerationFinishedDelegate

```
FOnNavDataGenericEvent OnNavigationGenerationFinishedDelegate
```

---

## AI \| NAVIGATION

### ProjectPointToNavigation

```
static bool UNavigationSystemV1::ProjectPointToNavigation(
```

	FVector 	Point,

### FVector& 	ProjectedLocation,

```
FVector& ProjectedLocation, ANavigationData NavData, TSubclassOf<UNavigationQueryFilter> FilterClass, const FVector QueryExtent = FVector()
```

)

### Project a point onto the NavigationData

```
Project a point onto the NavigationData
```

OnNavigationBoundsUpdated

### void OnNavigationBoundsUpdated

```
void OnNavigationBoundsUpdated(ANavMeshBoundsVolume NavVolume)
```

@todo document

### RegisterNavigationInvoker

```
void RegisterNavigationInvoker(AActor Invoker, float32 TileGenerationRadius = 3000.000000, float32 TileRemovalRadius = 5000.000000)
```

Registers given actor as a "navigation enforcer" which means navigation system will make sure navigation is being generated in specified radius around it.  Note:: you need NavigationSystem's GenerateNavigationOnlyAroundNavigationInvokers to be set to true to take advantage of this feature

### ResetMaxSimultaneousTileGenerationJobsCount

```
void ResetMaxSimultaneousTileGenerationJobsCount()
```

Brings limit of simultaneous navmesh tile generation jobs back to Project Setting's default value

### ReplaceAreaInOctreeData

```
bool ReplaceAreaInOctreeData(const UObject Object, TSubclassOf<UNavArea> OldArea, TSubclassOf<UNavArea> NewArea)
```

SetMaxSimultaneousTileGenerationJobsCount

### void SetMaxSimultaneousTileGenerationJobsCount

```
void SetMaxSimultaneousTileGenerationJobsCount(int MaxNumberOfJobs)
```

will limit the number of simultaneously running navmesh tile generation jobs to specified number.

**Parameters**

MaxNumberOfJobs
int

gets trimmed to be at least 1. You cannot use this function to pause navmesh generation

UnregisterNavigationInvoker
void UnregisterNavigationInvoker(
AActor 	Invoker
	)

Removes given actor from the list of active navigation enforcers.  See: RegisterNavigationInvoker for more details

FindPathToActorSynchronously
static UNavigationPath UNavigationSystemV1::FindPathToActorSynchronously(

FVector 	PathStart,
AActor 	GoalActor,
float32 	TetherDistance	 = 	50.000000,
AActor 	PathfindingContext	 = 	nullptr,
TSubclassOf<UNavigationQueryFilter> 	FilterClass	 = 	nullptr

)

Finds path instantly, in a FindPath Synchronously. Main advantage over FindPathToLocationSynchronously is that the resulting path will automatically get updated if goal actor moves more than TetherDistance away from last path node

**Parameters**

PathfindingContext
AActor

could be one of following: NavigationData (like Navmesh actor), Pawn or Controller. This parameter determines parameters of specific pathfinding query

IsNavigationBeingBuilt
static bool UNavigationSystemV1::IsNavigationBeingBuilt()
GetPathLength
static ENavigationQueryResult UNavigationSystemV1::GetPathLength(

FVector 	PathStart,
FVector 	PathEnd,
float32& 	PathLength,
ANavigationData 	NavData	 = 	nullptr,
TSubclassOf<UNavigationQueryFilter> 	FilterClass	 = 	nullptr

)

Potentially expensive. Use with caution

IsNavigationBeingBuiltOrLocked
static bool UNavigationSystemV1::IsNavigationBeingBuiltOrLocked()
GetRandomReachablePointInRadius
static bool UNavigationSystemV1::GetRandomReachablePointInRadius(

FVector 	Origin,
FVector& 	RandomLocation,
float32 	Radius,
ANavigationData 	NavData	 = 	nullptr,
TSubclassOf<UNavigationQueryFilter> 	FilterClass	 = 	nullptr

)

Generates a random location reachable from given Origin location.

**Returns**

Return Value represents if the call was successful

NavigationRaycast
static bool UNavigationSystemV1::NavigationRaycast(

FVector 	RayStart,
FVector 	RayEnd,
FVector& 	HitLocation,
TSubclassOf<UNavigationQueryFilter> 	FilterClass	 = 	nullptr,
AController 	Querier	 = 	nullptr

)

Performs navigation raycast on NavigationData appropriate for given Querier.

**Parameters**

HitLocation
FVector&

if line was obstructed this will be set to hit location. Otherwise it contains SegmentEnd

Querier
AController

if not passed default navigation data will be used

**Returns**

true if line from RayStart to RayEnd was obstructed. Also, true when no navigation data present

GetRandomPointInNavigableRadius
static bool UNavigationSystemV1::GetRandomPointInNavigableRadius(

FVector 	Origin,
FVector& 	RandomLocation,
float32 	Radius,
ANavigationData 	NavData	 = 	nullptr,
TSubclassOf<UNavigationQueryFilter> 	FilterClass	 = 	nullptr

)
GetRandomLocationInNavigableRadius
static bool UNavigationSystemV1::GetRandomLocationInNavigableRadius(

FVector 	Origin,
FVector& 	RandomLocation,
float32 	Radius,
ANavigationData 	NavData	 = 	nullptr,
TSubclassOf<UNavigationQueryFilter> 	FilterClass	 = 	nullptr

)

Generates a random location in navigable space within given radius of Origin.

**Returns**

Return Value represents if the call was successful

FindPathToLocationSynchronously
static UNavigationPath UNavigationSystemV1::FindPathToLocationSynchronously(

FVector 	PathStart,
FVector 	PathEnd,
AActor 	PathfindingContext	 = 	nullptr,
TSubclassOf<UNavigationQueryFilter> 	FilterClass	 = 	nullptr

)

Finds path instantly, in a FindPath Synchronously.

**Parameters**

PathfindingContext
AActor

could be one of following: NavigationData (like Navmesh actor), Pawn or Controller. This parameter determines parameters of specific pathfinding query

GetNavigationSystem
static UNavigationSystemV1 UNavigationSystemV1::GetNavigationSystem()

Blueprint functions

GetPathCost
static ENavigationQueryResult UNavigationSystemV1::GetPathCost(

FVector 	PathStart,
FVector 	PathEnd,
float32& 	PathCost,
ANavigationData 	NavData	 = 	nullptr,
TSubclassOf<UNavigationQueryFilter> 	FilterClass	 = 	nullptr

)

Potentially expensive. Use with caution. Consider using UPathFollowingComponent::GetRemainingPathCost instead

---

## AI \| NAVIGATION \| GENERATION

### SetGeometryGatheringMode

```
void SetGeometryGatheringMode(ENavDataGatheringModeConfig NewMode)
```

---

## FUNCTIONS

### SetbAutoCreateNavigationData

```
void SetbAutoCreateNavigationData(bool Value)
```

SetbTickWhilePaused

### void SetbTickWhilePaused

```
void SetbTickWhilePaused(bool Value)
```

SetbAllowClientSideNavigation

### void SetbAllowClientSideNavigation

```
void SetbAllowClientSideNavigation(bool Value)
```

SetbShouldDiscardSubLevelNavData

### void SetbShouldDiscardSubLevelNavData

```
void SetbShouldDiscardSubLevelNavData(bool Value)
```

SetbSpawnNavDataInNavBoundsLevel

### void SetbSpawnNavDataInNavBoundsLevel

```
void SetbSpawnNavDataInNavBoundsLevel(bool Value)
```

SetbInitialBuildingLocked

### void SetbInitialBuildingLocked

```
void SetbInitialBuildingLocked(bool Value)
```

SetbSkipAgentHeightCheckWhenPickingNavData

### void SetbSkipAgentHeightCheckWhenPickingNavData

```
void SetbSkipAgentHeightCheckWhenPickingNavData(bool Value)
```

SetbGenerateNavigationOnlyAroundNavigationInvokers

### void SetbGenerateNavigationOnlyAroundNavigationInvokers

```
void SetbGenerateNavigationOnlyAroundNavigationInvokers(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNavigationSystemV1::StaticClass()
```
