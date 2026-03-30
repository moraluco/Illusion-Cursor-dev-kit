# UBTDecorator

**Visibility:** public

## Inheritance

UBTAuxiliaryNode → UBTDecorator → UBTDecorator_BlackboardBase → UBTDecorator_BlueprintBase → UBTDecorator_CheckGameplayTagsOnActor → UBTDecorator_CompareBBEntries

## Description

and 10 other children

Decorators are supporting nodes placed on parent-child connection, that receive notification about execution flow and can be ticked

Because some of them can be instanced for specific AI, following virtual functions are not marked as const: - OnNodeActivation - OnNodeDeactivation - OnNodeProcessed - OnBecomeRelevant (from UBTAuxiliaryNode) - OnCeaseRelevant (from UBTAuxiliaryNode) - TickNode (from UBTAuxiliaryNode)

If your node is not being instanced (default behavior), DO NOT change any properties of object within those functions!  Template nodes are shared across all behavior tree components using the same tree asset and must store their runtime properties in provided NodeMemory block (allocation size determined by GetInstanceMemorySize() )

## FLOWCONTROL

### FlowAbortMode

```
EBTFlowAbortMode FlowAbortMode
```

flow controller settings

---

## FUNCTIONS

### SetbInverseCondition

```
void SetbInverseCondition(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTDecorator::StaticClass()
```
