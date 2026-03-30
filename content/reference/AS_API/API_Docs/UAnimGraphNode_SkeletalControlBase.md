# UAnimGraphNode_SkeletalControlBase

**Visibility:** public

## Inheritance

UAnimGraphNode_Base → UAnimGraphNode_SkeletalControlBase → UAnimGraphNode_AnimDynamics → UAnimGraphNode_ApplyLimits → UAnimGraphNode_BoneDrivenController → UAnimGraphNode_CCDIK

## Description

and 17 other children

This is the base class for the 'source version' of all skeletal control animation graph nodes (nodes that manipulate the pose rather than playing animations to create a pose or blending between poses)

Concrete subclasses should contain a member struct derived from FAnimNode_SkeletalControlBase

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimGraphNode_SkeletalControlBase::StaticClass()
```
