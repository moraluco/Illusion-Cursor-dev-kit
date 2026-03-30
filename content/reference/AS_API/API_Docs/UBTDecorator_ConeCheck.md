# UBTDecorator_ConeCheck

**Visibility:** public

## Inheritance

UBTDecorator → UBTDecorator_ConeCheck

## Description

Cone check decorator node.  A decorator node that bases its condition on a cone check, using Blackboard entries to form the parameters of the check.

## BLACKBOARD

### ConeOrigin

```
FBlackboardKeySelector ConeOrigin
```

blackboard key selector

### ConeDirection

```
FBlackboardKeySelector ConeDirection
```

"None" means "use ConeOrigin's direction"

### Observed

```
FBlackboardKeySelector Observed
```

blackboard key selector

---

## DECORATOR

### ConeHalfAngle

```
float32 ConeHalfAngle
```

Angle between cone direction and code cone edge, or a half of the total cone angle

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTDecorator_ConeCheck::StaticClass()
```
