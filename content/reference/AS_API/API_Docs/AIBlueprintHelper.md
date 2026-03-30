# AIBlueprintHelper

## Inheritance

AIBlueprintHelper → AI → IsValidAILocation

## Description

static bool AIBlueprintHelper::IsValidAILocation( FVector 	Location 	) GetBlackboard static UBlackboardComponent AIBlueprintHelper::GetBlackboard( AActor 	Target 	) GetCurrentPath static UNavigationPath AIBlueprintHelper::GetCurrentPath( AController 	Controller 	)

Returns a NEW UOBJECT that is a COPY of navigation path given controller is currently using.  The result being a copy means you won't be able to influence agent's pathfollowing by manipulating received path.  Please use GetCurrentPathPoints if you only need the array of path points.

GetCurrentPathIndex static int AIBlueprintHelper::GetCurrentPathIndex( const 	AController 	Controller 	)

Return the path index the given controller is currently at. Returns INDEX_NONE if no path.

GetCurrentPathPoints static const TArray<FVector> AIBlueprintHelper::GetCurrentPathPoints( AController 	Controller 	)

Returns an array of navigation path points given controller is currently using.

GetNextNavLinkIndex static int AIBlueprintHelper::GetNextNavLinkIndex( const 	AController 	Controller 	)

Return the path index of the next nav link for the current path of the given controller. Returns INDEX_NONE if no path or no incoming nav link.

IsValidAIDirection static bool AIBlueprintHelper::IsValidAIDirection( FVector 	DirectionVector 	) GetAIController static AAIController AIBlueprintHelper::GetAIController( AActor 	ControlledActor 	)

The way it works exactly is if the actor passed in is a pawn, then the function retrieves pawn's controller cast to AIController. Otherwise the function returns actor cast to AIController.

IsValidAIRotation static bool AIBlueprintHelper::IsValidAIRotation( FRotator 	Rotation 	) SendAIMessage static void AIBlueprintHelper::SendAIMessage( APawn 	Target, FName 	Message, UObject 	MessageSource, bool 	bSuccess	 = 	true 	) SpawnAIFromClass static APawn AIBlueprintHelper::SpawnAIFromClass(

TSubclassOf<APawn> 	PawnClass, UBehaviorTree 	BehaviorTree, FVector 	Location, FRotator 	Rotation	 = 	FRotator ( ), bool 	bNoCollisionFail	 = 	false, AActor 	Owner	 = 	nullptr

)

Spawns AI agent of a given class. The PawnClass needs to have AIController set for the function to spawn a controller as well.

Parameters BehaviorTree UBehaviorTree

if set, and the function has successfully spawned and AI controller, this BehaviorTree asset will be assigned to the AI controller, and run.

Owner AActor

lets you spawn the AI in a sublevel rather than in the persistent level (which is the default behavior).

## AI \| NAVIGATION

### SimpleMoveToLocation

```
static void AIBlueprintHelper::SimpleMoveToLocation(AController Controller, FVector Goal)
```

SimpleMoveToActor

### static void AIBlueprintHelper::SimpleMoveToActor

```
static void AIBlueprintHelper::SimpleMoveToActor(AController Controller, const AActor Goal)
```

---

## ANIMATION

### UnlockAIResourcesWithAnimation

```
static void AIBlueprintHelper::UnlockAIResourcesWithAnimation(UAnimInstance AnimInstance, bool bUnlockMovement, bool UnlockAILogic)
```

unlocks indicated AI resources of animated pawn. Will unlock only animation-locked resources

### LockAIResourcesWithAnimation

```
static void AIBlueprintHelper::LockAIResourcesWithAnimation(UAnimInstance AnimInstance, bool bLockMovement, bool LockAILogic)
```

locks indicated AI resources of animated pawn
