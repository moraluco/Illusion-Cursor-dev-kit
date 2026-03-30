# UAIPerceptionSystem

**Visibility:** public

## Inheritance

UAISubsystem → UAIPerceptionSystem

## Description

By design checks perception between hostile teams

## PERCEPTION

### PerceptionAgingRate

```
float32 PerceptionAgingRate AI|PERCEPTION GetSenseClassForStimulus static TSubclassOf<UAISense> UAIPerceptionSystem::GetSenseClassForStimulus(FAIStimulus Stimulus)
```

RegisterPerceptionStimuliSource

### static bool UAIPerceptionSystem::RegisterPerceptionStimuliSource

```
static bool UAIPerceptionSystem::RegisterPerceptionStimuliSource(TSubclassOf<UAISense> Sense, AActor Target)
```

ReportPerceptionEvent

### static void UAIPerceptionSystem::ReportPerceptionEvent

```
static void UAIPerceptionSystem::ReportPerceptionEvent(UAISenseEvent PerceptionEvent)
```

ReportEvent

### void ReportEvent

```
void ReportEvent(UAISenseEvent PerceptionEvent)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAIPerceptionSystem::StaticClass()
```
