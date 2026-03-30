# UBTTask_GameplayTaskBase

**Visibility:** public

## Inheritance

UBTTaskNode → UBTTask_GameplayTaskBase

## Description

Base class for managing gameplay tasks Since AITask doesn't have any kind of success/failed results, default implemenation will only return EBTNode::Succeeded

In your ExecuteTask

use NewBTAITask() helper to create task

initialize task with values if needed

use StartGameplayTask() helper to execute and get node result

## FUNCTIONS

### SetbWaitForGameplayTask

```
void SetbWaitForGameplayTask(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTTask_GameplayTaskBase::StaticClass()
```
