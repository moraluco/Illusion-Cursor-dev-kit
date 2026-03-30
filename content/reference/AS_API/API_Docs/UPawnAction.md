# UPawnAction

**Visibility:** public

## Inheritance

UObject → UPawnAction → UPawnAction_BlueprintBase → UPawnAction_Move → UPawnAction_Repeat → UPawnAction_Sequence → UPawnAction_Wait

## Description

Things to remember: * Actions are created paused

## AI \| PAWNACTIONS

### ActionPriority

```
const EAIRequestPriority ActionPriority
```
### Blueprint interface

```
Blueprint interface
```

---

## PAWNACTION

### bReplaceActiveSameClassInstance

```
bool bReplaceActiveSameClassInstance
```

if this is TRUE, when we try to push a new instance of an action who has the same class as the action on the top of the stack, pop the one on the stack, and push the new one NOTE: This trumps bAllowNewClassInstance (e.g. if this is true and bAllowNewClassInstance is false the active instance will still be replaced)

### bShouldPauseMovement

```
bool bShouldPauseMovement
```

this is a temporary solution to allow having movement action running in background while there's another action on top doing its thing @note should go away once AI resource locking comes on-line

### bAlwaysNotifyOnFinished

```
bool bAlwaysNotifyOnFinished
```

if set, action will call OnFinished notify even when ending as FailedToStart

### bAllowNewSameClassInstance

```
bool bAllowNewSameClassInstance
```

if this is FALSE and we're trying to push a new instance of a given class, but the top of the stack is already an instance of that class ignore the attempted push

---

## AI \| PAWNACTIONS

### GetActionPriority

```
EAIRequestPriority GetActionPriority()
```

### Blueprint interface

```
Blueprint interface
```

CreateActionInstance

### static UPawnAction UPawnAction::CreateActionInstance

```
static UPawnAction UPawnAction::CreateActionInstance(TSubclassOf<UPawnAction> ActionClass)
```

Finish

### void Finish

```
void Finish(EPawnActionResult WithResult)
```

---

## FUNCTIONS

### GetbReplaceActiveSameClassInstance

```
bool GetbReplaceActiveSameClassInstance()const
```

SetbAllowNewSameClassInstance

### void SetbAllowNewSameClassInstance

```
void SetbAllowNewSameClassInstance(bool Value)
```

GetbAllowNewSameClassInstance

### bool GetbAllowNewSameClassInstance

```
bool GetbAllowNewSameClassInstance()const SetbReplaceActiveSameClassInstance
```

void SetbReplaceActiveSameClassInstance(

### bool 	Value

```
bool 	Value 	)
```

SetbShouldPauseMovement

### void SetbShouldPauseMovement

```
void SetbShouldPauseMovement(bool Value)
```

GetbAlwaysNotifyOnFinished

### bool GetbAlwaysNotifyOnFinished

```
bool GetbAlwaysNotifyOnFinished()const SetbAlwaysNotifyOnFinished
```

void SetbAlwaysNotifyOnFinished(

### bool 	Value

```
bool 	Value 	)
```

GetbShouldPauseMovement

### bool GetbShouldPauseMovement

```
bool GetbShouldPauseMovement()const STATIC FUNCTIONS
```

StaticClass

### static UClass UPawnAction::StaticClass

```
static UClass UPawnAction::StaticClass()
```
