# AnimNotifyStateMachineInspection

## Inheritance

AnimNotifyStateMachineInspection

## UTILITIES \| ANIMATION \| NOTIFIES

### IsTriggeredByStateInStateMachine

```
static bool AnimNotifyStateMachineInspection::IsTriggeredByStateInStateMachine(
```

FAnimNotifyEventReference 	EventReference,

UAnimInstance 	AnimInstance,

### FName 	StateMachineName,

```
FName 	StateName
```

)

### notify

```
Get whether a particular state in a specific state machine triggered the notify
```
**Parameters**

EventReference
FAnimNotifyEventReference

The event to inspect

StateMachineName
FName

The name of a state machine to test

StateName
FName

The name of a state to test

IsTriggeredByStateMachine
static bool AnimNotifyStateMachineInspection::IsTriggeredByStateMachine(

FAnimNotifyEventReference 	EventReference,
UAnimInstance 	AnimInstance,
FName 	StateMachineName

)

Get whether the notify was triggered from the specified state machine

**Parameters**

EventReference
FAnimNotifyEventReference

The event to inspect

StateMachineName
FName

The Name of a state machine to test

IsTriggeredByState
static bool AnimNotifyStateMachineInspection::IsTriggeredByState(

FAnimNotifyEventReference 	EventReference,
UAnimInstance 	AnimInstance,
FName 	StateName

)

Get whether a state with the given name in any state machine triggered the notify

**Parameters**

EventReference
FAnimNotifyEventReference

The event to inspect

StateName
FName

The name of a state to test
