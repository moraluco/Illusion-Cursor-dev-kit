# UBTTask_RunBehavior

**Visibility:** public

## Inheritance

UBTTaskNode → UBTTask_RunBehavior

## Description

RunBehavior task allows pushing subtrees on execution stack.  Subtree asset can't be changed in runtime!

This limitation is caused by support for subtree's root level decorators, which are injected into parent tree, and structure of running tree cannot be modified in runtime (see: BTNode: ExecutionIndex, MemoryOffset)

Use RunBehaviorDynamic task for subtrees that need to be changed in runtime.

## NODE

### BehaviorAsset

```
UBehaviorTree BehaviorAsset
```

behavior to run

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTTask_RunBehavior::StaticClass()
```
