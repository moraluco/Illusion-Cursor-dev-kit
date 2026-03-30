# UGameplayTask

**Visibility:** public

## Inheritance

UObject → UGameplayTask → UAITask → UGameplayTask_ClaimResource → UGameplayTask_SpawnActor → UGameplayTask_TimeLimitedExecution → UGameplayTask_WaitDelay → GAMEPLAYTASKS → EndTask

## Description

void EndTask()

Called explicitly to end the task (usually by the task itself). Calls OnDestroy.  Note:: you need to call EndTask before sending out any "on completed" delegates.  If you don't the task will still be in an "active" state while the event receivers may assume it's already "finished"

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGameplayTask::StaticClass()
```
