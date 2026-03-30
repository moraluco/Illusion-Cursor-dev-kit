# UAISense_Prediction

**Visibility:** public

## Inheritance

UAISense → UAISense_Prediction

## AI \| PERCEPTION

### RequestPawnPredictionEvent

```
static void UAISense_Prediction::RequestPawnPredictionEvent(APawn Requestor, AActor PredictedActor, float32 PredictionTime)
```

Asks perception system to supply Requestor with PredictedActor's predicted location in PredictionTime seconds Location is being predicted based on PredicterActor's current location and velocity

### RequestControllerPredictionEvent

```
static void UAISense_Prediction::RequestControllerPredictionEvent(AAIController Requestor, AActor PredictedActor, float32 PredictionTime)
```

Asks perception system to supply Requestor with PredictedActor's predicted location in PredictionTime seconds Location is being predicted based on PredicterActor's current location and velocity

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAISense_Prediction::StaticClass()
```
