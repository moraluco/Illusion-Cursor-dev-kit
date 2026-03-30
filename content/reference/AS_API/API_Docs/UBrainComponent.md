# UBrainComponent

**Visibility:** public

## Inheritance

UActorComponent → UBrainComponent → UBehaviorTreeComponent

## AI \| LOGIC

### StopLogic

```
void StopLogic(FString Reason)
```

Stops currently running brain logic.

### IsRunning

```
bool IsRunning()const
```

RestartLogic

### void RestartLogic

```
void RestartLogic()
```

Restarts currently running or previously ran brain logic.

### StartLogic

```
void StartLogic()
```

Starts brain logic. If brain is already running, will not do anything.

### IsPaused

```
bool IsPaused()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UBrainComponent UBrainComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UBrainComponent UBrainComponent::GetOrCreate

```
static UBrainComponent UBrainComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UBrainComponent UBrainComponent::Create

```
static UBrainComponent UBrainComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UBrainComponent::StaticClass

```
static UClass UBrainComponent::StaticClass()
```
