# UBTDecorator_BlueprintBase

**Visibility:** public

## Inheritance

UBTDecorator → UBTDecorator_BlueprintBase

## Description

Base class for blueprint based decorator nodes. Do NOT use it for creating native c++ classes!

Unlike task and services, decorator have two execution chains: ExecutionStart-ExecutionFinish and ObserverActivated-ObserverDeactivated which makes automatic latent action cleanup impossible. Keep in mind, that you HAVE TO verify is given chain is still active after resuming from any latent action (like Delay, Timelines, etc).

Helper functions: - IsDecoratorExecutionActive (true after ExecutionStart, until ExecutionFinish) - IsDecoratorObserverActive (true after ObserverActivated, until ObserverDeactivated)

## DESCRIPTION

### CustomDescription

```
FString CustomDescription AI ExecutionFinishAI void ExecutionFinishAI(AAIController OwnerController, APawn ControlledPawn, EBTNodeResult NodeResult)
```

Alternative AI version of ReceiveExecutionFinish See: ReceiveExecutionFinish for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### TickAI

```
void TickAI(AAIController OwnerController, APawn ControlledPawn, float32 DeltaSeconds)
```

Alternative AI version of ReceiveTick See: ReceiveTick for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### PerformConditionCheckAI

```
bool PerformConditionCheckAI(AAIController OwnerController, APawn ControlledPawn)
```

Alternative AI version of ReceiveConditionCheck See: ReceiveConditionCheck for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### ObserverActivatedAI

```
void ObserverActivatedAI(AAIController OwnerController, APawn ControlledPawn)
```

Alternative AI version of ReceiveObserverActivated See: ReceiveObserverActivated for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### ObserverDeactivatedAI

```
void ObserverDeactivatedAI(AAIController OwnerController, APawn ControlledPawn)
```

Alternative AI version of ReceiveObserverDeactivated See: ReceiveObserverDeactivated for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### ExecutionStartAI

```
void ExecutionStartAI(AAIController OwnerController, APawn ControlledPawn)
```

Alternative AI version of ReceiveExecutionStart See: ReceiveExecutionStart for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

---

## AI \| BEHAVIORTREE

### IsDecoratorObserverActive

```
bool IsDecoratorObserverActive()const
```

check if decorator's observer is currently active

### IsDecoratorExecutionActive

```
bool IsDecoratorExecutionActive()const
```

check if decorator is part of currently active branch

---

## FUNCTIONS

### ObserverDeactivated

```
void ObserverDeactivated(AActor OwnerActor)
```

called when observer is deactivated (flow controller) Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### ExecutionFinish

```
void ExecutionFinish(AActor OwnerActor, EBTNodeResult NodeResult)
```

called when execution of underlying node is finished Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### PerformConditionCheck

```
bool PerformConditionCheck(AActor OwnerActor)
```

called when testing if underlying node can be executed, must call FinishConditionCheck Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### ExecutionStart

```
void ExecutionStart(AActor OwnerActor)
```

called on execution of underlying node Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### Tick

```
void Tick(AActor OwnerActor, float32 DeltaSeconds)
```

tick function Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### ObserverActivated

```
void ObserverActivated(AActor OwnerActor)
```

called when observer is activated (flow controller) Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### SetbShowPropertyDetails

```
void SetbShowPropertyDetails(bool Value)
```

SetbCheckConditionOnlyBlackBoardChanges

### void SetbCheckConditionOnlyBlackBoardChanges

```
void SetbCheckConditionOnlyBlackBoardChanges(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTDecorator_BlueprintBase::StaticClass()
```
