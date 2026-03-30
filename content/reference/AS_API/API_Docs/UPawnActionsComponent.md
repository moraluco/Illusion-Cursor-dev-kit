# UPawnActionsComponent

**Visibility:** public

## Inheritance

UActorComponent → UPawnActionsComponent → PAWNACTIONS → ControlledPawn

## Description

APawn ControlledPawn

## AI \| PAWNACTIONS

### PerformAction

```
static bool UPawnActionsComponent::PerformAction(
```

APawn 	Pawn,

UPawnAction 	Action,

EAIRequestPriority 	Priority	 = 	EAIRequestPriority :: HardScript

)

### blueprint interface

```
blueprint interface
```

---

## PAWNACTION

### PushAction

```
bool PushAction(UPawnAction NewAction, EAIRequestPriority Priority, UObject Instigator = nullptr)
```

ForceAbortAction

### EPawnActionAbortState ForceAbortAction

```
EPawnActionAbortState ForceAbortAction(UPawnAction ActionToAbort)
```

Aborts given action instance

### AbortAction

```
EPawnActionAbortState AbortAction(UPawnAction ActionToAbort)
```

Aborts given action instance

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPawnActionsComponent UPawnActionsComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPawnActionsComponent UPawnActionsComponent::GetOrCreate

```
static UPawnActionsComponent UPawnActionsComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPawnActionsComponent UPawnActionsComponent::Create

```
static UPawnActionsComponent UPawnActionsComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPawnActionsComponent::StaticClass

```
static UClass UPawnActionsComponent::StaticClass()
```
