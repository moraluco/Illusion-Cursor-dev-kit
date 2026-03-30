# UGameplayTask_TimeLimitedExecution

**Visibility:** public

## Inheritance

UGameplayTask → UGameplayTask_TimeLimitedExecution

## Description

Adds time limit for running a child task - child task needs to be created with UGameplayTask_TimeLimitedExecution passed as TaskOwner - activations are tied together and when either UGameplayTask_TimeLimitedExecution or child task is activated, other one starts as well - OnFinished and OnTimeExpired are mutually exclusive

## VARIABLES

### OnTimeExpired

```
FTaskFinishDelegate__GameplayTask_TimeLimitedExecution OnTimeExpired
```

called when time runs out

### OnFinished

```
FTaskFinishDelegate__GameplayTask_TimeLimitedExecution OnFinished
```

called when child task finishes execution before time runs out

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGameplayTask_TimeLimitedExecution::StaticClass()
```
