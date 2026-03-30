# UBTTask_RunBehaviorDynamic

**Visibility:** public

## Inheritance

UBTTaskNode → UBTTask_RunBehaviorDynamic

## Description

RunBehaviorDynamic task allows pushing subtrees on execution stack.  Subtree asset can be assigned at runtime with SetDynamicSubtree function of BehaviorTreeComponent.

Does NOT support subtree's root level decorators!

## NODE

### DefaultBehaviorAsset

```
UBehaviorTree DefaultBehaviorAsset
```

default behavior to run

### InjectionTag

```
FGameplayTag InjectionTag
```

Gameplay tag that will identify this task for subtree injection

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTTask_RunBehaviorDynamic::StaticClass()
```
