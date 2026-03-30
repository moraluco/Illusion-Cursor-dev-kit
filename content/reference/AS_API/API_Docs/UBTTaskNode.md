# UBTTaskNode

**Visibility:** public

## Inheritance

UBTNode → UBTTaskNode → UBTTask_BlackboardBase → UBTTask_BlueprintBase → UBTTask_FinishWithResult → UBTTask_GameplayTaskBase

## Description

and 8 other children

Task are leaf nodes of behavior tree, which perform actual actions

Because some of them can be instanced for specific AI, following virtual functions are not marked as const: - ExecuteTask - AbortTask - TickTask - OnMessage

If your node is not being instanced (default behavior), DO NOT change any properties of object within those functions!  Template nodes are shared across all behavior tree components using the same tree asset and must store their runtime properties in provided NodeMemory block (allocation size determined by GetInstanceMemorySize() )

## FUNCTIONS

### SetbIgnoreRestartSelf

```
void SetbIgnoreRestartSelf(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTTaskNode::StaticClass()
```
