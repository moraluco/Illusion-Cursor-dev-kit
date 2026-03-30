# UBTDecorator_KeepInCone

**Visibility:** public

## Inheritance

UBTDecorator → UBTDecorator_KeepInCone

## Description

Cooldown decorator node.  A decorator node that bases its condition on whether the observed position is still inside a cone. The cone's direction is calculated when the node first becomes relevant.

## BLACKBOARD

### ConeOrigin

```
FBlackboardKeySelector ConeOrigin
```

blackboard key selector

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

max allowed time for execution of underlying node

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTDecorator_KeepInCone::StaticClass()
```
