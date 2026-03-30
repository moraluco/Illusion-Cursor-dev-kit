# UIKRig_FBIKEffector

**Visibility:** public

## Inheritance

UObject → UIKRig_FBIKEffector

## Description

FULL BODY IK EFFECTOR PullChainAlpha float32 PullChainAlpha

Range 0-1 (default is 1.0). When enabled (greater than 0.0), the solver internally partitions the skeleton into 'chains' which extend from the effector to the nearest fork in the skeleton.  These chains are pre-rotated and translated, as a whole, towards the effector targets.  This can improve the results for sparse bone chains, and significantly improve convergence on dense bone chains.  But it may cause undesirable results in highly constrained bone chains (like robot arms).

PinRotation float32 PinRotation

Range 0-1 (default is 1.0).  Blends the effector bone rotation between the rotation of the effector transform (1.0) and the rotation of the input bone (0.0).

StrengthAlpha float32 StrengthAlpha

Range 0-1 (default is 1.0). The strength of the effector when pulling the bone towards it's target location.  At 0.0, the effector does not pull at all, but the bones between the effector and the root will still slightly resist motion from other effectors.  This can thus act as a "stabilizer" for parts of the body that you do not want to behave in a pure FK fashion.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UIKRig_FBIKEffector::StaticClass()
```
