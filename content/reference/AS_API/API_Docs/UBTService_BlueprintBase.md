# UBTService_BlueprintBase

**Visibility:** public

## Inheritance

UBTService → UBTService_BlueprintBase

## Description

Base class for blueprint based service nodes. Do NOT use it for creating native c++ classes!

When service receives Deactivation event, all latent actions associated this instance are being removed.  This prevents from resuming activity started by Activation, but does not handle external events.  Please use them safely (unregister at abort) and call IsServiceActive() when in doubt.

## DESCRIPTION

### CustomDescription

```
FString CustomDescription AI SearchStartAI void SearchStartAI(AAIController OwnerController, APawn ControlledPawn)
```

Alternative AI version of ReceiveSearchStart function.  See: ReceiveSearchStart for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### ActivationAI

```
void ActivationAI(AAIController OwnerController, APawn ControlledPawn)
```

Alternative AI version of ReceiveActivation function.  See: ReceiveActivation for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### TickAI

```
void TickAI(AAIController OwnerController, APawn ControlledPawn, float32 DeltaSeconds)
```

Alternative AI version of ReceiveTick function.  See: ReceiveTick for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### DeactivationAI

```
void DeactivationAI(AAIController OwnerController, APawn ControlledPawn)
```

Alternative AI version of ReceiveDeactivation function.  See: ReceiveDeactivation for more details Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

---

## AI \| BEHAVIORTREE

### IsServiceActive

```
bool IsServiceActive()const
```

check if service is currently being active

---

## FUNCTIONS

### Activation

```
void Activation(AActor OwnerActor)
```

service became active Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### Tick

```
void Tick(AActor OwnerActor, float32 DeltaSeconds)
```

tick function Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### Deactivation

```
void Deactivation(AActor OwnerActor)
```

service became inactive Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### SetbShowPropertyDetails

```
void SetbShowPropertyDetails(bool Value)
```

SetbShowEventDetails

### void SetbShowEventDetails

```
void SetbShowEventDetails(bool Value)
```

SearchStart

### void SearchStart

```
void SearchStart(AActor OwnerActor)
```

task search enters branch of tree Note: that if both generic and AI event versions are implemented only the more suitable one will be called, meaning the AI version if called for AI, generic one otherwise

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTService_BlueprintBase::StaticClass()
```
