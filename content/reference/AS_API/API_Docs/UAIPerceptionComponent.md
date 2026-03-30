# UAIPerceptionComponent

**Visibility:** public

## Inheritance

UActorComponent → UAIPerceptionComponent

## Description

AIPerceptionComponent is used to register as stimuli listener in AIPerceptionSystem and gathers registered stimuli. UpdatePerception is called when component gets new stimuli (batched)

## Members

### PERCEPTION

```
AI PERCEPTION
```
### DominantSense

```
TSubclassOf<UAISense> DominantSense
```

Indicated sense that takes precedence over other senses when determining sensed actor's location.  Should be set to one of the senses configured in SensesConfig, or None.

### SensesConfig

```
TArray<TObjectPtr<UAISenseConfig>> SensesConfig
```

---

## VARIABLES

### OnTargetPerceptionUpdated

```
FActorPerceptionUpdatedDelegate OnTargetPerceptionUpdated
```

Notifies all bound objects that perception info has been updated for a given target.  The notification is broadcasted for any received stimulus or on change of state according to the stimulus configuration.

### Note

```
Note
```

This delegate will not be called if source actor is no longer valid by the time a stimulus gets processed.  Use OnTargetPerceptionInfoUpdated providing a source id to handle those cases.

### @param  SourceActor  Actor associated to the stimulus

```
@param SourceActor Actor associated to the stimulus(can not be null)@param Stimulus Updated stimulus
```

OnTargetPerceptionInfoUpdated

### OnTargetPerceptionInfoUpdated

```
FActorPerceptionInfoUpdatedDelegate OnTargetPerceptionInfoUpdated
```

Notifies all bound objects that perception info has been updated for a given target.  The notification is broadcasted for any received stimulus or on change of state according to the stimulus configuration.

Note

This delegate will be called even if source actor is no longer valid by the time a stimulus gets processed so it is better to use source id for bookkeeping.

@param  UpdateInfo  Data structure providing information related to the updated perceptual data

### OnPerceptionUpdated

```
FPerceptionUpdatedDelegate OnPerceptionUpdated
```

Might want to move these to special "BP_AIPerceptionComponent"

---

## AI \| PERCEPTION

### GetPerceivedHostileActorsBySense

```
void GetPerceivedHostileActorsBySense(const TSubclassOf<UAISense> SenseToUse, TArray<AActor>& OutActors)const
```

GetActorsPerception

### bool GetActorsPerception

```
bool GetActorsPerception(AActor Actor, FActorPerceptionBlueprintInfo& Info)
```

Retrieves whatever has been sensed about given actor

### GetCurrentlyPerceivedActors

```
void GetCurrentlyPerceivedActors(TSubclassOf<UAISense> SenseToUse, TArray<AActor>& OutActors)const
```

If SenseToUse is none all actors currently perceived in any way will get fetched

### GetKnownPerceivedActors

```
void GetKnownPerceivedActors(TSubclassOf<UAISense> SenseToUse, TArray<AActor>& OutActors)const
```

If SenseToUse is none all actors ever perceived in any way (and not forgotten yet) will get fetched

### GetPerceivedActors

```
void GetPerceivedActors(TSubclassOf<UAISense> SenseToUse, TArray<AActor>& OutActors)const
```

GetPerceivedHostileActors

### void GetPerceivedHostileActors

```
void GetPerceivedHostileActors(TArray<AActor>& OutActors)const
```

### blueprint interface

```
blueprint interface
```

ForgetAll

### void ForgetAll

```
void ForgetAll()
```

basically cleans up PerceptualData, resulting in loss of all previous perception

### RequestStimuliListenerUpdate

```
void RequestStimuliListenerUpdate()
```

Notifies AIPerceptionSystem to update properties for this "stimuli listener"

### SetSenseEnabled

```
void SetSenseEnabled(TSubclassOf<UAISense> SenseClass, bool bEnable)
```

Note that this works only if given sense has been already configured for this component instance

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UAIPerceptionComponent UAIPerceptionComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UAIPerceptionComponent UAIPerceptionComponent::GetOrCreate

```
static UAIPerceptionComponent UAIPerceptionComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UAIPerceptionComponent UAIPerceptionComponent::Create

```
static UAIPerceptionComponent UAIPerceptionComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UAIPerceptionComponent::StaticClass

```
static UClass UAIPerceptionComponent::StaticClass()
```
