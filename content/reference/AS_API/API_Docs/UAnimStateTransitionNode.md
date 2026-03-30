# UAnimStateTransitionNode

**Visibility:** public

## Inheritance

UAnimStateNodeBase → UAnimStateTransitionNode → EVENTS → TransitionInterrupt

## Description

FAnimNotifyEvent TransitionInterrupt TransitionEnd FAnimNotifyEvent TransitionEnd TransitionStart FAnimNotifyEvent TransitionStart

## TRANSITION

### CustomBlendCurve

```
UCurveFloat CustomBlendCurve
```
### BlendMode

```
EAlphaBlendOption BlendMode
```
### PriorityOrder

```
int PriorityOrder
```

The priority order of this transition. If multiple transitions out of a state go true at the same time, the one with the smallest priority order will take precedent

### LogicType

```
ETransitionLogicType LogicType
```

What transition logic to use

### CrossfadeDuration

```
float32 CrossfadeDuration
```

The duration to cross-fade for

### BlendProfile

```
UBlendProfile BlendProfile
```

The blend profile to use to evaluate this transition per-bone

### bAutomaticRuleBasedOnSequencePlayerInState

```
bool bAutomaticRuleBasedOnSequencePlayerInState
```

Try setting the rule automatically based on most relevant player node's remaining time and the CrossfadeDuration of the transition, ignoring the internal time

### SyncGroupNameToRequireValidMarkersRule

```
FName SyncGroupNameToRequireValidMarkersRule
```

If SyncGroupName is specified, Transition will only be taken if the SyncGroup has valid markers (other transition rules still apply in addition to that).

### Bidirectional

```
bool Bidirectional
```

This transition can go both directions

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimStateTransitionNode::StaticClass()
```
