# UGizmoObjectTransformChangeStateTarget

**Visibility:** public

## Inheritance

UObject → UGizmoObjectTransformChangeStateTarget

## Description

UGizmoObjectTransformChangeStateTarget is an implementation of IGizmoStateTarget that emits an FComponentWorldTransformChange on a target USceneComponent. This StateTarget also opens/closes an undo transaction via GizmoManager.

The DependentChangeSources and ExternalDependentChangeSources lists allow additional FChange objects to be inserted into the transaction, provided by IToolCommandChangeSource implementations.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGizmoObjectTransformChangeStateTarget::StaticClass()
```
