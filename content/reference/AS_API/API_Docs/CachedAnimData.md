# CachedAnimData

## Inheritance

CachedAnimData

## UTILITIES \| ANIMATION \| STATEMACHINE

### StateMachine_GetLocalWeight

```
static float32 CachedAnimData::StateMachine_GetLocalWeight(UAnimInstance InAnimInstance, FCachedAnimStateData CachedAnimStateData)
```

Returns the weight of a state, relative to its state machine (specified in the provided FCachedAnimStateData)

### StateMachine_IsStateRelevant

```
static bool CachedAnimData::StateMachine_IsStateRelevant(UAnimInstance InAnimInstance, FCachedAnimStateData CachedAnimStateData)
```

Returns whether a state is relevant (specified in the provided FCachedAnimStateData)

### StateMachine_GetGlobalWeight

```
static float32 CachedAnimData::StateMachine_GetGlobalWeight(
```

UAnimInstance 	InAnimInstance,

### FCachedAnimStateData 	CachedAnimStateData

```
FCachedAnimStateData 	CachedAnimStateData
```

)

### Returns the weight of a state, relative to the graph

```
Returns the weight of a state, relative to the graph(specified in the provided FCachedAnimStateData)
```
