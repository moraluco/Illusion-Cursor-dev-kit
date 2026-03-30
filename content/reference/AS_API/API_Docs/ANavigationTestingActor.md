# ANavigationTestingActor

**Visibility:** public

## Inheritance

AActor → ANavigationTestingActor → AGENT → NavAgentProps

## Description

FNavAgentProperties NavAgentProps

@todo document

QueryingExtent FVector QueryingExtent

## AGENTSTATUS

### ProjectedLocation

```
FVector ProjectedLocation
```

bProjectedLocationValid const bool bProjectedLocationValid

---

## DEBUG

### TextCanvasOffset

```
FVector2D TextCanvasOffset
```

text canvas offset to apply

### CostDisplayMode

```
ENavCostDisplay CostDisplayMode
```

determines which cost will be shown

### ShowStepIndex

```
int ShowStepIndex
```

---

## NAVIGATION

### InvokerComponent

```
UNavigationInvokerComponent InvokerComponent PATHFINDING OffsetFromCornersDistance float32 OffsetFromCornersDistance MinimumCostLimit float32 MinimumCostLimit
```

minimum cost limit clamping value (in cost units) used to allow large deviation in short paths

### OtherActor

```
ANavigationTestingActor OtherActor
```
### FilterClass

```
TSubclassOf<UNavigationQueryFilter> FilterClass
```

"None" will result in default filter being used

### CostLimitFactor

```
float32 CostLimitFactor
```

this multiplier is used to compute a max node cost allowed to the open list (cost limit = CostLimitFacotr*InitialHeuristicEstimate)

---

## PATHFINDINGSTATUS

### PathfindingTime

```
float32 PathfindingTime
```

Time in micro seconds

### PathfindingSteps

```
int PathfindingSteps
```
### PathCost

```
float32 PathCost
```

bPathExist const bool bPathExist bPathIsPartial const bool bPathIsPartial bPathSearchOutOfNodes const bool bPathSearchOutOfNodes

---

## FUNCTIONS

### SetbShowBestPath

```
void SetbShowBestPath(bool Value)
```

GetbProjectedLocationValid

### bool GetbProjectedLocationValid

```
bool GetbProjectedLocationValid()const SetbSearchStart
```

void SetbSearchStart(

### bool 	Value

```
bool 	Value 	)
```

SetbBacktracking

### void SetbBacktracking

```
void SetbBacktracking(bool Value)
```

SetbUseHierarchicalPathfinding

### void SetbUseHierarchicalPathfinding

```
void SetbUseHierarchicalPathfinding(bool Value)
```

SetbGatherDetailedInfo

### void SetbGatherDetailedInfo

```
void SetbGatherDetailedInfo(bool Value)
```

SetbDrawDistanceToWall

### void SetbDrawDistanceToWall

```
void SetbDrawDistanceToWall(bool Value)
```

SetbShowNodePool

### void SetbShowNodePool

```
void SetbShowNodePool(bool Value)
```

SetbActAsNavigationInvoker

### void SetbActAsNavigationInvoker

```
void SetbActAsNavigationInvoker(bool Value)
```

SetbShowDiffWithPreviousStep

### void SetbShowDiffWithPreviousStep

```
void SetbShowDiffWithPreviousStep(bool Value)
```

SetbShouldBeVisibleInGame

### void SetbShouldBeVisibleInGame

```
void SetbShouldBeVisibleInGame(bool Value)
```

GetbPathExist

### bool GetbPathExist

```
bool GetbPathExist()const GetbPathIsPartial
```

bool GetbPathIsPartial() const

### GetbPathSearchOutOfNodes

```
bool GetbPathSearchOutOfNodes()const
```

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static ANavigationTestingActor ANavigationTestingActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass ANavigationTestingActor::StaticClass()
```
