# UIKRig_LimbSolver

**Visibility:** public

## Inheritance

UIKRigSolver → UIKRig_LimbSolver

## Description

LIMB IK SETTINGS ReachPrecision float32 ReachPrecision

Precision (distance to the target)

LIMB IK SETTINGS|FABRIK MaxIterations int MaxIterations

Number of Max Iterations to reach the target

LIMB IK SETTINGS|FABRIK|LIMITS bEnableLimit bool bEnableLimit

Enable/Disable rotational limits

MinRotationAngle float32 MinRotationAngle

Only used if bEnableRotationLimit is enabled. Prevents the leg from folding onto itself, and forces at least this angle between Parent and Child bone.

LIMB IK SETTINGS|FABRIK|PULL AVERAGING bAveragePull bool bAveragePull

Pull averaging only has a visual impact when we have more than 2 bones (3 links).

PullDistribution float32 PullDistribution

Re-position limb to distribute pull: 0 = foot, 0.5 = balanced, 1.f = hip

ReachStepAlpha float32 ReachStepAlpha

Move end effector towards target. If we are compressing the chain, limit displacement.

LIMB IK SETTINGS|TWIST bEnableTwistCorrection bool bEnableTwistCorrection

Enable Knee Twist correction, by comparing Foot FK with Foot IK orientation.

EndBoneForwardAxis EAxis EndBoneForwardAxis

Forward Axis for Foot bone.

LIMB IK SETTINGS|TWO BONES HingeRotationAxis EAxis HingeRotationAxis Hinge Bones Rotation Axis. This is essentially the plane normal for (hip

knee - foot).

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UIKRig_LimbSolver::StaticClass()
```
