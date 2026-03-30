# UAIPerceptionStimuliSourceComponent

**Visibility:** public

## Inheritance

UActorComponent → UAIPerceptionStimuliSourceComponent

## Description

Gives owning actor a way to auto-register as perception system's sense stimuli source

### AI PERCEPTION

```
AI PERCEPTION bAutoRegisterAsSource bool bAutoRegisterAsSource RegisterAsSourceForSenses TArray<TSubclassOf<UAISense>> RegisterAsSourceForSenses AI|PERCEPTION RegisterWithPerceptionSystem void RegisterWithPerceptionSystem()
```

Registers owning actor as source of stimuli for senses specified in RegisterAsSourceForSenses.  Note that you don't have to do it if bAutoRegisterAsSource == true

### UnregisterFromPerceptionSystem

```
void UnregisterFromPerceptionSystem()
```

Unregister owning actor from being a source of sense stimuli

### UnregisterFromSense

```
void UnregisterFromSense(TSubclassOf<UAISense> SenseClass)
```

Unregisters owning actor from sources list of a specified sense class

### RegisterForSense

```
void RegisterForSense(TSubclassOf<UAISense> SenseClass)
```

Registers owning actor as source for specified sense class

## FUNCTIONS

### GetbAutoRegisterAsSource

```
bool GetbAutoRegisterAsSource()const
```

SetbAutoRegisterAsSource

### void SetbAutoRegisterAsSource

```
void SetbAutoRegisterAsSource(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UAIPerceptionStimuliSourceComponent UAIPerceptionStimuliSourceComponent::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UAIPerceptionStimuliSourceComponent UAIPerceptionStimuliSourceComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UAIPerceptionStimuliSourceComponent UAIPerceptionStimuliSourceComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UAIPerceptionStimuliSourceComponent::StaticClass()
```
