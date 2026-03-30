# UBTTask_BlueprintBase

**Visibility:** public

## Inheritance

UBTTaskNode → UBTTask_BlueprintBase

## Description

Base class for blueprint based task nodes. Do NOT use it for creating native c++ classes!

When task receives Abort event, all latent actions associated this instance are being removed.  This prevents from resuming activity started by Execute, but does not handle external events.  Please use them safely (unregister at abort) and call IsTaskExecuting() when in doubt.

## DESCRIPTION

### CustomDescription

```
FString CustomDescription
```

---

## TASK

### TickInterval

```
FIntervalCountdown TickInterval
```

If any of the Tick functions is implemented, how often should they be ticked.  Values < 0 mean 'every tick'.

---

## AI

### ExecuteAI

```
void ExecuteAI(AAIController OwnerController, APawn ControlledPawn)
```

Alternative AI version of ReceiveExecute See: ReceiveExecute for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### TickAI

```
void TickAI(AAIController OwnerController, APawn ControlledPawn, float32 DeltaSeconds)
```

Alternative AI version of tick function.  See: ReceiveTick for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### AbortAI

```
void AbortAI(AAIController OwnerController, APawn ControlledPawn)
```

Alternative AI version of ReceiveAbort See: ReceiveAbort for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

---

## AI \| BEHAVIORTREE

### IsTaskExecuting

```
bool IsTaskExecuting()const
```

check if task is currently being executed

### IsTaskAborting

```
bool IsTaskAborting()const
```

check if task is currently being aborted

### FinishAbort

```
void FinishAbort()
```

aborts task execution

### FinishExecute

```
void FinishExecute(bool bSuccess)
```

finishes task execution with Success or Fail result

### SetFinishOnMessage

```
void SetFinishOnMessage(FName MessageName)
```

task execution will be finished (with result 'Success') after receiving specified message

### SetFinishOnMessageWithId

```
void SetFinishOnMessageWithId(FName MessageName, int RequestID = - 1)
```

task execution will be finished (with result 'Success') after receiving specified message with indicated ID

---

## FUNCTIONS

### Abort

```
void Abort(AActor OwnerActor)
```

if blueprint graph contains this event, task will stay active until FinishAbort is called Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### Tick

```
void Tick(AActor OwnerActor, float32 DeltaSeconds)
```

tick function Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### SetbShowPropertyDetails

```
void SetbShowPropertyDetails(bool Value)
```

Execute

### void Execute

```
void Execute(AActor OwnerActor)
```

entry point, task will stay active until FinishExecute is called.  Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTTask_BlueprintBase::StaticClass()
```
