# UBTDecorator_DoesPathExist

**Visibility:** public

## Inheritance

UBTDecorator → UBTDecorator_DoesPathExist

## Description

Cooldown decorator node.  A decorator node that bases its condition on whether a path exists between two points from the Blackboard.

## CONDITION

### BlackboardKeyB

```
FBlackboardKeySelector BlackboardKeyB
```

blackboard key selector

### PathQueryType

```
EPathExistanceQueryType PathQueryType
```
### BlackboardKeyA

```
FBlackboardKeySelector BlackboardKeyA
```

blackboard key selector

---

## NODE

### FilterClass

```
TSubclassOf<UNavigationQueryFilter> FilterClass
```

"None" will result in default filter being used

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTDecorator_DoesPathExist::StaticClass()
```
