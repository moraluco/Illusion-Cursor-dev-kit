# AAIController

**Visibility:** public

## Inheritance

AController → AAIController → ADetourCrowdAIController → AGridPathAIController

## Description

AIController is the base class of controllers for AI-controlled Pawns.

Controllers are non-physical actors that can be attached to a pawn to control its actions.  AIControllers manage the artificial intelligence for the pawns they control.  In networked games, they only exist on the server.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Gameplay​/Framework​/Controller​/

## AI

### FocalPoint

```
FVector FocalPoint
```

Retrieve the final position that controller should be looking at.

### PerceptionComponent

```
UAIPerceptionComponent PerceptionComponent
```
### ActionsComp

```
UPawnActionsComponent ActionsComp
```
### Blackboard

```
UBlackboardComponent Blackboard
```

blackboard

### DefaultNavigationFilterClass

```
TSubclassOf<UNavigationQueryFilter> DefaultNavigationFilterClass
```
### bSetControlRotationFromPawnOrientation

```
bool bSetControlRotationFromPawnOrientation
```

Copy Pawn rotation to ControlRotation, if there is no focus point.

### bWantsPlayerState

```
bool bWantsPlayerState
```

Specifies if this AI wants its own PlayerState.

### bAllowStrafe

```
bool bAllowStrafe
```

Is strafing allowed during movement?

### FocusActor

```
const AActor FocusActor
```

Get the focused actor.

### BrainComponent

```
UBrainComponent BrainComponent
```

Component responsible for behaviors.

### PathFollowingComponent

```
UPathFollowingComponent PathFollowingComponent
```

Component used for moving along a path.

### bStartAILogicOnPossess

```
bool bStartAILogicOnPossess
```

By default AI's logic does not start when controlled Pawn is possessed. Setting this flag to true will make AI logic start when pawn is possessed

### bStopAILogicOnUnposses

```
bool bStopAILogicOnUnposses
```

By default AI's logic gets stopped when controlled Pawn is unpossessed. Setting this flag to false will make AI logic persist past losing control over a pawn

### bSkipExtraLOSChecks

```
bool bSkipExtraLOSChecks
```

Skip extra line of sight traces to extremities of target being checked.

---

## AI \| NAVIGATION

### MoveStatus

```
const EPathFollowingStatus MoveStatus
```

Returns status of path following

### ImmediateMoveDestination

```
const FVector ImmediateMoveDestination
```

Returns position of current path segment's end.

---

## AI \| PERCEPTION

### AIPerceptionComponent

```
const UAIPerceptionComponent AIPerceptionComponent
```

---

## VARIABLES

### ReceiveMoveCompleted

```
FAIMoveCompletedSignature ReceiveMoveCompleted
```

Blueprint notification that we've completed the current movement request

---

## AI

### SetFocus

```
void SetFocus(AActor NewFocus)
```

Set Focus for actor, will set FocalPoint as a result.

### UseBlackboard

```
bool UseBlackboard(UBlackboardData BlackboardAsset, UBlackboardComponent& BlackboardComponent)
```

Makes AI use the specified Blackboard asset & creates a Blackboard Component if one does not already exist.

**Parameters**

BlackboardAsset
UBlackboardData

The Blackboard asset to use.

BlackboardComponent
UBlackboardComponent&

The Blackboard component that was used or created to work with the passed-in Blackboard Asset.

**Returns**

true if we successfully linked the blackboard asset to the blackboard component.

GetFocalPoint
FVector GetFocalPoint() const

Retrieve the final position that controller should be looking at.

GetFocalPointOnActor
FVector GetFocalPointOnActor(
const 	AActor 	Actor
	) const

Retrieve the focal point this controller should focus to on given actor.

GetFocusActor
AActor GetFocusActor() const

Get the focused actor.

SetFocalPoint
void SetFocalPoint(
FVector 	FP
	)

Set the position that controller should be looking at.

RunBehaviorTree
bool RunBehaviorTree(
UBehaviorTree 	BTAsset
	)

Starts executing behavior tree.

ClearFocus
void ClearFocus()

Clears Focus, will also clear FocalPoint as a result

---

## AI \| NAVIGATION

### HasPartialPath

```
bool HasPartialPath()const
```

Returns true if the current PathFollowingComponent's path is partial (does not reach desired destination).

### GetMoveStatus

```
EPathFollowingStatus GetMoveStatus()const
```

Returns status of path following

### GetImmediateMoveDestination

```
FVector GetImmediateMoveDestination()const
```

Returns position of current path segment's end.

### GetPathFollowingComponent

```
UPathFollowingComponent GetPathFollowingComponent()const
```

### subobject

```
Returns PathFollowingComponent subobject
```

