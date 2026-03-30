# UBTTask_MoveTo

**Visibility:** public

## Inheritance

UBTTask_BlackboardBase → UBTTask_MoveTo → UBTTask_MoveDirectlyToward

## Description

Move To task node.  Moves the AI pawn toward the specified Actor or Location blackboard entry using the navigation system.

## BLACKBOARD

### ObservedBlackboardValueTolerance

```
float32 ObservedBlackboardValueTolerance
```

if task is expected to react to changes to location represented by BB key this property can be used to tweak sensitivity of the mechanism. Value is recommended to be less than AcceptableRadius

---

## NODE

### FilterClass

```
TSubclassOf<UNavigationQueryFilter> FilterClass
```

"None" will result in default filter being used

### AcceptableRadius

```
float32 AcceptableRadius
```

fixed distance added to threshold between AI and goal location in destination reach test

---

## FUNCTIONS

### SetbAllowStrafe

```
void SetbAllowStrafe(bool Value)
```

SetbAllowPartialPath

### void SetbAllowPartialPath

```
void SetbAllowPartialPath(bool Value)
```

SetbTrackMovingGoal

### void SetbTrackMovingGoal

```
void SetbTrackMovingGoal(bool Value)
```

SetbProjectGoalLocation

### void SetbProjectGoalLocation

```
void SetbProjectGoalLocation(bool Value)
```

SetbReachTestIncludesAgentRadius

### void SetbReachTestIncludesAgentRadius

```
void SetbReachTestIncludesAgentRadius(bool Value)
```

SetbReachTestIncludesGoalRadius

### void SetbReachTestIncludesGoalRadius

```
void SetbReachTestIncludesGoalRadius(bool Value)
```

SetbObserveBlackboardValue

### void SetbObserveBlackboardValue

```
void SetbObserveBlackboardValue(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTTask_MoveTo::StaticClass()
```
