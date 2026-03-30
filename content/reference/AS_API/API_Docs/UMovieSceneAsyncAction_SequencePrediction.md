# UMovieSceneAsyncAction_SequencePrediction

**Visibility:** public

## Inheritance

UBlueprintAsyncActionBase → UMovieSceneAsyncAction_SequencePrediction

## Description

Async BP action that represents a pending prediction that is dispatched on a playing sequence.

## VARIABLES

### Failure

```
FMovieSceneActorPredictionFailure Failure
```

Called when a message is broadcast on the specified channel. Use GetPayload() to request the message payload.

### Result

```
FMovieSceneActorPredictionResult Result
```

Called when a message is broadcast on the specified channel. Use GetPayload() to request the message payload.

---

## CINEMATICS

### PredictWorldTransformAtTime

```
static UMovieSceneAsyncAction_SequencePrediction UMovieSceneAsyncAction_SequencePrediction::PredictWorldTransformAtTime(
```

UMovieSceneSequencePlayer 	Player,

### USceneComponent 	TargetComponent,

```
float32 	TimeInSeconds
```

)

Initiate an asynchronous prediction for the specified component's world transform at a specific time in a sequence Changes in attachment between the sequence's current time, and the predicted time are not accounted for Calling this function on a stopped sequence player is undefined.

**Parameters**

Player
UMovieSceneSequencePlayer

An active, currently playing sequence player to use for predicting the transform

TargetComponent
USceneComponent

The component to predict a world transform for

TimeInSeconds
float32

The time within the sequence to predict the transform at

**Returns**

An asynchronous prediction object that contains Result and Failure delegates

PredictLocalTransformAtTime
static UMovieSceneAsyncAction_SequencePrediction UMovieSceneAsyncAction_SequencePrediction::PredictLocalTransformAtTime(

UMovieSceneSequencePlayer 	Player,
USceneComponent 	TargetComponent,
float32 	TimeInSeconds

)

Initiate an asynchronous prediction for the specified component's local transform at a specific time in a sequence Changes in attachment between the sequence's current time, and the predicted time are not accounted for Calling this function on a stopped sequence player is undefined.

**Parameters**

Player
UMovieSceneSequencePlayer

An active, currently playing sequence player to use for predicting the transform

TargetComponent
USceneComponent

The component to predict a world transform for

TimeInSeconds
float32

The time within the sequence to predict the transform at

**Returns**

An asynchronous prediction object that contains Result and Failure delegates

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneAsyncAction_SequencePrediction::StaticClass()