MoveToActor EPathFollowingRequestResult MoveToActor(

AActor 	Goal,

float32 	AcceptanceRadius	 = 	- 1.000000,

### bool 	bStopOnOverlap	 = 	true,

```
bool 	bStopOnOverlap	 = 	true, bool 	bUsePathfinding	 = 	true, bool 	bCanStrafe	 = 	true, TSubclassOf<UNavigationQueryFilter> 	FilterClass	 = 	nullptr, bool 	bAllowPartialPath	 = 	true
```

)

### Makes AI go toward specified Goal actor

```
Makes AI go toward specified Goal actor(destination will be continuously updated), aborts any active path following
```

**Parameters**

AcceptanceRadius
float32

finish move if pawn gets close enough

bStopOnOverlap
bool

add pawn's radius to AcceptanceRadius

bUsePathfinding
bool

use navigation data to calculate path (otherwise it will go in straight line)

bCanStrafe
bool

set focus related flag: bAllowStrafe

FilterClass
TSubclassOf<UNavigationQueryFilter>

navigation filter for pathfinding adjustments. If none specified DefaultNavigationFilterClass will be used

bAllowPartialPath
bool

use incomplete path when goal can't be reached

MoveToLocation
EPathFollowingRequestResult MoveToLocation(

FVector 	Dest,
float32 	AcceptanceRadius	 = 	- 1.000000,
bool 	bStopOnOverlap	 = 	true,
bool 	bUsePathfinding	 = 	true,
bool 	bProjectDestinationToNavigation	 = 	false,
bool 	bCanStrafe	 = 	true,
TSubclassOf<UNavigationQueryFilter> 	FilterClass	 = 	nullptr,
bool 	bAllowPartialPath	 = 	true

)

Makes AI go toward specified Dest location, aborts any active path following

**Parameters**

AcceptanceRadius
float32

finish move if pawn gets close enough

bStopOnOverlap
bool

add pawn's radius to AcceptanceRadius

bUsePathfinding
bool

use navigation data to calculate path (otherwise it will go in straight line)

bProjectDestinationToNavigation
bool

project location on navigation data before using it

bCanStrafe
bool

set focus related flag: bAllowStrafe

FilterClass
TSubclassOf<UNavigationQueryFilter>

navigation filter for pathfinding adjustments. If none specified DefaultNavigationFilterClass will be used

bAllowPartialPath
bool

use incomplete path when goal can't be reached

SetPathFollowingComponent
void SetPathFollowingComponent(
UPathFollowingComponent 	NewPFComponent
	)

Note that his function does not do any pathfollowing state transfer.  Intended to be called as part of initialization/setup process

SetMoveBlockDetection
void SetMoveBlockDetection(
bool 	bEnable
	)

Updates state of movement block detection.

---

## AI \| PERCEPTION

### GetAIPerceptionComponent

```
UAIPerceptionComponent GetAIPerceptionComponent()
```

---

## AI \| TASKS

### UnclaimTaskResource

```
void UnclaimTaskResource(TSubclassOf<UGameplayTaskResource> ResourceClass)
```

ClaimTaskResource

### void ClaimTaskResource

```
void ClaimTaskResource(TSubclassOf<UGameplayTaskResource> ResourceClass)
```

---

## FUNCTIONS

### GetbSkipExtraLOSChecks

```
bool GetbSkipExtraLOSChecks()const
```

GetbStartAILogicOnPossess

### bool GetbStartAILogicOnPossess

```
bool GetbStartAILogicOnPossess()const SetbStartAILogicOnPossess
```

void SetbStartAILogicOnPossess(

### bool 	Value

```
bool 	Value 	)
```

GetbStopAILogicOnUnposses

### bool GetbStopAILogicOnUnposses

```
bool GetbStopAILogicOnUnposses()const SetbStopAILogicOnUnposses
```

void SetbStopAILogicOnUnposses(

### bool 	Value

```
bool 	Value 	)
```

OnUsingBlackBoard

### void OnUsingBlackBoard

```
void OnUsingBlackBoard(UBlackboardComponent BlackboardComp, UBlackboardData BlackboardAsset)
```

SetbSkipExtraLOSChecks

### void SetbSkipExtraLOSChecks

```
void SetbSkipExtraLOSChecks(bool Value)
```

GetbAllowStrafe

### bool GetbAllowStrafe

```
bool GetbAllowStrafe()const SetbAllowStrafe
```

void SetbAllowStrafe(

### bool 	Value

```
bool 	Value 	)
```

GetbWantsPlayerState

### bool GetbWantsPlayerState

```
bool GetbWantsPlayerState()const SetbWantsPlayerState
```

void SetbWantsPlayerState(

### bool 	Value

```
bool 	Value 	)
```

GetbSetControlRotationFromPawnOrientation

### bool GetbSetControlRotationFromPawnOrientation

```
bool GetbSetControlRotationFromPawnOrientation()const SetbSetControlRotationFromPawnOrientation
```

void SetbSetControlRotationFromPawnOrientation(

### Value

```
bool Value
```

)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AAIController AAIController::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AAIController::StaticClass

```
static UClass AAIController::StaticClass()
```
