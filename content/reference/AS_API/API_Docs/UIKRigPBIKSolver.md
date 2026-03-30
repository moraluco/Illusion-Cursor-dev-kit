# UIKRigPBIKSolver

**Visibility:** public

## Inheritance

UIKRigSolver → UIKRigPBIKSolver

## Description

FULL BODY IK SETTINGS MassMultiplier float32 MassMultiplier

A global mass multiplier; higher values will make the joints more stiff, but require more iterations. Typical range is 0.0 to 10.0.

MinMassMultiplier float32 MinMassMultiplier

Set this as low as possible while keeping the solve stable. Lower values improve convergence of effector targets. Default is 0.2.

bAllowStretch bool bAllowStretch

If true, joints will translate to reach the effectors; causing bones to lengthen if necessary. Good for cartoon effects. Default is false.

RootBehavior EPBIKRootBehavior RootBehavior

(Default is PrePull) Set the behavior for the translation of the root.  Pre Pull: translates the whole body by the average motion of the stretched effectors to help achieve faster convergence when reaching far.  Pin to Input: locks the translation and rotation of the root bone to the input pose. Overrides any bone settings applied to the root.  Free: treats the root bone like any other and allows it to move freely or according to any bone settings applied to it.

bStartSolveFromInputPose bool bStartSolveFromInputPose

When true, the solver is reset each tick to start from the current input pose. If false, incoming animated poses are ignored and the solver starts from the results of the previous solve. Default is true.

Iterations int Iterations

High iteration counts can help solve complex joint configurations with competing constraints, but will increase runtime cost. Default is 20.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UIKRigPBIKSolver::StaticClass()
```
